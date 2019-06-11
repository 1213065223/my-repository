package com.billiard.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

import com.billiard.entity.Admin;
import com.billiard.entity.JobResponse;
import com.billiard.service.AdminService;
import com.billiard.util.MD5Util;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	private static final Logger log = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value="",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse addAdmin(@RequestBody Admin admin ,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		Admin a = (Admin)attribute;
		admin.setCreateTime(new Date());
		admin.setCreateUser(a.getNickname());
		admin.setSalt(MD5Util.getID());
		admin.setPassword(MD5Util.formPassToDBPass(admin.getPassword(), admin.getSalt()));
		return adminService.addAdmin(admin);
	}
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse adminLogin(@RequestBody Admin admin ,HttpServletRequest request ) {
		HttpSession session = request.getSession();
	
		
		Admin adminFind = adminService.getAdminByLoginName(admin.getLoginName());
		
		if(adminFind==null||!MD5Util.formPassToDBPass(admin.getPassword(), adminFind.getSalt()).equals(adminFind.getPassword())) {
			return JobResponse.errorResponse(100004, "用户名或密码错误！");
		}
		if(adminFind.getIsStop()) {
			return JobResponse.errorResponse(100008, "账号已经禁用！");
		}
		
		session.setAttribute("admin_user",adminFind);
		return JobResponse.successResponse(adminFind);
	}
	
	
	@RequestMapping(value="list",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse adminList(@RequestParam(value="page",defaultValue="1")Integer page ,@RequestParam(value="size",defaultValue="10")Integer size ,@RequestParam(value="nick_name",required=false) String nick_name ,@RequestParam(value="phone",required=false)String phone ,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		
		return adminService.getAdminList(page,size,nick_name,phone);
	}
	
	
	@RequestMapping(value="update",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse updateAdmin(@RequestBody Admin admin ,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		
		return adminService.updateAdmin(admin);
	}
	
}
