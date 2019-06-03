package com.billiard.dao;

import com.billiard.entity.Enroll;
import com.billiard.entity.EnrollExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface EnrollMapper {
	
	List<Map<String,Object>> selectEnrollInfo (Enroll record);
	
	
    long countByExample(EnrollExample example);

    int deleteByExample(EnrollExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Enroll record);

    int insertSelective(Enroll record);

    List<Enroll> selectByExample(EnrollExample example);

    Enroll selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Enroll record, @Param("example") EnrollExample example);

    int updateByExample(@Param("record") Enroll record, @Param("example") EnrollExample example);

    int updateByPrimaryKeySelective(Enroll record);

    int updateByPrimaryKey(Enroll record);
}