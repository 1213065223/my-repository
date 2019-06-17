package com.billiard.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billiard.dao.IntegralMapper;
import com.billiard.dao.MatchMapper;
import com.billiard.dao.UserMapper;
import com.billiard.dao.WeekMapper;
import com.billiard.entity.Integral;
import com.billiard.entity.IntegralExample;
import com.billiard.entity.IntegralExample.Criteria;
import com.billiard.entity.JobResponse;
import com.billiard.entity.MatchWithBLOBs;
import com.billiard.entity.User;
import com.billiard.entity.Week;
import com.billiard.entity.WeekExample;
import com.billiard.service.IntegralService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class IntegralServiceImpl implements IntegralService {

	@Autowired
	private IntegralMapper integralMapper;
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private MatchMapper matchMapper;

	@Autowired
	private WeekMapper weekMapper;
	
	//管理员录入战绩和积分
	@Override
	public JobResponse addIntegral(Integral integral) {
		
		User user = userMapper.selectByPrimaryKey(integral.getUserId());
		if(user==null||(user.getIsstop()!=null&&user.getIsstop()==2)){
			return JobResponse.errorResponse(100018, "用户不存在或禁用！");
		}
		MatchWithBLOBs match = matchMapper.selectByPrimaryKey(integral.getMatchId());
		if(match==null||(match.getMatchDel()!=null&&match.getMatchDel()==1)) {
			return JobResponse.errorResponse(100019, "比赛信息不存在！");
		}
		
		if(integral.getWinning()==null||(integral.getWinning()!=-1&&integral.getWinning()!=0&&integral.getWinning()!=1)) {
			return JobResponse.errorResponse(100020, "胜负类型不正确！");
		}
		
		IntegralExample example= new IntegralExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andUserIdEqualTo(integral.getUserId());
		createCriteria.andMatchIdEqualTo(integral.getMatchId());
		List<Integral> selectByExample = integralMapper.selectByExample(example);
		if(selectByExample.size()>0) {
			return JobResponse.errorResponse(100021, "该用户已经录入过本场比赛！");
		}
		integral.setMatchName(match.getMatchName());
		integral.setSurname(user.getSurname());
		integral.setUserName(user.getNickname());
		return JobResponse.successResponse(integralMapper.insertSelective(integral));
	}

	//删除战绩与积分
	@Override
	public JobResponse deleteIntegral(Integral integral) {
		return JobResponse.successResponse(integralMapper.deleteByPrimaryKey(integral.getId()));
	}
	//积分列表
	@Override
	public PageInfo<Integral> listIntegral(Integer page, Integer size, String name, String match_name) {
		
		IntegralExample example = new IntegralExample();
		Criteria createCriteria = example.createCriteria();
		if(StringUtils.isNotBlank(name)) {
			createCriteria.andUserNameLike(name);
		}
		if(StringUtils.isNotBlank(match_name)) {
			createCriteria.andMatchNameLike(match_name);
		}
		PageHelper.startPage(page, size, "match_id");
		List<Integral> selectByExample = integralMapper.selectByExample(example);
		PageInfo<Integral> res = new PageInfo<>(selectByExample);
		return res;
	}

	//积分排行榜
	@Override
	public List<Map<String, Object>> rankIntegral() {
		Integral  record = new Integral();
		WeekExample  example= new WeekExample();
		List<Week> selectByExample = weekMapper.selectByExample(example);
		if(selectByExample.size()>0) {
			long time = System.currentTimeMillis()- (selectByExample.get(0).getWeeks()*1000*60*60*24*7);
			record.setMatchTime(new Date(time));
		}else {
			record.setMatchTime(new Date(System.currentTimeMillis()- (52*1000*60*60*24*7)));
		}
		
		return integralMapper.selectIntegralRank(record);
	}
	//场次排行榜
	@Override
	public List<Map<String, Object>> rankWins() {
		Integral  record = new Integral();
		WeekExample  example= new WeekExample();
		List<Week> selectByExample = weekMapper.selectByExample(example);
		if(selectByExample.size()>0) {
			long time = System.currentTimeMillis()- (selectByExample.get(0).getWeeks()*1000*60*60*24*7);
			record.setMatchTime(new Date(time));
		}else {
			record.setMatchTime(new Date(System.currentTimeMillis()- (52*1000*60*60*24*7)));
		}
		
		return integralMapper.selectWinsRank(record);
	}

	//获取用户战绩积分
	@Override
	public Map<String, Object> getUserIntegral(String id) {
		return integralMapper.getUserIntegral(id);
	}
	//获取用户所有战绩积分
	@Override
	public List<Map<String, Object>> getUserIntegralList(String id) {
		return integralMapper.getUserIntegralList(id);
	}
	//获取用户战绩积分
	@Override
	public Integral getIntegral(String matchId, String userId) {
	
		IntegralExample example= new IntegralExample();
		example.createCriteria().andMatchIdEqualTo(matchId).andUserIdEqualTo(userId);
		List<Integral> selectByExample = integralMapper.selectByExample(example);
		if(selectByExample.size()>0) {
			return selectByExample.get(0);
		}
		return null;
	}
}
