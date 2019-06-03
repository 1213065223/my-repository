package com.billiard.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billiard.dao.AnnouncementMapper;
import com.billiard.dao.AssociationMapper;
import com.billiard.dao.IndexMapper;
import com.billiard.dao.OrganizationMapper;
import com.billiard.entity.Announcement;
import com.billiard.entity.AnnouncementExample;
import com.billiard.entity.Association;
import com.billiard.entity.AssociationExample;
import com.billiard.entity.Index;
import com.billiard.entity.IndexExample;
import com.billiard.entity.IndexExample.Criteria;
import com.billiard.entity.Organization;
import com.billiard.entity.OrganizationExample;
import com.billiard.service.IndexService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class IndexServiceImpl implements IndexService {
	@Autowired
	private IndexMapper indexMapper;
	
	@Autowired
	private AssociationMapper associationMapper;
	
	@Autowired
	private OrganizationMapper organizationMapper;
	
	@Autowired
	private AnnouncementMapper announcementMapper;
	
	@Override
	public Map<String, List<Index>> list() {
		Map<String, List<Index>> res = new HashMap<>();
		IndexExample example = new IndexExample();
		IndexExample example2 = new IndexExample();
		IndexExample example3 = new IndexExample();
		IndexExample example4 = new IndexExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andIsHiddenEqualTo(false);
		createCriteria.andImageLocationEqualTo(1);
		res.put("banner", indexMapper.selectByExample(example)) ;
		example2.createCriteria().andImageLocationEqualTo(2).andIsHiddenEqualTo(false);
		res.put("council", indexMapper.selectByExample(example2)) ;
		example3.createCriteria().andImageLocationEqualTo(3).andIsHiddenEqualTo(false);
		res.put("sponsor", indexMapper.selectByExample(example3)) ;
		example4.createCriteria().andImageLocationEqualTo(4).andIsHiddenEqualTo(false);
		res.put("naming", indexMapper.selectByExample(example4)) ;
		return res;
	}

	@Override
	public Association association() {
		AssociationExample example = new AssociationExample();
		List<Association> selectByExampleWithBLOBs = associationMapper.selectByExampleWithBLOBs(example);
		if(selectByExampleWithBLOBs.size()>0) {
			return selectByExampleWithBLOBs.get(0);
		}
		return new Association();
	}

	@Override
	public Organization organization() {
		OrganizationExample  example= new OrganizationExample ();
		List<Organization> selectByExampleWithBLOBs = organizationMapper.selectByExampleWithBLOBs(example);
		if(selectByExampleWithBLOBs.size()>0) {
			return selectByExampleWithBLOBs.get(0);
		}
		return new Organization();
	}

	@Override
	public PageInfo<Announcement> organizationList(int page, int size) {
		PageHelper.startPage(page, size, "create_time desc");
		AnnouncementExample example= new AnnouncementExample();
		List<Announcement> selectByExampleWithBLOBs = announcementMapper.selectByExampleWithBLOBs(example);
		
		return new PageInfo<>(selectByExampleWithBLOBs);
	}

	@Override
	public Announcement organizationDetail(int aid) {
		return announcementMapper.selectByPrimaryKey(aid);
	}
	
}
