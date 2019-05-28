package com.billiard.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billiard.dao.IndexMapper;
import com.billiard.entity.Index;
import com.billiard.entity.IndexExample;
import com.billiard.entity.IndexExample.Criteria;
import com.billiard.service.IndexService;

@Service
public class IndexServiceImpl implements IndexService {
	@Autowired
	private IndexMapper indexMapper;
	
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
	
}
