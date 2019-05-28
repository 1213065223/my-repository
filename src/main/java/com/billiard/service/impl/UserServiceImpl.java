package com.billiard.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billiard.dao.UserMapper;
import com.billiard.entity.JobResponse;
import com.billiard.entity.User;
import com.billiard.entity.UserExample;
import com.billiard.entity.UserExample.Criteria;
import com.billiard.service.UserService;
import com.billiard.util.MD5Util;


@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public JobResponse insertUser(User user) {
		UserExample userExample = new UserExample();
		Criteria createCriteria = userExample.createCriteria();
		createCriteria.andLoginNameEqualTo(user.getLoginName());
		List<User> selectByExample = userMapper.selectByExample(userExample);
		if(!selectByExample.isEmpty()) {
			return JobResponse.errorResponse(100001, "用户邮箱已经被注册！");
		}
		user.setSalt(MD5Util.getID());
		user.setPassword(MD5Util.formPassToDBPass(user.getPassword(), user.getSalt()));
		user.setId(MD5Util.getID());
		
			return JobResponse.successResponse(userMapper.insertSelective(user));
	}

	@Override
	public JobResponse updateUser(User user) {
		
		return JobResponse.successResponse(userMapper.updateByPrimaryKeySelective(user));
	}

	@Override
	public User getUser(User user) {
		UserExample example = new UserExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andLoginNameEqualTo(user.getLoginName());
		
		List<User> selectByExample = userMapper.selectByExample(example);
		if(selectByExample.isEmpty())
		return null;
		else {
			return selectByExample.get(0);
		}
	}
}
