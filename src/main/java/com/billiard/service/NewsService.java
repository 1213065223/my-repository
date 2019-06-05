package com.billiard.service;

import com.billiard.entity.JobResponse;
import com.billiard.entity.News;
import com.github.pagehelper.PageInfo;

public interface NewsService {

	JobResponse addMatchNews(News news);

	JobResponse deleteNews(News news);

	PageInfo<News> newsList(Integer page, Integer size, String title);

	News newsDetail(Integer nid);

}
