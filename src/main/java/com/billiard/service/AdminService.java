package com.billiard.service;

import java.util.List;

import com.billiard.entity.Admin;
import com.billiard.entity.Announcement;
import com.billiard.entity.Association;
import com.billiard.entity.Enroll;
import com.billiard.entity.Index;
import com.billiard.entity.JobResponse;
import com.billiard.entity.MatchWithBLOBs;
import com.billiard.entity.Organization;

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

	List<Association> getAssociationList();

	void updateAssociation(Association association);

	void addAssociation(Association association);

	List<Organization> getOrganizationList();

	void updateOrganization(Organization organization);

	void addOrganization(Organization organization);

	Integer announcementUpdateOrAdd(Announcement announcement, Admin a);

	Integer announcementDelete(Integer id);

	JobResponse cancelAndSetCurrent(MatchWithBLOBs match);


}
