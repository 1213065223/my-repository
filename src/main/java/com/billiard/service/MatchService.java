package com.billiard.service;

import com.billiard.entity.Enroll;
import com.billiard.entity.JobResponse;
import com.billiard.entity.MatchWithBLOBs;
import com.github.pagehelper.PageInfo;

public interface MatchService {

	PageInfo<MatchWithBLOBs> matchList(int page, int size, String match_name, String time_quantum);

	JobResponse AddEnroll(Enroll enroll);

}
