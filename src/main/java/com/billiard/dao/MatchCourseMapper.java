package com.billiard.dao;

import com.billiard.entity.MatchCourse;
import com.billiard.entity.MatchCourseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MatchCourseMapper {
	
	MatchCourse selectPrevious(MatchCourse record);
	
	MatchCourse selectNext(MatchCourse record);
	
    long countByExample(MatchCourseExample example);

    int deleteByExample(MatchCourseExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MatchCourse record);

    int insertSelective(MatchCourse record);

    List<MatchCourse> selectByExampleWithBLOBs(MatchCourseExample example);

    List<MatchCourse> selectByExample(MatchCourseExample example);

    MatchCourse selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") MatchCourse record, @Param("example") MatchCourseExample example);

    int updateByExampleWithBLOBs(@Param("record") MatchCourse record, @Param("example") MatchCourseExample example);

    int updateByExample(@Param("record") MatchCourse record, @Param("example") MatchCourseExample example);

    int updateByPrimaryKeySelective(MatchCourse record);

    int updateByPrimaryKeyWithBLOBs(MatchCourse record);

    int updateByPrimaryKey(MatchCourse record);
}