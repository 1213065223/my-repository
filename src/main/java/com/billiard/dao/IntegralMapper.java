package com.billiard.dao;

import com.billiard.entity.Integral;
import com.billiard.entity.IntegralExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface IntegralMapper {
    long countByExample(IntegralExample example);

    int deleteByExample(IntegralExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Integral record);

    int insertSelective(Integral record);

    List<Integral> selectByExample(IntegralExample example);

    Integral selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Integral record, @Param("example") IntegralExample example);

    int updateByExample(@Param("record") Integral record, @Param("example") IntegralExample example);

    int updateByPrimaryKeySelective(Integral record);

    int updateByPrimaryKey(Integral record);
    
    List<Map<String, Object>> selectIntegralRank(Integral record);
    
    List<Map<String, Object>> selectWinsRank(Integral record);
}