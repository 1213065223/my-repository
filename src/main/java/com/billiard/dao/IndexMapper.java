package com.billiard.dao;

import com.billiard.entity.Index;
import com.billiard.entity.IndexExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IndexMapper {
    long countByExample(IndexExample example);

    int deleteByExample(IndexExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Index record);

    int insertSelective(Index record);

    List<Index> selectByExampleWithBLOBs(IndexExample example);

    List<Index> selectByExample(IndexExample example);

    Index selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Index record, @Param("example") IndexExample example);

    int updateByExampleWithBLOBs(@Param("record") Index record, @Param("example") IndexExample example);

    int updateByExample(@Param("record") Index record, @Param("example") IndexExample example);

    int updateByPrimaryKeySelective(Index record);

    int updateByPrimaryKeyWithBLOBs(Index record);

    int updateByPrimaryKey(Index record);
}