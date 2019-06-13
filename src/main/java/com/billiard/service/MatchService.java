package com.billiard.service;

import java.util.List;
import java.util.Map;

import com.billiard.entity.Enroll;
import com.billiard.entity.JobResponse;
import com.billiard.entity.Match;
import com.billiard.entity.MatchWithBLOBs;
import com.github.pagehelper.PageInfo;

public interface MatchService {

	PageInfo<MatchWithBLOBs> matchList(int page, int size, String match_name, String time_quantum);

	JobResponse AddEnroll(Enroll enroll);

	List<Map<String,Object>> myEnrollList(Enroll enroll);

	PageInfo<Map<String, Object>> myEnrollList(Enroll enroll, Integer page, Integer size);


	Match matchDetail(String mid);

	MatchWithBLOBs matchCurrent();

	List<Match> selectAllMatch();

	List<Enroll> selectMembers(String matchId);

	PageInfo<Map<String, Object>> allEnrollList(Enroll enroll, Integer page, Integer size);

}
