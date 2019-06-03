package com.billiard.controller;


import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.billiard.entity.JobResponse;
import com.billiard.entity.User;
import com.billiard.service.UserService;
import com.billiard.util.MailUtil;
import com.billiard.util.PropertyUtil;

@Controller
@RequestMapping("regist")
public class RegistController {
	
	@Autowired
	private PropertyUtil propertyUtil;
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse toRegist(@RequestBody User user) {
		return userService.insertUser(user);
	}
	
	@RequestMapping(value="mail",method=RequestMethod.GET)
	@ResponseBody
	public String sendEmail() {
		
		String url = "http://192.168.9.148:8080/billiard/regist/mail/confirm?mail=18740029390@163.com&code="+System.currentTimeMillis();
		
		
	
		
		try {
			MailUtil.sendEmail(propertyUtil.getMailHost(), propertyUtil.getMailFrom(), propertyUtil.getMailPassword(), "18740029390@163.com", "台球协会", "注册验证", 	URLEncoder.encode(url,"UTF-8" ));
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
	public JobResponse sendEmailConfirm(String mail) {
		
		User user = new User();
		user.setId(mail);
		user.setIsstop(0);
		
		
		return JobResponse.successResponse(userService.updateUser(user));
	}
	
	
	
	
	
	
}
