package com.billiard.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billiard.dao.EnrollMapper;
import com.billiard.dao.MatchMapper;
import com.billiard.dao.UserMapper;
import com.billiard.entity.Enroll;
import com.billiard.entity.JobResponse;
import com.billiard.entity.Match;
import com.billiard.entity.MatchExample;
import com.billiard.entity.MatchExample.Criteria;
import com.billiard.entity.MatchWithBLOBs;
import com.billiard.entity.UserExample;
import com.billiard.service.MatchService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class MatchServiceImpl  implements MatchService{

	@Autowired
	private MatchMapper matchMapper;
	@Autowired
	private EnrollMapper enrollMapper;
	@Autowired
	private UserMapper userMapper;

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
		PageHelper.startPage(page, size, "match_now DESC");
		List<MatchWithBLOBs> selectByExampleWithBLOBs = matchMapper.selectByExampleWithBLOBs(example);
		PageInfo<MatchWithBLOBs> res = new PageInfo<>(selectByExampleWithBLOBs);
		return res;
	}

	@Override
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
		UserExample example = new UserExample();
		com.billiard.entity.UserExample.Criteria createCriteria = example.createCriteria();
		createCriteria.andLoginNameEqualTo(enroll.getEmail());
		userMapper.selectByExample(example);
		
		return null;
	}
}
