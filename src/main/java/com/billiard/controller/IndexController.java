package com.billiard.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.billiard.entity.JobResponse;
import com.billiard.service.IndexService;

@Controller
@RequestMapping("index")
public class IndexController {

	private static final Logger log = LoggerFactory.getLogger(IndexController.class);

	@Autowired
	private IndexService indexService;

	@RequestMapping("list")
	@ResponseBody
	public JobResponse list(HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at index!");
		return JobResponse.successResponse(indexService.list());
	}
	
	
	@RequestMapping("association")
	@ResponseBody
	public JobResponse association(HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at association!");
		return JobResponse.successResponse(indexService.association());
	}
	
	@RequestMapping("organization")
	@ResponseBody
	public JobResponse organization(HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at organization!");
		return JobResponse.successResponse(indexService.organization());
	}
	
	@RequestMapping("announcement")
	@ResponseBody
	public JobResponse organization(@RequestParam(value="page",defaultValue="1") int page  ,@RequestParam(value="size",defaultValue="20") int size  ,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at announcement!");
		return JobResponse.successResponse(indexService.organizationList(page,size));
	}
	
}
