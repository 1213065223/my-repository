package com.billiard.service;

import java.util.List;
import java.util.Map;

import com.billiard.entity.Announcement;
import com.billiard.entity.Association;
import com.billiard.entity.Index;
import com.billiard.entity.Organization;
import com.github.pagehelper.PageInfo;

public interface IndexService {

	Map<String, List<Index>> list();

	Association association();

	Organization organization();

	PageInfo<Announcement> organizationList(int page, int size);

	Announcement organizationDetail(int aid);

	PageInfo<Index> list(Integer type, Integer page, Integer size);

}
