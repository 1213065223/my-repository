package com.billiard.service.impl;

import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billiard.controller.AdminMatchController;
import com.billiard.controller.RegistController;
import com.billiard.dao.EnrollMapper;
import com.billiard.dao.UserMapper;
import com.billiard.entity.Enroll;
import com.billiard.entity.EnrollExample;
import com.billiard.entity.JobResponse;
import com.billiard.entity.User;
import com.billiard.service.EnrollService;
import com.billiard.util.PropertyUtil;

@Service
public class EnrollServiceImpl implements EnrollService {
	
	private static final Logger log = LoggerFactory.getLogger(EnrollServiceImpl.class);
	
	@Autowired
	private EnrollMapper enrollMapper;
	
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private PropertyUtil propertyUtil;
	
	@Override
	public Integer enrollVerify(Enroll enroll) {
		
		Enroll selectByPrimaryKey = enrollMapper.selectByPrimaryKey(enroll.getId());
		if(selectByPrimaryKey ==null) {
			return 0;
		}
		selectByPrimaryKey.setEnrollType(enroll.getEnrollType());
		int updateByPrimaryKeySelective = enrollMapper.updateByPrimaryKeySelective(selectByPrimaryKey);
		if(updateByPrimaryKeySelective>0&&enroll.getEnrollType()!=null&&enroll.getEnrollType()==3) {
			final String email = enroll.getEmail();
			ExecutorService thread = Executors.newSingleThreadExecutor();
			thread.submit(new Runnable() {
				
				@Override
				public void run() {
					// TODO Auto-generated method stub
					log.info("begin send email to 审核报名！");
					RegistController.sendEmail(email, propertyUtil,"恭喜您，您的比赛报名已经审核通过！");
				}
			});
			thread.shutdown();
		}
		return updateByPrimaryKeySelective;
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
		
		User selectByPrimaryKey = userMapper.selectByPrimaryKey(enroll.getUserId());
		
		if(selectByPrimaryKey==null||(selectByPrimaryKey.getIsstop()!=null&&selectByPrimaryKey.getIsstop()==1)) {
			return JobResponse.errorResponse(100035, "用户不存在！");
		}
		
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
