package com.billiard.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billiard.dao.EnrollMapper;
import com.billiard.entity.Enroll;
import com.billiard.entity.EnrollExample;
import com.billiard.entity.JobResponse;
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


	@Override
	public JobResponse cancelEnroll(String mid, String uid) {
		EnrollExample example= new EnrollExample();
		example.createCriteria().andMatchIdEqualTo(mid).andUserIdEqualTo(uid);
		List<Enroll> selectByExample = enrollMapper.selectByExample(example);
		if(selectByExample.isEmpty()) {
			return JobResponse.errorResponse(100023, "您还没有报名！");
		}
		Enroll enroll = selectByExample.get(0);
		if(enroll.getEnrollType()==null||enroll.getEnrollType()==1) {
			enroll.setEnrollType(5);
			return JobResponse.successResponse(enrollMapper.updateByPrimaryKeySelective(enroll));
		}
		
		return  JobResponse.errorResponse(100024, "改报名已不能取消！");
	}


	@Override
	public JobResponse certificateSubmit(Enroll enroll) {
		EnrollExample example= new EnrollExample();
		example.createCriteria().andMatchIdEqualTo(enroll.getMatchId()).andUserIdEqualTo(enroll.getUserId());
		List<Enroll> selectByExample = enrollMapper.selectByExample(example);
		if(selectByExample.isEmpty()) {
			return JobResponse.errorResponse(100023, "您还没有报名！");
		}
		Enroll enrollSelect = selectByExample.get(0);
		
		enrollSelect.setEnrollType(2);
		enrollSelect.setCertificateImage(enroll.getCertificateImage());
		return JobResponse.successResponse(enrollMapper.updateByPrimaryKeySelective(enrollSelect));
	}

}
