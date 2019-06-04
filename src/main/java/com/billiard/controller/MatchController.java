package com.billiard.controller;

import javax.servlet.http.HttpServletRequest;

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
import com.billiard.service.MatchCourseService;
import com.billiard.service.MatchService;

@Controller
@RequestMapping("match")
public class MatchController {

	private static final Logger log = LoggerFactory.getLogger(MatchController.class);

	@Autowired
	private MatchService matchService;
	
	@Autowired
	private MatchCourseService matchCourseService;
	
	@RequestMapping(value="",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse matchList(@RequestParam(value="page",defaultValue="1") int page  ,@RequestParam(value="size",defaultValue="20") int size  ,@RequestParam(value="match_name",required=false)String match_name,@RequestParam(value="time_quantum",required=false)String time_quantum,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at match list!");
		return JobResponse.successResponse(matchService.matchList(page,size,match_name,time_quantum));
	}
	
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse matchDetail(@RequestParam(value="mid") String mid ,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at match detail!"+mid);
		return JobResponse.successResponse(matchService.matchDetail(mid));
	}
	
	
	@RequestMapping(value="enroll",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse AddEnroll(@RequestBody Enroll enroll,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at add  match enroll!");
		return matchService.AddEnroll(enroll);
	}
	
	
	@RequestMapping(value="/review",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse reviewList(@RequestParam(value="page",defaultValue="1")Integer page,@RequestParam(value="size",defaultValue="20")Integer size, @RequestParam(value="title",required=false)String title,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at review list!");
		return JobResponse.successResponse(matchCourseService.reviewList(page,size,title));
	}
	
	
}
