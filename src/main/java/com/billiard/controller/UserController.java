package com.billiard.controller;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.billiard.entity.Config;
import com.billiard.entity.Enroll;
import com.billiard.entity.Integral;
import com.billiard.entity.JobResponse;
import com.billiard.entity.Match;
import com.billiard.entity.User;
import com.billiard.redis.RedisCache;
import com.billiard.service.ConfigService;
import com.billiard.service.EnrollService;
import com.billiard.service.IntegralService;
import com.billiard.service.MatchService;
import com.billiard.service.UserService;
import com.billiard.util.MD5Util;
import com.billiard.util.PropertyUtil;

@Controller
@RequestMapping("user")
public class UserController {
	
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
	private static final String key ="BILLIARDS_";
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MatchService matchService;
	
	@Autowired
	private IntegralService integralService;
	
	@Autowired
	private EnrollService enrollService;
	
	@Autowired
	private RedisCache redisCache;

	@Autowired
	private PropertyUtil propertyUtil;
	
	@Autowired
	private ConfigService configService;
	
	//修改用户信息
	@ResponseBody
	@RequestMapping("update")
	public JobResponse updateUser(@RequestBody User user ,HttpServletRequest request) {
		log.info("更新用户->"+user.getLoginName());
		HttpSession session = request.getSession();
		Object logUser = session.getAttribute("user");
		
		if(logUser==null) {
			return JobResponse.errorResponse(000000, "请您登录！");
		}
		User u = (User) logUser;
		user.setId(u.getId());
		user.setLoginName(null);
		user.setPassword(null);
		user.setSalt(null);
		return userService.updateUser(user);
	}
	
	//我报名的比赛
	@ResponseBody
	@RequestMapping(value="enroll",method=RequestMethod.GET)
	public JobResponse enrollList(@RequestParam(value="page",defaultValue="1") Integer page,@RequestParam(value="size",defaultValue="10") Integer size,@RequestParam(value="type",required=false) Integer type,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Object logUser = session.getAttribute("user");
		
		if(logUser==null) {
			return JobResponse.errorResponse(000000, "请您登录！");
		}
		User u = (User) logUser;
		log.info("我的报名->"+u.getNickname());
		Enroll enroll = new Enroll();
		enroll.setUserId(u.getId());
		if(type!=null&&type==-1) {//已结束的比赛
			enroll.setUserType(1);
		}
		else {
		enroll.setEnrollType(type);
		}
		return JobResponse.successResponse(matchService.myEnrollList(enroll,page,size));
	}
	
	
	//取消报名
	@ResponseBody
	@RequestMapping(value="enroll/cancel/{mid}",method=RequestMethod.GET)
	public JobResponse cancel(@PathVariable("mid")String mId ,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Object logUser = session.getAttribute("user");
		
		if(logUser==null) {
			return JobResponse.errorResponse(000000, "请您登录！");
		}
		User u = (User) logUser;
		log.info("取消赛事报名->"+u.getNickname());
		
		
		return JobResponse.successResponse(enrollService.cancelEnroll(mId,u.getId()));
	}
	
	
	
		//提交凭证
		@ResponseBody
		@RequestMapping(value="enroll/certificate",method=RequestMethod.POST)
		public JobResponse cancel(@RequestBody Enroll enroll ,HttpServletRequest request) {
		/*	HttpSession session = request.getSession();
			Object logUser = session.getAttribute("user");
			
			if(logUser==null) {
				return JobResponse.errorResponse(000000, "请您登录！");
			}
			User u = (User) logUser;
			enroll.setUserId(u.getId());*/
			log.info("提交凭证->"+enroll.getCertificateImage());
			
			return enrollService.certificateSubmit(enroll);
		}
	
	
	
	
	//我的信息
	@ResponseBody
	@RequestMapping(value="info",method=RequestMethod.GET)
	public JobResponse userInfo(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Object logUser = session.getAttribute("user");
		
		if(logUser==null) {
			return JobResponse.errorResponse(000000, "请您登录！");
		}
		User u = (User) logUser;
		log.info("我的个人信息->"+u.getNickname());  
		u=userService.getUser(u);
		Map<String,Object> inte = integralService.getUserIntegral(u.getId());
		if(inte==null) {
			u.setIntegral(0);
		}else {
			u.setIntegral(inte.get("intg")==null?0:((BigDecimal)( inte.get("intg"))).intValue());
		}
		return JobResponse.successResponse(u);
	}
	
	
	//用户积分列表
	@ResponseBody
	@RequestMapping(value="integral/info",method=RequestMethod.GET)
	public JobResponse integralInfo(HttpServletRequest request) {
			HttpSession session = request.getSession();
			Object logUser = session.getAttribute("user");
			
			if(logUser==null) {
				return JobResponse.errorResponse(000000, "请您登录！");
			}
			User u = (User) logUser;
			log.info("我的积分信息->"+u.getNickname());
			List<Map<String,Object>> inte = integralService.getUserIntegralList(u.getId());
			return JobResponse.successResponse(inte);
		}
	

	
	
	//我的赛事详情
	@ResponseBody
	@RequestMapping(value="match/info/{id}",method=RequestMethod.GET)
	public JobResponse matchInfo(@PathVariable("id")String matchId ,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Object logUser = session.getAttribute("user");
		
		if(logUser==null) {
			return JobResponse.errorResponse(000000, "请您登录！");
		}
		User u = (User) logUser;
		log.info("我的赛事详情->"+u.getNickname());
		
		Map<String,Object> res = new HashMap<String, Object>();
		
		Integral integral = integralService.getIntegral(matchId,u.getId());
		
		Match matchDetail = matchService.matchDetail(matchId);
		
		Enroll e =  enrollService.getEnroll(matchId, u.getId());
		
		Config config = configService.getConfig();
		
		res.put("integral", integral);
		
		res.put("match", matchDetail);
		
		res.put("enroll", e);
		
		res.put("config", config);
		
		return JobResponse.successResponse(res);
	}
	
		//忘记密码
		@ResponseBody
		@RequestMapping(value="forget/password",method=RequestMethod.POST)
		public JobResponse forget(@RequestBody Map<String,String> param,HttpServletRequest request) {
			log.info("忘记密码->"+param.get("email"));
			
			if(StringUtils.isBlank(param.get("email"))||StringUtils.isBlank(param.get("surname"))||StringUtils.isBlank(param.get("nickname"))) {
				return JobResponse.errorResponse(100030, "请输入必填参数！");
			}
			
			
			User user = new User();
			user.setLoginName(param.get("email"));
			User user2 = userService.getUser(user);
			if(user2==null||!param.get("surname").equals(user2.getSurname())||!param.get("nickname").equals(user2.getNickname())) {
				return JobResponse.errorResponse(100031, "用户信息不存在！");
			}
			
			final String email = param.get("email");
			final String uuid = MD5Util.getID();
			redisCache.put(key+uuid, user2.getId());
			ExecutorService thread = Executors.newSingleThreadExecutor();
			thread.submit(new Runnable() {
				
				@Override
				public void run() {
					// TODO Auto-generated method stub
					log.info("begin send email to "+uuid);
					String url = propertyUtil.getForgetMailUrl()+"?code="+uuid;
					RegistController.sendEmail(email,  propertyUtil,url);
					log.info(" send email success! "+uuid);
				}
			});
			thread.shutdown();
			
			return JobResponse.successResponse();
		}
	
	
}
