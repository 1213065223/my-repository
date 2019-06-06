package com.billiard.service;

import java.util.Map;

import com.billiard.entity.MatchCourse;
import com.github.pagehelper.PageInfo;

public interface MatchCourseService {

	Integer addMatchCourse(MatchCourse matchCourse);

	Integer deleteMatchCourse(MatchCourse matchCourse);

	PageInfo<MatchCourse> reviewList(Integer page, Integer size, String title);

	MatchCourse reviewDetail(Integer cid);
	
	Map<String,MatchCourse> getPreviousAndNext(MatchCourse matchCourse);
	
}
