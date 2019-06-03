package com.billiard.service;

import com.billiard.entity.MatchCourse;
import com.github.pagehelper.PageInfo;

public interface MatchCourseService {

	Integer addMatchCourse(MatchCourse matchCourse);

	Integer deleteMatchCourse(MatchCourse matchCourse);

	PageInfo<MatchCourse> reviewList(Integer page, Integer size, String title);

}
