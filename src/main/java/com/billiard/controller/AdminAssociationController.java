package com.billiard.controller;

import java.util.Date;
import java.util.List;

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
import com.billiard.entity.Announcement;
import com.billiard.entity.Association;
import com.billiard.entity.JobResponse;
import com.billiard.entity.Organization;
import com.billiard.service.AdminService;
import com.billiard.util.MD5Util;

@Controller
@RequestMapping("admin/association")
public class AdminAssociationController {
	
	private static final Logger log = LoggerFactory.getLogger(AdminAssociationController.class);
	
	@Autowired
	private AdminService adminService;
	
	
	
	//添加协会简介
	@RequestMapping(value="",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse associationUpdate(@RequestBody Association association ,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
	//	Admin a = (Admin)attribute;
		List<Association> associationList = adminService.getAssociationList();
		if(associationList.size()>0) {
			Association association2 = associationList.get(0);
			association.setId(association2.getId());
			adminService.updateAssociation(association);
		}else {
			
			adminService.addAssociation(association);
		}
		return JobResponse.successResponse();
	}
	
	//添加中8介绍
	@RequestMapping(value="organization",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse organizationUpdate(@RequestBody Organization organization ,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
	//	Admin a = (Admin)attribute;
		List<Organization> organizationList = adminService.getOrganizationList();
		if(organizationList.size()>0) {
			Organization association2 = organizationList.get(0);
			organization.setId(association2.getId());
			adminService.updateOrganization(organization);
		}else {
			
			adminService.addOrganization(organization);
		}
		return JobResponse.successResponse();
	}
	
	//添加协会公告
	@RequestMapping(value="announcement",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse announcementUpdateOrAdd(@RequestBody Announcement announcement ,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		Admin a = (Admin)attribute;
		if(StringUtils.isBlank(announcement.getTitle())) {
			return JobResponse.errorResponse(100010, "公告标题不能为空！");
		}
			
		
		return JobResponse.successResponse(adminService.announcementUpdateOrAdd(announcement,a));
	}
	
	//删除协会公告
	@RequestMapping(value="announcement/delete",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse announcementDelete(@RequestBody Announcement announcement ,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		
			
		
		return JobResponse.successResponse(adminService.announcementDelete(announcement.getId()));
	}
}
