package com.billiard.service;

import com.billiard.entity.Enroll;
import com.billiard.entity.JobResponse;

public interface EnrollService {

	Integer enrollVerify(Enroll enroll);

	JobResponse cancelEnroll(String mid, String uid);

}
