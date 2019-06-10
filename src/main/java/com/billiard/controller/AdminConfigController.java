package com.billiard.controller;

import java.util.Date;

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

import com.billiard.entity.Admin;
import com.billiard.entity.Config;
import com.billiard.entity.JobResponse;
import com.billiard.service.ConfigService;

@Controller
@RequestMapping("admin/config")
public class AdminConfigController {

	private static final Logger log = LoggerFactory.getLogger(AdminConfigController.class);
	
	@Autowired
	private ConfigService configService;
	
	@RequestMapping(value="",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse updateConfig(@RequestBody Config config,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at add  config !"+config);
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		Admin a = (Admin)attribute;
		config.setCreateTime(new Date());
		return configService.addConfig(config);
	}
	
	@RequestMapping(value="detail",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse detailConfig(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		return JobResponse.successResponse(configService.getConfig());
	}
}
