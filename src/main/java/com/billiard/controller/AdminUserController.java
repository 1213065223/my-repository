package com.billiard.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

import com.billiard.entity.JobResponse;
import com.billiard.entity.User;
import com.billiard.service.UserService;

@Controller
@RequestMapping("admin/user")
public class AdminUserController {
	@Autowired
	private UserService userService;
	
	private static final Logger log = LoggerFactory.getLogger(AdminUserController.class);
	
	@RequestMapping(value="",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse userList(User user,@RequestParam(defaultValue="1") Integer page,@RequestParam(defaultValue="10") Integer size, HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		return JobResponse.successResponse(userService.getUserList(user,page,size));
	}
	
	@RequestMapping(value="forbidden",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse stopUser(@RequestBody User user, HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		log.info("管理员stop用户:"+user.getId()+"    "+user.getIsstop());
		return JobResponse.successResponse(userService.forbiddenUser(user));
	}
	
	
}
