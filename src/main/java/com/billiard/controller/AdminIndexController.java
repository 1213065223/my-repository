package com.billiard.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
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

import com.billiard.entity.Admin;
import com.billiard.entity.Index;
import com.billiard.entity.JobResponse;
import com.billiard.service.AdminService;
import com.billiard.service.IndexService;

@Controller
@RequestMapping("admin/index")
public class AdminIndexController {
	
private static final Logger log = LoggerFactory.getLogger(AdminIndexController.class);
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private IndexService indexService;
	
	
	//添加首页信息 banner 理事  赞助商 等
	@RequestMapping(value="",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse addIndex(@RequestBody Index index ,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		Admin a = (Admin) attribute;
		index.setCreateTime(new Date());
		index.setCreateUser(a.getNickname());
		
		return adminService.addIndex(index);
	}
	
	
	//更新首页信息
	@RequestMapping(value="update",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse updateIndex(@RequestBody Index index ,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		/*if(StringUtils.isBlank(index.getImageUrl())) {
			return JobResponse.errorResponse(100012, "图片路径不能为空！");
		}*/
		
		return adminService.updateIndex(index);
	}
	
	//删除首页信息
	@RequestMapping(value="delete/{id}",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse updateIndex(@PathVariable("id")String id,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("admin_user");
		if(attribute==null) {
			log.info("管理员登录超时！");
			return JobResponse.errorResponse(100005, "管理员登录超时！");
		}
		int intid ;
		try {
		intid=Integer.parseInt(id);
		}catch (Exception e) {
			return JobResponse.errorResponse(100013, "参数不正确！");
		}
		return JobResponse.successResponse(adminService.deleteIndex(intid));
	}
	
	//首页信息列表
	@RequestMapping("list")
	@ResponseBody
	public JobResponse list(@RequestParam(value="type",required=false) Integer type,@RequestParam(value="page",defaultValue="1") Integer page,@RequestParam(value="size",defaultValue="10") Integer size,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at admin index!");
		return JobResponse.successResponse(indexService.list(type,page,size));
	}
	
}
