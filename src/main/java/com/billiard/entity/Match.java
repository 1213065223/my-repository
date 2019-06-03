package com.billiard.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Match {
    private String id;

    private String matchName;

    private String organization;

    private String matchContent;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date matchTime;

    private String matchPlace;

    private String planning;

    private String schedule;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date enrollTime;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date enrollTimeEnd;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createTime;

    private String createUser;

    private Integer matchDel;

    private Integer matchNow;

    private String timeQuantum;

    private Boolean isEnd;

    private Integer enrollCost;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getMatchName() {
        return matchName;
    }

    public void setMatchName(String matchName) {
        this.matchName = matchName == null ? null : matchName.trim();
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization == null ? null : organization.trim();
    }

    public String getMatchContent() {
        return matchContent;
    }

    public void setMatchContent(String matchContent) {
        this.matchContent = matchContent == null ? null : matchContent.trim();
    }

    public Date getMatchTime() {
        return matchTime;
    }

    public void setMatchTime(Date matchTime) {
        this.matchTime = matchTime;
    }

    public String getMatchPlace() {
        return matchPlace;
    }

    public void setMatchPlace(String matchPlace) {
        this.matchPlace = matchPlace == null ? null : matchPlace.trim();
    }

    public String getPlanning() {
        return planning;
    }

    public void setPlanning(String planning) {
        this.planning = planning == null ? null : planning.trim();
    }

    public String getSchedule() {
        return schedule;
    }

    public void setSchedule(String schedule) {
        this.schedule = schedule == null ? null : schedule.trim();
    }

    public Date getEnrollTime() {
        return enrollTime;
    }

    public void setEnrollTime(Date enrollTime) {
        this.enrollTime = enrollTime;
    }

    public Date getEnrollTimeEnd() {
        return enrollTimeEnd;
    }

    public void setEnrollTimeEnd(Date enrollTimeEnd) {
        this.enrollTimeEnd = enrollTimeEnd;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser == null ? null : createUser.trim();
    }

    public Integer getMatchDel() {
        return matchDel;
    }

    public void setMatchDel(Integer matchDel) {
        this.matchDel = matchDel;
    }

    public Integer getMatchNow() {
        return matchNow;
    }

    public void setMatchNow(Integer matchNow) {
        this.matchNow = matchNow;
    }

    public String getTimeQuantum() {
        return timeQuantum;
    }

    public void setTimeQuantum(String timeQuantum) {
        this.timeQuantum = timeQuantum == null ? null : timeQuantum.trim();
    }

    public Boolean getIsEnd() {
        return isEnd;
    }

    public void setIsEnd(Boolean isEnd) {
        this.isEnd = isEnd;
    }

    public Integer getEnrollCost() {
        return enrollCost;
    }

    public void setEnrollCost(Integer enrollCost) {
        this.enrollCost = enrollCost;
    }
}