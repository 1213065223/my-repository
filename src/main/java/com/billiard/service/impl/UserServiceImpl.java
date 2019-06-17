package com.billiard.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billiard.dao.UserMapper;
import com.billiard.entity.JobResponse;
import com.billiard.entity.User;
import com.billiard.entity.UserExample;
import com.billiard.entity.UserExample.Criteria;
import com.billiard.service.UserService;
import com.billiard.util.MD5Util;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	//新增用户
	@Override
	public JobResponse insertUser(User user) {
		UserExample userExample = new UserExample();
		Criteria createCriteria = userExample.createCriteria();
		createCriteria.andLoginNameEqualTo(user.getLoginName());
		List<User> selectByExample = userMapper.selectByExample(userExample);
		if(!selectByExample.isEmpty()) {
			return JobResponse.errorResponse(100001, "用户邮箱已经被注册！");
		}
		if(StringUtils.isNotBlank(user.getPassword())) {
		user.setSalt(MD5Util.getID());
		user.setPassword(MD5Util.formPassToDBPass(user.getPassword(), user.getSalt()));
		}
		user.setCreateTime(new Date());
		user.setId(MD5Util.getID());
		
			return JobResponse.successResponse(userMapper.insertSelective(user));
	}
	//更新用户信息
	@Override
	public JobResponse updateUser(User user) {
		
		return JobResponse.successResponse(userMapper.updateByPrimaryKeySelective(user));
	}
	
	//获取用户详情
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
	//获取用户列表
	@Override
	public PageInfo<Map<String, Object>> getUserList(User user, Integer page, Integer size) {
		
		PageHelper.startPage(page, size);
		List<Map<String, Object>> allUser = userMapper.getAllUser(user);
		System.out.println(allUser.get(0).keySet());
		PageInfo<Map<String, Object>> res = new PageInfo<>(allUser);
		return res;
	}
	//禁用与解禁用户
	@Override
	public Integer forbiddenUser(User user) {
		
		User dest = new User();
		dest.setId(user.getId());
		dest.setIsstop(user.getIsstop());
		return userMapper.updateByPrimaryKeySelective(dest);
	}
	//邮箱验证
	@Override
	public JobResponse verifyUserEamil(User user) {
		
		User selectByPrimaryKey = userMapper.selectByPrimaryKey(user.getId());
		
		if(selectByPrimaryKey==null) {
			return JobResponse.errorResponse(100029, "用户不存在！");
		}
		if(selectByPrimaryKey.getIsstop()!=null&&selectByPrimaryKey.getIsstop()==1) {
			return JobResponse.errorResponse(100029, "用户已经被禁用！");
		}
		selectByPrimaryKey.setIsstop(user.getIsstop());
		selectByPrimaryKey.setPassword(user.getPassword());
		selectByPrimaryKey.setSalt(user.getSalt());
		return JobResponse.successResponse(selectByPrimaryKey);
	}
}
