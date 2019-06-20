package com.billiard.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.billiard.entity.Admin;
import com.billiard.entity.Config;
import com.billiard.entity.Dictionary;
import com.billiard.entity.JobResponse;
import com.billiard.service.DictionaryService;

@RestController
@RequestMapping("admin/dictionary")
public class AdminDictionaryController {
	
	
	private static final Logger log = LoggerFactory.getLogger(AdminConfigController.class);
	
	@Autowired
	private DictionaryService dictionaryService;
	
	
	//添加级别 等级 等字典
		@RequestMapping(value="",method=RequestMethod.POST)
		@ResponseBody
		public JobResponse updateConfig(@RequestBody Dictionary dictionary,HttpServletRequest request) {
			log.info(request.getRemoteAddr() + "   is at add  dictionary !"+dictionary);
			HttpSession session = request.getSession();
			Object attribute = session.getAttribute("admin_user");
			if(attribute==null) {
				log.info("管理员登录超时！");
				return JobResponse.errorResponse(100005, "管理员登录超时！");
			}
			Admin a = (Admin)attribute;
			return dictionaryService.addDictionary(dictionary);
		}
		
		//查询系统配置
		@RequestMapping(value="delete",method=RequestMethod.POST)
		@ResponseBody
		public JobResponse detailConfig(@RequestBody Dictionary dictionary,HttpServletRequest request) {
			HttpSession session = request.getSession();
			Object attribute = session.getAttribute("admin_user");
			if(attribute==null) {
				log.info("管理员登录超时！");
				return JobResponse.errorResponse(100005, "管理员登录超时！");
			}
			
			return JobResponse.successResponse(dictionaryService.deleteDictionary(dictionary.getId()));
		}
	
}
