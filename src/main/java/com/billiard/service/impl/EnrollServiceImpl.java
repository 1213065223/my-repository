package com.billiard.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billiard.dao.EnrollMapper;
import com.billiard.entity.Enroll;
import com.billiard.service.EnrollService;

@Service
public class EnrollServiceImpl implements EnrollService {
	@Autowired
	private EnrollMapper enrollMapper;
	
	
	@Override
	public Integer enrollVerify(Enroll enroll) {
		
		Enroll selectByPrimaryKey = enrollMapper.selectByPrimaryKey(enroll.getId());
		if(selectByPrimaryKey ==null) {
			return 0;
		}
		selectByPrimaryKey.setEnrollType(enroll.getEnrollType());
		return enrollMapper.updateByPrimaryKeySelective(selectByPrimaryKey);
	}

}
