package com.billiard.service.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.billiard.dao.DictionaryMapper;
import com.billiard.entity.Dictionary;
import com.billiard.entity.JobResponse;
import com.billiard.service.DictionaryService;

public class DictionaryServiceImpl implements DictionaryService {

	@Autowired
	private DictionaryMapper dictionaryMapper;

	@Override
	public JobResponse addDictionary(Dictionary dictionary) {
		
		if(StringUtils.isBlank(dictionary.getDicName())) {
			return JobResponse.errorResponse(100036, "名称不能为空！");
		}
		return null;
	}
}
