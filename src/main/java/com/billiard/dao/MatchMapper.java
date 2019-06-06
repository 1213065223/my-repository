package com.billiard.dao;

import com.billiard.entity.Match;
import com.billiard.entity.MatchExample;
import com.billiard.entity.MatchWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MatchMapper {
	
	MatchWithBLOBs getCurrentMatch(MatchWithBLOBs record);
	
	int cancelAndSetCurrent(Match record);
    
	long countByExample(MatchExample example);

    int deleteByExample(MatchExample example);

    int deleteByPrimaryKey(String id);

    int insert(MatchWithBLOBs record);

    int insertSelective(MatchWithBLOBs record);

    List<MatchWithBLOBs> selectByExampleWithBLOBs(MatchExample example);

    List<Match> selectByExample(MatchExample example);

    MatchWithBLOBs selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") MatchWithBLOBs record, @Param("example") MatchExample example);

    int updateByExampleWithBLOBs(@Param("record") MatchWithBLOBs record, @Param("example") MatchExample example);

    int updateByExample(@Param("record") Match record, @Param("example") MatchExample example);

    int updateByPrimaryKeySelective(MatchWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(MatchWithBLOBs record);

    int updateByPrimaryKey(Match record);
}