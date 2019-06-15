package com.billiard.service.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.billiard.dao.AdminMapper;
import com.billiard.dao.AnnouncementMapper;
import com.billiard.dao.AssociationMapper;
import com.billiard.dao.IndexMapper;
import com.billiard.dao.MatchMapper;
import com.billiard.dao.OrganizationMapper;
import com.billiard.entity.Admin;
import com.billiard.entity.AdminExample;
import com.billiard.entity.AdminExample.Criteria;
import com.billiard.entity.Announcement;
import com.billiard.entity.Association;
import com.billiard.entity.AssociationExample;
import com.billiard.entity.Enroll;
import com.billiard.entity.Index;
import com.billiard.entity.IndexExample;
import com.billiard.entity.JobResponse;
import com.billiard.entity.Match;
import com.billiard.entity.MatchWithBLOBs;
import com.billiard.entity.Organization;
import com.billiard.entity.OrganizationExample;
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
	
	@Autowired
	private AssociationMapper associationMapper;
	
	@Autowired
	private OrganizationMapper organizationMapper;
	
	@Autowired
	private AnnouncementMapper announcementMapper;
	
	//添加管理员
	@Override
	public JobResponse addAdmin(Admin admin) {
		
		AdminExample example = new AdminExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andLoginNameEqualTo(admin.getLoginName());
		List<Admin> selectByExample = adminMapper.selectByExample(example);
		if(!selectByExample.isEmpty()) {
			return JobResponse.errorResponse(100007, "管理员账户已存在！");
		}
		return JobResponse.successResponse(adminMapper.insertSelective(admin));
	}
	
	//根据账号获取管理员
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
	
	//管理员列表
	@Override
	public JobResponse getAdminList(Integer page, Integer size, String nick_name, String phone) {
	
		AdminExample example = new AdminExample();
		Criteria createCriteria = example.createCriteria();
		if(StringUtils.isNotBlank(nick_name)) {
			createCriteria.andNicknameLike(nick_name);
		}
		if(StringUtils.isNotBlank(phone)) {
			createCriteria.andPhoneLike(phone);
		}
		PageHelper.startPage(page, size,"create_time");
		List<Admin> selectByExample = adminMapper.selectByExample(example);
		PageInfo<Admin> pageInfo = new PageInfo<>(selectByExample);
		return JobResponse.successResponse(pageInfo);
	}

	//更新管理员信息
	@Override
	public JobResponse updateAdmin(Admin admin) {
		Admin selectByPrimaryKey = adminMapper.selectByPrimaryKey(admin.getId());
		if(selectByPrimaryKey==null) {
			return JobResponse.errorResponse(100008, "管理员信息不存在！");
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

	//添加首页图片信息
	@Override
	public JobResponse addIndex(Index index) {
		IndexExample indexExample = new IndexExample();
		com.billiard.entity.IndexExample.Criteria createCriteria = indexExample.createCriteria();
		createCriteria.andImageUrlEqualTo(index.getImageUrl());
		createCriteria.andImageLocationEqualTo(index.getImageLocation());
		List<Index> selectByExample = indexMapper.selectByExample(indexExample);
		if(!selectByExample.isEmpty()) {
			return JobResponse.errorResponse(100010, "图片内容已经添加过！");
		}
		
		return JobResponse.successResponse(indexMapper.insertSelective(index));
	}

	//更新首页信息
	@Override
	public JobResponse updateIndex(Index index) {
		Index selectByPrimaryKey = indexMapper.selectByPrimaryKey(index.getId());
		if(selectByPrimaryKey==null) {
			return JobResponse.errorResponse(100011, "该条记录不存在！");
		}
		index.setCreateTime(null);
		index.setCreateUser(null);
		return JobResponse.successResponse(indexMapper.updateByPrimaryKeySelective(index));
	}

	//删除首页信息
	@Override
	public Integer deleteIndex(Integer id) {
		
		return indexMapper.deleteByPrimaryKey(id);
	}

	//添加比赛
	@Override
	public JobResponse addMatch(MatchWithBLOBs match) {
		match.setId(MD5Util.getID());
		return JobResponse.successResponse(matchMapper.insertSelective(match));
	}

	//更新比赛
	@Override
	public Integer updateMatch(MatchWithBLOBs match) {
		match.setCreateTime(null);
		match.setCreateUser(null);
		return matchMapper.updateByPrimaryKeySelective(match);
	}

	//从数据库删除比赛
	@Override
	public Integer deleteMatch(String id) {
		return matchMapper.deleteByPrimaryKey(id);
	}
	
	//获取协会简介
	@Override
	public List<Association> getAssociationList() {
		AssociationExample  example= new AssociationExample();
		return associationMapper.selectByExampleWithBLOBs(example);
	}

	@Override
	public void updateAssociation(Association association) {
		associationMapper.updateByPrimaryKeyWithBLOBs(association);
	}

	@Override
	public void addAssociation(Association association) {
		associationMapper.insertSelective(association);
		
	}

	@Override
	public List<Organization> getOrganizationList() {
		OrganizationExample example= new OrganizationExample();
		return organizationMapper.selectByExample(example);
	}

	@Override
	public void updateOrganization(Organization organization) {
		organizationMapper.updateByPrimaryKeyWithBLOBs(organization);
	}

	@Override
	public void addOrganization(Organization organization) {
		organizationMapper.insertSelective(organization);
	}

	@Override
	public Integer announcementUpdateOrAdd(Announcement announcement, Admin a) {
		
		if(announcement.getId()==null) {
			announcement.setCreateTime(new Date());
			announcement.setCreateUser(a.getNickname());
			return announcementMapper.insertSelective(announcement);
		}
		
		announcement.setCreateTime(null);
		announcement.setCreateUser(null);
		return announcementMapper.updateByPrimaryKeySelective(announcement); 
	}

	@Override
	public Integer announcementDelete(Integer id) {
		return announcementMapper.deleteByPrimaryKey(id);
	}

	@Override
	@Transactional
	public JobResponse cancelAndSetCurrent(MatchWithBLOBs match) {
		
		MatchWithBLOBs selectByPrimaryKey = matchMapper.selectByPrimaryKey(match.getId());
		if(selectByPrimaryKey ==null ||(selectByPrimaryKey!=null&&selectByPrimaryKey.getMatchDel()!=null&&selectByPrimaryKey.getMatchDel()==1)||(selectByPrimaryKey!=null&&selectByPrimaryKey.getIsEnd())) {
			return JobResponse.errorResponse(100022, "该比赛已经删除或者已经结束！");
		}
		Match record= new Match();
		record.setId(null);
		record.setMatchNow(0);
		
		int cancelAndSetCurrent =matchMapper.cancelAndSetCurrent(record); 
		int res =0;
		if(cancelAndSetCurrent>0) {
			record.setId(match.getId());
			record.setMatchNow(1);
			res=matchMapper.cancelAndSetCurrent(record);
		}
		return JobResponse.successResponse(res);
	}

	

}
