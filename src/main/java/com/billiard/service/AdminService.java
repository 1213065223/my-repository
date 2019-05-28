package com.billiard.service;

import com.billiard.entity.Admin;
import com.billiard.entity.Index;
import com.billiard.entity.JobResponse;
import com.billiard.entity.MatchWithBLOBs;

public interface AdminService {

	JobResponse addAdmin(Admin admin);

	Admin getAdminByLoginName(String loginName);

	JobResponse getAdminList(Integer page, Integer size, String nick_name, String phone);

	JobResponse updateAdmin(Admin admin);

	JobResponse addIndex(Index index);

	JobResponse updateIndex(Index index);

	Integer deleteIndex(Integer intid);

	JobResponse addMatch(MatchWithBLOBs match);

	Integer updateMatch(MatchWithBLOBs match);

	Integer deleteMatch(String id);

}
