package com.billiard.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.billiard.entity.Admin;
import com.billiard.entity.Enroll;
import com.billiard.entity.Integral;
import com.billiard.entity.JobResponse;
import com.billiard.entity.Match;
import com.billiard.entity.MatchCourse;
import com.billiard.entity.MatchWithBLOBs;
import com.billiard.entity.News;
import com.billiard.entity.User;
import com.billiard.service.AdminService;
import com.billiard.service.EnrollService;
import com.billiard.service.IntegralService;
import com.billiard.service.MatchCourseService;
import com.billiard.service.MatchService;
import com.billiard.service.NewsService;
import com.billiard.util.MD5Util;

@SuppressWarnings("unused")
@Controller
@RequestMapping("admin/match")
public class AdminMatchController {
	
	private static final Logger log = LoggerFactory.getLogger(AdminMatchController.class);
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private EnrollService enrollService;
	
	@Autowired
	private MatchCourseService matchCourseService;
	
	@Autowired
	private MatchService matchService;
	
	@Autowired
	private IntegralService integralService;
	
	@Autowired
	private NewsService newsService;
	
	/* @InitBinder
	    public void initBinder(WebDataBinder binder) {
	        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true)); // true:允许输入空值，false:不能为空值
	        
	    }*/
	
	@RequestMapping(value="",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse addMatch(@RequestBody MatchWithBLOBs match ,HttpServletRequest request ) {
		log.info("add match ");
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		Admin a = (Admin)attribute;
		
		match.setCreateTime(new Date());
		match.setCreateUser(a.getNickname());
		return adminService.addMatch(match);
	}
	
	@RequestMapping(value="current",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse cancelAndSetCurrent(@RequestBody MatchWithBLOBs match ,HttpServletRequest request ) {
		log.info("add match ");
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		Admin a = (Admin)attribute;
		
		
		return adminService.cancelAndSetCurrent(match);
	}
	
	
	
	@RequestMapping(value="update",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse update(@RequestBody MatchWithBLOBs match  ,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		return JobResponse.successResponse(adminService.updateMatch(match));
	}
	
	@RequestMapping(value="delete/{id}",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse delete( @PathVariable("id") String id ,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		return JobResponse.successResponse(adminService.deleteMatch(id));
	}
	
	
	
	@RequestMapping(value="all/match",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse allMatch(HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		return JobResponse.successResponse(matchService.selectAllMatch());
	}
	
	@RequestMapping(value="/match/members/{match_id}",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse membersMatch(@PathVariable("match_id") String matchId,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		return JobResponse.successResponse(matchService.selectMembers(matchId));
	}
	
	@ResponseBody
	@RequestMapping(value="enroll/list",method=RequestMethod.GET)
	public JobResponse enrollList(@RequestParam(value="page",defaultValue="1") Integer page,@RequestParam(value="size",defaultValue="10") Integer size,@RequestParam(value="type",required=false) Integer type,@RequestParam(value="match_id",required=false) String match_id,@RequestParam(value="phone",required=false) String phone,@RequestParam(value="email",required=false) String email,@RequestParam(value="match_name",required=false) String match_name,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		log.info("报名管理");
		Enroll enroll = new Enroll();
		//enroll.setUserId(u.getId());
		enroll.setEnrollType(type);
		enroll.setEmail(email);
		enroll.setPhone(phone);
		enroll.setMatchId(match_id);
		enroll.setCertificateImage(match_name);//用图片字段暂存 比赛名
		return JobResponse.successResponse(matchService.allEnrollList(enroll,page,size));
	}
	
	@RequestMapping(value="enroll/verify",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse verify( @RequestBody Enroll  enroll,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		Admin a = (Admin) attribute;
		log.info("管理员"+a.getLoginName()+"开始报名审核:  "+enroll.getId() + " 设置状态为："+enroll.getEnrollType());
		return JobResponse.successResponse(enrollService.enrollVerify(enroll));
	}
   
	
	@RequestMapping(value="review",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse review( @RequestBody MatchCourse matchCourse,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		Admin a = (Admin) attribute;
		log.info("管理员"+a.getLoginName()+"添加比赛回顾:  "+matchCourse.getTitle());
		return JobResponse.successResponse(matchCourseService.addMatchCourse(matchCourse));
	}
	
	@RequestMapping(value="review/delete",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse reviewDelete( @RequestBody MatchCourse matchCourse,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		Admin a = (Admin) attribute;
		log.info("管理员"+a.getLoginName()+"删除比赛回顾:  "+matchCourse.getId());
		return JobResponse.successResponse(matchCourseService.deleteMatchCourse(matchCourse));
	}
	
	
	@RequestMapping(value="integral",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse addIntegral( @RequestBody Integral integral,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		Admin a = (Admin) attribute;
		log.info("管理员"+a.getLoginName()+"设置选手积分:  "+integral.getUserId());
		return integralService.addIntegral(integral);
	}
	
	@RequestMapping(value="integral/delete",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse deleteIntegral( @RequestBody Integral integral,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		Admin a = (Admin) attribute;
		log.info("管理员"+a.getLoginName()+"删除选手积分:  "+integral.getId());
		return integralService.deleteIntegral(integral);
	}
	
	@RequestMapping(value="integral/list",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse listIntegral( @RequestParam(value="page",defaultValue="1")Integer page,@RequestParam(value="size",defaultValue="20")Integer size, @RequestParam(value="name",required=false)String name, @RequestParam(value="match_name",required=false)String match_name,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		Admin a = (Admin) attribute;
		return JobResponse.successResponse(integralService.listIntegral(page,size,name,match_name));
	}
	
	
	@RequestMapping(value="news",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse addNews(@RequestBody News news ,HttpServletRequest request ) {
		log.info("add match News"	);
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		Admin a = (Admin)attribute;
		
		news.setCreateTime(new Date());
		news.setCreateUser(a.getNickname());
		return newsService.addMatchNews(news);
	}
	
	@RequestMapping(value="news/delete",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse deleteNews(@RequestBody News news ,HttpServletRequest request ) {
		log.info("delete match News "+news.getId()	);
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		return newsService.deleteNews(news);
	}
	
	
}
