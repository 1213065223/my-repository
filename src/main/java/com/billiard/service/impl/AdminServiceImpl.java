package com.billiard.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billiard.dao.AdminMapper;
import com.billiard.dao.IndexMapper;
import com.billiard.dao.MatchMapper;
import com.billiard.entity.Admin;
import com.billiard.entity.AdminExample;
import com.billiard.entity.AdminExample.Criteria;
import com.billiard.entity.Index;
import com.billiard.entity.IndexExample;
import com.billiard.entity.JobResponse;
import com.billiard.entity.Match;
import com.billiard.entity.MatchWithBLOBs;
import com.billiard.service.AdminService;
import com.billiard.util.MD5Util;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;
	
	@Autowired
	private IndexMapper indexMapper;
	
	@Autowired
	private MatchMapper matchMapper;
	@Override
	public JobResponse addAdmin(Admin admin) {
		
		AdminExample example = new AdminExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andLoginNameEqualTo(admin.getLoginName());
		List<Admin> selectByExample = adminMapper.selectByExample(example);
		if(!selectByExample.isEmpty()) {
			return JobResponse.errorResponse(100007, "管理员账号名存在！");
		}
		return JobResponse.successResponse(adminMapper.insertSelective(admin));
	}

	@Override
	public Admin getAdminByLoginName(String loginName) {
		AdminExample example = new AdminExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andLoginNameEqualTo(loginName);
		List<Admin> selectByExample = adminMapper.selectByExample(example);
		if(selectByExample.isEmpty())
		return null;
		else {
			return selectByExample.get(0);
		}
	}

	@Override
	public JobResponse getAdminList(Integer page, Integer size, String nick_name, String phone) {
		PageHelper.startPage(page, size, "create_time");
		AdminExample example = new AdminExample();
		Criteria createCriteria = example.createCriteria();
		if(StringUtils.isNotBlank(nick_name)) {
			createCriteria.andNicknameLike(nick_name);
		}
		if(StringUtils.isNotBlank(phone)) {
			createCriteria.andPhoneLike(phone);
		}
		List<Admin> selectByExample = adminMapper.selectByExample(example);
		PageInfo<Admin> pageInfo = new PageInfo<>(selectByExample);
		return JobResponse.successResponse(pageInfo);
	}

	@Override
	public JobResponse updateAdmin(Admin admin) {
		Admin selectByPrimaryKey = adminMapper.selectByPrimaryKey(admin.getId());
		if(selectByPrimaryKey==null) {
			return JobResponse.errorResponse(100008, "该管理员不存在！");
		}
		if(StringUtils.isNotBlank(admin.getPassword())) {
			admin.setPassword(MD5Util.formPassToDBPass(admin.getPassword(), selectByPrimaryKey.getSalt()));
		}
		else {
			admin.setPassword(null);
		}
		admin.setLoginName(null);
		return JobResponse.successResponse(adminMapper.updateByPrimaryKeySelective(admin));
	}

	@Override
	public JobResponse addIndex(Index index) {
		IndexExample indexExample = new IndexExample();
		com.billiard.entity.IndexExample.Criteria createCriteria = indexExample.createCriteria();
		createCriteria.andImageUrlEqualTo(index.getImageUrl());
		createCriteria.andImageLocationEqualTo(index.getImageLocation());
		List<Index> selectByExample = indexMapper.selectByExample(indexExample);
		if(!selectByExample.isEmpty()) {
			return JobResponse.errorResponse(100010, "该图片已经添加过！");
		}
		
		return JobResponse.successResponse(indexMapper.insertSelective(index));
	}

	@Override
	public JobResponse updateIndex(Index index) {
		Index selectByPrimaryKey = indexMapper.selectByPrimaryKey(index.getId());
		if(selectByPrimaryKey==null) {
			return JobResponse.errorResponse(100011, "该首页记录不存在！");
		}
		index.setCreateTime(null);
		index.setCreateUser(null);
		return JobResponse.successResponse(indexMapper.updateByPrimaryKeySelective(index));
	}

	@Override
	public Integer deleteIndex(Integer id) {
		
		return indexMapper.deleteByPrimaryKey(id);
	}

	@Override
	public JobResponse addMatch(MatchWithBLOBs match) {
		match.setId(MD5Util.getID());
		return JobResponse.successResponse(matchMapper.insertSelective(match));
	}

	@Override
	public Integer updateMatch(MatchWithBLOBs match) {
		match.setCreateTime(null);
		match.setCreateUser(null);
		return matchMapper.updateByPrimaryKeySelective(match);
	}

	@Override
	public Integer deleteMatch(String id) {
		return matchMapper.deleteByPrimaryKey(id);
	}

}
