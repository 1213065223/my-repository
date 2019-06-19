package com.billiard.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.billiard.entity.JobResponse;
import com.billiard.service.DictionaryService;
import com.billiard.service.IndexService;

@Controller
@RequestMapping("index")
public class IndexController {

	private static final Logger log = LoggerFactory.getLogger(IndexController.class);

	@Autowired
	private IndexService indexService;
	
	@Autowired
	private DictionaryService dictionaryService;

	//首页banner 理事 等信息
	@RequestMapping("list")
	@ResponseBody
	public JobResponse list(HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at index!");
		return JobResponse.successResponse(indexService.list());
	}
	
	//首页banner 理事 等详情
	@RequestMapping("detail/{iid}")
	@ResponseBody
	public JobResponse list(@PathVariable("iid") Integer iid ,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at index detail!"+iid);
		return JobResponse.successResponse(indexService.getIndexDetail(iid));
	}
	
	
	//协会简介展示
	@RequestMapping("association")
	@ResponseBody
	public JobResponse association(HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at association!");
		return JobResponse.successResponse(indexService.association());
	}
	
	//中8介绍展示
	@RequestMapping("organization")
	@ResponseBody
	public JobResponse organization(HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at organization!");
		return JobResponse.successResponse(indexService.organization());
	}
	//协会公告列表
	@RequestMapping("announcement")
	@ResponseBody
	public JobResponse organization(@RequestParam(value="page",defaultValue="1") int page  ,@RequestParam(value="size",defaultValue="20") int size  ,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at announcement!");
		return JobResponse.successResponse(indexService.organizationList(page,size));
	}
	//协会公告详情
	@RequestMapping("announcement/detail")
	@ResponseBody
	public JobResponse organization(@RequestParam(value="aid") int aid  ) {
		log.info("   at announcement detail! "+aid);
		return JobResponse.successResponse(indexService.organizationDetail(aid));
	}
	
	//级别 等级  衣服尺码 下拉列表
	@RequestMapping("dictionary/detail")
	@ResponseBody
	public JobResponse dictionary( ) {
		log.info("   at dictionary detail! ");
		return JobResponse.successResponse(dictionaryService.getAll());
	}
	
	
}
