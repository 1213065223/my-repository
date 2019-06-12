package com.billiard.controller;


import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.billiard.entity.JobResponse;
import com.billiard.entity.User;
import com.billiard.redis.RedisCache;
import com.billiard.service.UserService;
import com.billiard.util.MD5Util;
import com.billiard.util.MailUtil;
import com.billiard.util.PropertyUtil;

@Controller
@RequestMapping("regist")
public class RegistController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(RegistController.class);
	
	private static final String key ="BILLIARDS_";
	
	@Autowired
	private PropertyUtil propertyUtil;
	@Autowired
	private UserService userService;
	
	@Autowired
	private RedisCache redisCache;
	
	@RequestMapping(value="",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse toRegist(@RequestBody User user) {
		JobResponse insertUser = userService.insertUser(user);
		if(insertUser.getCode()==200) {
			
			final String uuid = MD5Util.getID();
			redisCache.put(key+uuid, user.getId());
			ExecutorService thread = Executors.newSingleThreadExecutor();
			thread.submit(new Runnable() {
				
				@Override
				public void run() {
					// TODO Auto-generated method stub
					logger.info("begin send email to "+uuid);
					sendEmail("", uuid, propertyUtil);
					logger.info(" send email success! "+uuid);
				}
			});
			thread.shutdown();
		}
		
		return insertUser;
	}
	
	@RequestMapping(value="mail",method=RequestMethod.GET)
	@ResponseBody
	public static String sendEmail(String sendEmail,String uuid, PropertyUtil propertyUtil) {
		
		String url = propertyUtil.getRegistMailUrl()+"?code="+uuid;
		
		
	
		
		try {
			MailUtil.sendEmail(propertyUtil.getMailHost(), propertyUtil.getMailFrom(), propertyUtil.getMailPassword(), "1213065223@qq.com", "台球协会", "注册验证", 	url);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return propertyUtil.getMailFrom();
	}
	
	
	@RequestMapping(value="mail/confirm",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse sendEmailConfirm(@RequestParam(required=false)String code ,@RequestParam(required=false)String password) {
		
		
		if(StringUtils.isBlank(code)) {
			return JobResponse.errorResponse(100025, "参数不正确！");
		}
		if(StringUtils.isBlank(password)||password.length()>16) {
			return JobResponse.errorResponse(100025, "密码参数不正确！");
		}
		
		Object object = redisCache.get(key+code);
		
		if(object==null) {
			return JobResponse.errorResponse(100026, "验证地址已过期！");
		}
		
		
		
		User user = new User();
		user.setSalt(MD5Util.getID());
		user.setPassword(MD5Util.formPassToDBPass(password, user.getSalt()));
		user.setId(object.toString());
		user.setIsstop(0);
		
		
		return userService.verifyUserEamil(user);
	}
	
	
	
	
	@RequestMapping(value="test",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse test() {
			
		redisCache.put("123", "哈哈哈哈哈");
		
		System.out.println(redisCache.get("123"));
		return JobResponse.successResponse();
	}
	
}
