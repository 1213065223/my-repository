package com.billiard.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

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

import com.billiard.entity.Config;
import com.billiard.entity.Enroll;
import com.billiard.entity.JobResponse;
import com.billiard.entity.Match;
import com.billiard.entity.MatchWithBLOBs;
import com.billiard.entity.User;
import com.billiard.service.ConfigService;
import com.billiard.service.IntegralService;
import com.billiard.service.MatchCourseService;
import com.billiard.service.MatchService;
import com.billiard.service.NewsService;
import com.billiard.service.UserService;

@Controller
@RequestMapping("match")
public class MatchController {

	private static final Logger log = LoggerFactory.getLogger(MatchController.class);

	@Autowired
	private MatchService matchService;
	
	@Autowired
	private IntegralService integralService;
	
	@Autowired
	private MatchCourseService matchCourseService;
	
	@Autowired
	private NewsService newsService;
	
	@Autowired
	private ConfigService configService;
	
	@Autowired
	private UserService userService;
	
	//比赛列表用户端
	@RequestMapping(value="",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse matchList(@RequestParam(value="page",defaultValue="1") int page  ,@RequestParam(value="size",defaultValue="20") int size  ,@RequestParam(value="match_name",required=false)String match_name,@RequestParam(value="time_quantum",required=false)String time_quantum,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at match list!");
		return JobResponse.successResponse(matchService.matchList(page,size,match_name,time_quantum));
	}
	
	//本场比赛
	@RequestMapping(value="current",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse matchCurrent(HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at match current!");
		
		
		Config config = configService.getConfig();
		MatchWithBLOBs matchCurrent = matchService.matchCurrent();
		Map<String,Object> res = new HashMap<>();
		res.put("match", matchCurrent);
		res.put("config", config);
		return JobResponse.successResponse(res);
	}
	
	
	
	//比赛详情
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse matchDetail(@RequestParam(value="mid") String mid ,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at match detail!"+mid);
		Match matchDetail = matchService.matchDetail(mid);
		if(matchDetail==null||(matchDetail!=null&&matchDetail.getMatchDel()!=null&&matchDetail.getMatchDel()==1)) {
			return JobResponse.errorResponse(100020, "比赛已经不存在！");
		}
		return JobResponse.successResponse(matchDetail);
	}
	
	//用户报名
	@RequestMapping(value="enroll",method=RequestMethod.POST)
	@ResponseBody
	public JobResponse AddEnroll(@RequestBody Enroll enroll,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at add  match enroll!");
		return matchService.AddEnroll(enroll);
	}
	
	//比赛回顾列表
	@RequestMapping(value="/review",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse reviewList(@RequestParam(value="page",defaultValue="1")Integer page,@RequestParam(value="size",defaultValue="20")Integer size, @RequestParam(value="title",required=false)String title,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at review list!");
		return JobResponse.successResponse(matchCourseService.reviewList(page,size,title));
	}
	//比赛回顾详情
	@RequestMapping(value="/review/detail",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse reviewList( @RequestParam(value="cid",required=false)Integer cid,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at review detail!");
		return JobResponse.successResponse(matchCourseService.getPreviousAndNext(cid));
	}
	
	//积分排行榜
	@RequestMapping(value="/rank/integral",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse rankIntegral( HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at integral rank!");
		return JobResponse.successResponse(integralService.rankIntegral());
	}
	
	//场次排行榜
	@RequestMapping(value="/rank/wins",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse rankWins( HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at integral rank!");
		return JobResponse.successResponse(integralService.rankWins());
	}
	
	//赛事新闻
	@RequestMapping(value="/news",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse newsList(@RequestParam(value="page",defaultValue="1")Integer page,@RequestParam(value="size",defaultValue="20")Integer size, @RequestParam(value="title",required=false)String title,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at news list!");
		return JobResponse.successResponse(newsService.newsList(page,size,title));
	}
	//赛事新闻详情
	@RequestMapping(value="/news/detail",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse newsList( @RequestParam(value="nid",required=false)Integer nid,HttpServletRequest request) {
		log.info(request.getRemoteAddr() + "   is at news detail!");
		return JobResponse.successResponse(newsService.newsDetailPreviousAndNext(nid));
	}
	
	
	//比赛下的报名成员
	@RequestMapping(value="/members/{match_id}",method=RequestMethod.GET)
	@ResponseBody
	public JobResponse membersMatch(@PathVariable("match_id") String matchId,HttpServletRequest request ) {
		Match m = matchService.selectMatch(matchId);
		
		if(m==null||m.getMatchDel()==1) {
			return JobResponse.errorResponse(100039, "该比赛不存在！");
		}
		
		if(m.getEnrollTimeEnd()!=null&&m.getEnrollTimeEnd().before(new Date())) {
			return JobResponse.errorResponse(100040, "比赛报名还未结束，不能观看人员信息！");
		}
		return JobResponse.successResponse(matchService.selectMembers(matchId));
	}
	
	//报名成员详情
		@RequestMapping(value="/members/info/{member_id}",method=RequestMethod.GET)
		@ResponseBody
		public JobResponse memberInfo(@PathVariable("member_id") String memberId,HttpServletRequest request ) {
			
			User user = userService.getUser(memberId);
			if(user==null) {
				return JobResponse.errorResponse(100041, "该用户不存在！");
			}
			user.setPassword(null);
			user.setSalt(null);
			
			
			return JobResponse.successResponse(user);
		}
}
