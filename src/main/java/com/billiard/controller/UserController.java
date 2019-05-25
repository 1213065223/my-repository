package com.billiard.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.billiard.entity.JobResponse;
import com.billiard.entity.User;
import com.billiard.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
	private UserService userService;
	
	@ResponseBody
	@RequestMapping("update")
	public JobResponse updateUser(@RequestBody User user ,HttpServletRequest request) {
		log.info("更新用户->"+user.getLoginName());
		HttpSession session = request.getSession();
		Object logUser = session.getAttribute("user");
		
		if(logUser==null) {
			return JobResponse.errorResponse(000000, "请您登录！");
		}
		return userService.updateUser(user);
	}
}
