package com.billiard.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billiard.dao.ConfigMapper;
import com.billiard.entity.Config;
import com.billiard.entity.ConfigExample;
import com.billiard.entity.JobResponse;
import com.billiard.service.ConfigService;

@Service
public class ConfigServiceImpl implements ConfigService {

	@Autowired
	private ConfigMapper configMapper;

	@Override
	public JobResponse addConfig(Config config) {
		
		ConfigExample example= new ConfigExample();
		List<Config> selectByExample = configMapper.selectByExample(example);
		if(selectByExample.size()>0) {
			Config config2 = selectByExample.get(0);
			config .setId(config2.getId());
			return JobResponse.successResponse(configMapper.updateByPrimaryKeySelective(config));
		}
		return JobResponse.successResponse(configMapper.insertSelective(config));
	}

	@Override
	public Config getConfig() {
		ConfigExample example= new ConfigExample();
		List<Config> selectByExample = configMapper.selectByExample(example);
		if(selectByExample.size()>0) {
			return selectByExample.get(0);
		}
		return null;
	}
	
	
}
