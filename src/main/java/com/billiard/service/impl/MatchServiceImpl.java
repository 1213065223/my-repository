package com.billiard.service.impl;

import java.net.URLEncoder;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.billiard.controller.MatchController;
import com.billiard.dao.EnrollMapper;
import com.billiard.dao.MatchMapper;
import com.billiard.dao.UserMapper;
import com.billiard.entity.Enroll;
import com.billiard.entity.EnrollExample;
import com.billiard.entity.JobResponse;
import com.billiard.entity.Match;
import com.billiard.entity.MatchExample;
import com.billiard.entity.MatchExample.Criteria;
import com.billiard.entity.MatchWithBLOBs;
import com.billiard.entity.User;
import com.billiard.entity.UserExample;
import com.billiard.service.MatchService;
import com.billiard.util.MD5Util;
import com.billiard.util.MailUtil;
import com.billiard.util.PropertyUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class MatchServiceImpl  implements MatchService{

	private static final Logger log = LoggerFactory.getLogger(MatchServiceImpl.class);
	
	@Autowired
	private MatchMapper matchMapper;
	@Autowired
	private EnrollMapper enrollMapper;
	@Autowired
	private UserMapper userMapper;

	@Autowired
	private PropertyUtil propertyUtil;
	@Override
	public PageInfo<MatchWithBLOBs> matchList(int page, int size, String match_name, String time_quantum) {
		
		MatchExample example = new MatchExample();
		Criteria createCriteria = example.createCriteria();
		if(StringUtils.isNotBlank(match_name)) {
			createCriteria.andMatchNameLike(match_name);
		}
		if(StringUtils.isNotBlank(time_quantum)) {
			createCriteria.andTimeQuantumLike(time_quantum);
		}
		PageHelper.startPage(page, size, "match_now DESC ,create_time");
		List<MatchWithBLOBs> selectByExampleWithBLOBs = matchMapper.selectByExampleWithBLOBs(example);
		PageInfo<MatchWithBLOBs> res = new PageInfo<>(selectByExampleWithBLOBs);
		return res;
	}

	@Override
	@Transactional
	public JobResponse AddEnroll(Enroll enroll) {
		
		if(StringUtils.isBlank(enroll.getMatchId())) {
			return JobResponse.errorResponse(100012, "请选择比赛！");
		}
		String regex = "\\w+(\\.\\w)*@\\w+(\\.\\w{2,3}){1,3}";
		if(StringUtils.isBlank(enroll.getEmail())) {
			return JobResponse.errorResponse(100013, "请填写邮箱！");
		}
		if(!enroll.getEmail().matches(regex)) {
			return JobResponse.errorResponse(100014, "请填写正确的邮箱格式！");
		}
		
		enroll.setEnrollType(1);//1 待付款 2 待审核 3 审核通过 4 审核拒绝
		MatchWithBLOBs matchWithBLOBs = matchMapper.selectByPrimaryKey(enroll.getMatchId());
		if(matchWithBLOBs==null||matchWithBLOBs.getMatchDel()==1) {
			return JobResponse.errorResponse(100015, "比赛信息不存在！");
		}
		Date now = new Date();
		enroll.setCreateTime(now);
		if(now.before(matchWithBLOBs.getEnrollTime())) {
			return JobResponse.errorResponse(100016, "比赛还未开始报名！");
		}
		if(now.after(matchWithBLOBs.getEnrollTimeEnd())) {
			return JobResponse.errorResponse(100015, "比赛报名已截止！");
		}
		
		
	

		UserExample example = new UserExample();
		com.billiard.entity.UserExample.Criteria createCriteria = example.createCriteria();
		createCriteria.andLoginNameEqualTo(enroll.getEmail());
		List<User> selectByExample = userMapper.selectByExample(example);
		if(selectByExample.size()>0) {// 用户信息存在
			User user = selectByExample.get(0);
			enroll.setUserId(user.getId());
			if(user.getIsstop()==1) {
				return JobResponse.errorResponse(100017, "该用户已被封禁！");
			}else if(user.getIsstop()==2) {
				sendMail(user.getId());
			}
			user.setBirthday(enroll.getBirthday());
			user.setHeadImage(enroll.getHeadImage());
			user.setNickname(enroll.getUserName());
			user.setPhone(enroll.getPhone());
			user.setSex(enroll.getSex());
			user.setSurname(enroll.getSurname());
			EnrollExample enrollExample = new EnrollExample();
			com.billiard.entity.EnrollExample.Criteria createCriteria2 = enrollExample.createCriteria();
			createCriteria2.andMatchIdEqualTo(enroll.getMatchId());
			createCriteria2.andUserIdEqualTo(enroll.getUserId());
			List<Enroll> selectByExample2 = enrollMapper.selectByExample(enrollExample);
			if(selectByExample2.size()>0) {
				return JobResponse.errorResponse(100018, "用户已经报名过！");
			}
			userMapper.updateByPrimaryKeySelective(user);
			
		}else {
			User userInsert = new User();
			userInsert.setBirthday(enroll.getBirthday());
			userInsert.setHeadImage(enroll.getHeadImage());
			userInsert.setId(MD5Util.getID());
			userInsert.setIsstop(2);
			userInsert.setLoginName(enroll.getEmail());
			userInsert.setNickname(enroll.getUserName());
			userInsert.setPhone(enroll.getPhone());
			userInsert.setSex(enroll.getSex());
			enroll.setUserId(userInsert.getId());
			userMapper.insertSelective(userInsert);
			sendMail(userInsert.getId());
		}
	
		
		return JobResponse.successResponse(	enrollMapper.insertSelective(enroll));
	}

	private void sendMail(String userId) {
		
		ExecutorService executorService = Executors.newSingleThreadExecutor();
		
		executorService.submit(new Runnable() {
			
			@Override
			public void run() {
				String url = "http://192.168.9.148:8080/billiard/regist/mail/confirm?mail="+userId;
				try {
					MailUtil.sendEmail(propertyUtil.getMailHost(), propertyUtil.getMailFrom(), propertyUtil.getMailPassword(), "1213065223@qq.com", "台球协会", "注册验证", url);
				} catch (Exception e) {
					log.error("邮件发送失败！", e);
					e.printStackTrace();
				}
				
			}
		});
		
		
	}

	@Override
	public List<Map<String, Object>> myEnrollList(Enroll enroll) {
		return enrollMapper.selectEnrollInfo(enroll);
	}
}