package com.billiard.service;

import com.billiard.entity.JobResponse;
import com.billiard.entity.News;

public interface NewsService {

	JobResponse addMatchNews(News news);

}
