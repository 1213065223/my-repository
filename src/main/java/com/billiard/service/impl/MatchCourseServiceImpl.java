package com.billiard.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billiard.dao.MatchCourseMapper;
import com.billiard.entity.MatchCourse;
import com.billiard.entity.MatchCourseExample;
import com.billiard.entity.News;
import com.billiard.service.MatchCourseService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class MatchCourseServiceImpl implements MatchCourseService {
	
	@Autowired
	private MatchCourseMapper matchCourseMapper;

	@Override
	public Integer addMatchCourse(MatchCourse matchCourse) {
		
		if(matchCourse.getId()==null) {
			matchCourse.setCreateTime(new Date());
			return matchCourseMapper.insertSelective(matchCourse);
			
		}
		matchCourse.setCreateTime(null);
		return matchCourseMapper.updateByPrimaryKeySelective(matchCourse);
		
	}

	@Override
	public Integer deleteMatchCourse(MatchCourse matchCourse) {
		return matchCourseMapper.deleteByPrimaryKey(matchCourse.getId());
	}

	@Override
	public PageInfo<MatchCourse> reviewList(Integer page, Integer size, String title) {
		PageHelper.startPage(page, size, "create_time desc");
		MatchCourseExample example= new MatchCourseExample();
		if(StringUtils.isNotBlank(title)) {
			example.createCriteria().andTitleLike(title);
		}
		List<MatchCourse> selectByExampleWithBLOBs = matchCourseMapper.selectByExampleWithBLOBs(example);
		PageInfo<MatchCourse> re = new PageInfo<>(selectByExampleWithBLOBs);
		return re;
	}

	@Override
	public MatchCourse reviewDetail(Integer cid) {
		
		return matchCourseMapper.selectByPrimaryKey(cid);
	}

	@Override
	public Map<String, MatchCourse> getPreviousAndNext(Integer matchCourse) {
		Map<String,MatchCourse> res = new HashMap<>();
		MatchCourse reviewDetail = reviewDetail(matchCourse);
		if(reviewDetail==null) {
			res.put("current", null);
			res.put("previous", null);
			res.put("next", null);
		}else {
			res.put("current", reviewDetail);
			res.put("previous", matchCourseMapper.selectPrevious(reviewDetail));
			res.put("next", matchCourseMapper.selectNext(reviewDetail));
		}
		
		return res;
	}
	
	
	
	
}
