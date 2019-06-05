package com.billiard.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billiard.dao.NewsMapper;
import com.billiard.entity.JobResponse;
import com.billiard.entity.News;
import com.billiard.service.NewsService;
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
	
	
}
