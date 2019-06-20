package com.billiard.service;

import java.util.List;
import java.util.Map;

import com.billiard.entity.JobResponse;
import com.billiard.entity.User;
import com.github.pagehelper.PageInfo;

public interface UserService {

	JobResponse insertUser(User user);

	JobResponse updateUser(User user);

	User getUser(User user);

	PageInfo<Map<String, Object>> getUserList(User user, Integer page, Integer size);

	Integer forbiddenUser(User user);

	JobResponse verifyUserEamil(User user);

	User getUser(String uId);

}
