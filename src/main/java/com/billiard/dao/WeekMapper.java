package com.billiard.dao;

import com.billiard.entity.Week;
import com.billiard.entity.WeekExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WeekMapper {
    long countByExample(WeekExample example);

    int deleteByExample(WeekExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Week record);

    int insertSelective(Week record);

    List<Week> selectByExample(WeekExample example);

    Week selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Week record, @Param("example") WeekExample example);

    int updateByExample(@Param("record") Week record, @Param("example") WeekExample example);

    int updateByPrimaryKeySelective(Week record);

    int updateByPrimaryKey(Week record);
}