package com.billiard.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billiard.dao.NewsMapper;
import com.billiard.entity.JobResponse;
import com.billiard.entity.News;
import com.billiard.entity.NewsExample;
import com.billiard.service.NewsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class NewsServiceImpl implements NewsService {
	
	@Autowired
	private NewsMapper newsMapper;

	@Override
	public JobResponse addMatchNews(News news) {
		
		
		
		if(news.getId()==null) {
		return JobResponse.successResponse(newsMapper.insertSelective(news));
		}
		news.setCreateUser(null);
		news.setCreateTime(null);
		return JobResponse.successResponse(newsMapper.updateByPrimaryKeySelective(news));
	}

	@Override
	public JobResponse deleteNews(News news) {
		return JobResponse.successResponse(newsMapper.deleteByPrimaryKey(news.getId()));
	}

	@Override
	public PageInfo<News> newsList(Integer page, Integer size, String title) {
		PageHelper.startPage(page, size, "create_time desc");
		NewsExample example = new NewsExample();
		if(StringUtils.isNotBlank(title)) {
			example.createCriteria().andTitleLike(title);
		}
		List<News> selectByExample = newsMapper.selectByExample(example);
		
		PageInfo<News> res = new PageInfo<>(selectByExample);
		return res;
	}

	@Override
	public News newsDetail(Integer nid) {
		return newsMapper.selectByPrimaryKey(nid);
	}

	@Override
	public Map<String, News> newsDetailPreviousAndNext(Integer nid) {
		
		Map<String,News> res = new HashMap<>();
		News newsDetail = newsDetail(nid);
		if(newsDetail==null) {
			res.put("current", null);
			res.put("previous", null);
			res.put("next", null);
		}else {
			res.put("current", newsDetail);
			res.put("previous", newsMapper.selectPrevious(newsDetail));
			res.put("next", newsMapper.selectNext(newsDetail));
		}
		
		
		
		return res;
	}
	
	
}
