package com.billiard.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.billiard.entity.JobResponse;
import com.billiard.entity.User;
import com.billiard.service.UserService;
import com.billiard.util.MD5Util;


@Controller
@RequestMapping("login")
public class LoginController {
	
	private static final Logger log  = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse login(@RequestBody User user,HttpServletRequest request) {
		log.info("user is login:"+user.getLoginName());
		User findUser = userService.getUser(user);
		if(findUser==null||!MD5Util.formPassToDBPass(user.getPassword(), findUser.getSalt()).equals(findUser.getPassword())) {
			return JobResponse.errorResponse(100004, "用户名或密码错误！");
		}
		if(user.getIsstop()==1) {
			return JobResponse.errorResponse(100010, "用户已经禁用！");
		}
		HttpSession session = request.getSession();
		findUser.setPassword("");
		session.setAttribute("user", findUser);
		return JobResponse.successResponse(findUser);
	}
}
