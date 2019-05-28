package com.billiard.service;

import com.billiard.entity.JobResponse;
import com.billiard.entity.User;

public interface UserService {

	JobResponse insertUser(User user);

	JobResponse updateUser(User user);

	User getUser(User user);

}
