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
import com.billiard.entity.JobResponse;
import com.billiard.entity.Match;
import com.billiard.entity.MatchWithBLOBs;
import com.billiard.service.AdminService;
import com.billiard.util.MD5Util;

@SuppressWarnings("unused")
@Controller
@RequestMapping("admin/match")
public class AdminMatchController {
	
	private static final Logger log = LoggerFactory.getLogger(AdminMatchController.class);
	
	@Autowired
	private AdminService adminService;
	
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
	
	
   
}