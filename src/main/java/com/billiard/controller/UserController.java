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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.billiard.entity.Enroll;
import com.billiard.entity.JobResponse;
import com.billiard.entity.User;
import com.billiard.service.MatchService;
import com.billiard.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MatchService matchService;
	
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
	
	
	@ResponseBody
	@RequestMapping(value="enroll",method=RequestMethod.GET)
	public JobResponse enrollList(@RequestParam(value="page",defaultValue="1") Integer page,@RequestParam(value="size",defaultValue="10") Integer size,@RequestParam(value="type",required=false) String type,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Object logUser = session.getAttribute("user");
		
		if(logUser==null) {
			return JobResponse.errorResponse(000000, "请您登录！");
		}
		User u = (User) logUser;
		log.info("我的报名->"+u.getNickname());
		Enroll enroll = new Enroll();
		enroll.setUserId(u.getId());
		return JobResponse.successResponse(matchService.myEnrollList(enroll));
	}
}
