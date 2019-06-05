package com.billiard.service;

import java.util.List;
import java.util.Map;

import com.billiard.entity.Integral;
import com.billiard.entity.JobResponse;
import com.github.pagehelper.PageInfo;

public interface IntegralService {

	JobResponse addIntegral(Integral integral);

	JobResponse deleteIntegral(Integral integral);

	PageInfo<Integral> listIntegral(Integer page, Integer size, String name, String match_name);

	List<Map<String,Object>> rankIntegral();
	List<Map<String,Object>> rankWins();

}
