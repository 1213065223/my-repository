package com.billiard.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MatchCourseExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MatchCourseExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andTitleIsNull() {
            addCriterion("title is null");
            return (Criteria) this;
        }

        public Criteria andTitleIsNotNull() {
            addCriterion("title is not null");
            return (Criteria) this;
        }

        public Criteria andTitleEqualTo(String value) {
            addCriterion("title =", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotEqualTo(String value) {
            addCriterion("title <>", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThan(String value) {
            addCriterion("title >", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThanOrEqualTo(String value) {
            addCriterion("title >=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThan(String value) {
            addCriterion("title <", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThanOrEqualTo(String value) {
            addCriterion("title <=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLike(String value) {
            addCriterion("title like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotLike(String value) {
            addCriterion("title not like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleIn(List<String> values) {
            addCriterion("title in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotIn(List<String> values) {
            addCriterion("title not in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleBetween(String value1, String value2) {
            addCriterion("title between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotBetween(String value1, String value2) {
            addCriterion("title not between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andCourseTimeIsNull() {
            addCriterion("course_time is null");
            return (Criteria) this;
        }

        public Criteria andCourseTimeIsNotNull() {
            addCriterion("course_time is not null");
            return (Criteria) this;
        }

        public Criteria andCourseTimeEqualTo(Date value) {
            addCriterion("course_time =", value, "courseTime");
            return (Criteria) this;
        }

        public Criteria andCourseTimeNotEqualTo(Date value) {
            addCriterion("course_time <>", value, "courseTime");
            return (Criteria) this;
        }

        public Criteria andCourseTimeGreaterThan(Date value) {
            addCriterion("course_time >", value, "courseTime");
            return (Criteria) this;
        }

        public Criteria andCourseTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("course_time >=", value, "courseTime");
            return (Criteria) this;
        }

        public Criteria andCourseTimeLessThan(Date value) {
            addCriterion("course_time <", value, "courseTime");
            return (Criteria) this;
        }

        public Criteria andCourseTimeLessThanOrEqualTo(Date value) {
            addCriterion("course_time <=", value, "courseTime");
            return (Criteria) this;
        }

        public Criteria andCourseTimeIn(List<Date> values) {
            addCriterion("course_time in", values, "courseTime");
            return (Criteria) this;
        }

        public Criteria andCourseTimeNotIn(List<Date> values) {
            addCriterion("course_time not in", values, "courseTime");
            return (Criteria) this;
        }

        public Criteria andCourseTimeBetween(Date value1, Date value2) {
            addCriterion("course_time between", value1, value2, "courseTime");
            return (Criteria) this;
        }

        public Criteria andCourseTimeNotBetween(Date value1, Date value2) {
            addCriterion("course_time not between", value1, value2, "courseTime");
            return (Criteria) this;
        }

        public Criteria andCoursePlaceIsNull() {
            addCriterion("course_place is null");
            return (Criteria) this;
        }

        public Criteria andCoursePlaceIsNotNull() {
            addCriterion("course_place is not null");
            return (Criteria) this;
        }

        public Criteria andCoursePlaceEqualTo(String value) {
            addCriterion("course_place =", value, "coursePlace");
            return (Criteria) this;
        }

        public Criteria andCoursePlaceNotEqualTo(String value) {
            addCriterion("course_place <>", value, "coursePlace");
            return (Criteria) this;
        }

        public Criteria andCoursePlaceGreaterThan(String value) {
            addCriterion("course_place >", value, "coursePlace");
            return (Criteria) this;
        }

        public Criteria andCoursePlaceGreaterThanOrEqualTo(String value) {
            addCriterion("course_place >=", value, "coursePlace");
            return (Criteria) this;
        }

        public Criteria andCoursePlaceLessThan(String value) {
            addCriterion("course_place <", value, "coursePlace");
            return (Criteria) this;
        }

        public Criteria andCoursePlaceLessThanOrEqualTo(String value) {
            addCriterion("course_place <=", value, "coursePlace");
            return (Criteria) this;
        }

        public Criteria andCoursePlaceLike(String value) {
            addCriterion("course_place like", value, "coursePlace");
            return (Criteria) this;
        }

        public Criteria andCoursePlaceNotLike(String value) {
            addCriterion("course_place not like", value, "coursePlace");
            return (Criteria) this;
        }

        public Criteria andCoursePlaceIn(List<String> values) {
            addCriterion("course_place in", values, "coursePlace");
            return (Criteria) this;
        }

        public Criteria andCoursePlaceNotIn(List<String> values) {
            addCriterion("course_place not in", values, "coursePlace");
            return (Criteria) this;
        }

        public Criteria andCoursePlaceBetween(String value1, String value2) {
            addCriterion("course_place between", value1, value2, "coursePlace");
            return (Criteria) this;
        }

        public Criteria andCoursePlaceNotBetween(String value1, String value2) {
            addCriterion("course_place not between", value1, value2, "coursePlace");
            return (Criteria) this;
        }

        public Criteria andTeamOneIdIsNull() {
            addCriterion("team_one_id is null");
            return (Criteria) this;
        }

        public Criteria andTeamOneIdIsNotNull() {
            addCriterion("team_one_id is not null");
            return (Criteria) this;
        }

        public Criteria andTeamOneIdEqualTo(String value) {
            addCriterion("team_one_id =", value, "teamOneId");
            return (Criteria) this;
        }

        public Criteria andTeamOneIdNotEqualTo(String value) {
            addCriterion("team_one_id <>", value, "teamOneId");
            return (Criteria) this;
        }

        public Criteria andTeamOneIdGreaterThan(String value) {
            addCriterion("team_one_id >", value, "teamOneId");
            return (Criteria) this;
        }

        public Criteria andTeamOneIdGreaterThanOrEqualTo(String value) {
            addCriterion("team_one_id >=", value, "teamOneId");
            return (Criteria) this;
        }

        public Criteria andTeamOneIdLessThan(String value) {
            addCriterion("team_one_id <", value, "teamOneId");
            return (Criteria) this;
        }

        public Criteria andTeamOneIdLessThanOrEqualTo(String value) {
            addCriterion("team_one_id <=", value, "teamOneId");
            return (Criteria) this;
        }

        public Criteria andTeamOneIdLike(String value) {
            addCriterion("team_one_id like", value, "teamOneId");
            return (Criteria) this;
        }

        public Criteria andTeamOneIdNotLike(String value) {
            addCriterion("team_one_id not like", value, "teamOneId");
            return (Criteria) this;
        }

        public Criteria andTeamOneIdIn(List<String> values) {
            addCriterion("team_one_id in", values, "teamOneId");
            return (Criteria) this;
        }

        public Criteria andTeamOneIdNotIn(List<String> values) {
            addCriterion("team_one_id not in", values, "teamOneId");
            return (Criteria) this;
        }

        public Criteria andTeamOneIdBetween(String value1, String value2) {
            addCriterion("team_one_id between", value1, value2, "teamOneId");
            return (Criteria) this;
        }

        public Criteria andTeamOneIdNotBetween(String value1, String value2) {
            addCriterion("team_one_id not between", value1, value2, "teamOneId");
            return (Criteria) this;
        }

        public Criteria andTeamOneNameIsNull() {
            addCriterion("team_one_name is null");
            return (Criteria) this;
        }

        public Criteria andTeamOneNameIsNotNull() {
            addCriterion("team_one_name is not null");
            return (Criteria) this;
        }

        public Criteria andTeamOneNameEqualTo(String value) {
            addCriterion("team_one_name =", value, "teamOneName");
            return (Criteria) this;
        }

        public Criteria andTeamOneNameNotEqualTo(String value) {
            addCriterion("team_one_name <>", value, "teamOneName");
            return (Criteria) this;
        }

        public Criteria andTeamOneNameGreaterThan(String value) {
            addCriterion("team_one_name >", value, "teamOneName");
            return (Criteria) this;
        }

        public Criteria andTeamOneNameGreaterThanOrEqualTo(String value) {
            addCriterion("team_one_name >=", value, "teamOneName");
            return (Criteria) this;
        }

        public Criteria andTeamOneNameLessThan(String value) {
            addCriterion("team_one_name <", value, "teamOneName");
            return (Criteria) this;
        }

        public Criteria andTeamOneNameLessThanOrEqualTo(String value) {
            addCriterion("team_one_name <=", value, "teamOneName");
            return (Criteria) this;
        }

        public Criteria andTeamOneNameLike(String value) {
            addCriterion("team_one_name like", value, "teamOneName");
            return (Criteria) this;
        }

        public Criteria andTeamOneNameNotLike(String value) {
            addCriterion("team_one_name not like", value, "teamOneName");
            return (Criteria) this;
        }

        public Criteria andTeamOneNameIn(List<String> values) {
            addCriterion("team_one_name in", values, "teamOneName");
            return (Criteria) this;
        }

        public Criteria andTeamOneNameNotIn(List<String> values) {
            addCriterion("team_one_name not in", values, "teamOneName");
            return (Criteria) this;
        }

        public Criteria andTeamOneNameBetween(String value1, String value2) {
            addCriterion("team_one_name between", value1, value2, "teamOneName");
            return (Criteria) this;
        }

        public Criteria andTeamOneNameNotBetween(String value1, String value2) {
            addCriterion("team_one_name not between", value1, value2, "teamOneName");
            return (Criteria) this;
        }

        public Criteria andTeamTwoIdIsNull() {
            addCriterion("team_two_id is null");
            return (Criteria) this;
        }

        public Criteria andTeamTwoIdIsNotNull() {
            addCriterion("team_two_id is not null");
            return (Criteria) this;
        }

        public Criteria andTeamTwoIdEqualTo(String value) {
            addCriterion("team_two_id =", value, "teamTwoId");
            return (Criteria) this;
        }

        public Criteria andTeamTwoIdNotEqualTo(String value) {
            addCriterion("team_two_id <>", value, "teamTwoId");
            return (Criteria) this;
        }

        public Criteria andTeamTwoIdGreaterThan(String value) {
            addCriterion("team_two_id >", value, "teamTwoId");
            return (Criteria) this;
        }

        public Criteria andTeamTwoIdGreaterThanOrEqualTo(String value) {
            addCriterion("team_two_id >=", value, "teamTwoId");
            return (Criteria) this;
        }

        public Criteria andTeamTwoIdLessThan(String value) {
            addCriterion("team_two_id <", value, "teamTwoId");
            return (Criteria) this;
        }

        public Criteria andTeamTwoIdLessThanOrEqualTo(String value) {
            addCriterion("team_two_id <=", value, "teamTwoId");
            return (Criteria) this;
        }

        public Criteria andTeamTwoIdLike(String value) {
            addCriterion("team_two_id like", value, "teamTwoId");
            return (Criteria) this;
        }

        public Criteria andTeamTwoIdNotLike(String value) {
            addCriterion("team_two_id not like", value, "teamTwoId");
            return (Criteria) this;
        }

        public Criteria andTeamTwoIdIn(List<String> values) {
            addCriterion("team_two_id in", values, "teamTwoId");
            return (Criteria) this;
        }

        public Criteria andTeamTwoIdNotIn(List<String> values) {
            addCriterion("team_two_id not in", values, "teamTwoId");
            return (Criteria) this;
        }

        public Criteria andTeamTwoIdBetween(String value1, String value2) {
            addCriterion("team_two_id between", value1, value2, "teamTwoId");
            return (Criteria) this;
        }

        public Criteria andTeamTwoIdNotBetween(String value1, String value2) {
            addCriterion("team_two_id not between", value1, value2, "teamTwoId");
            return (Criteria) this;
        }

        public Criteria andTeamTwoNameIsNull() {
            addCriterion("team_two_name is null");
            return (Criteria) this;
        }

        public Criteria andTeamTwoNameIsNotNull() {
            addCriterion("team_two_name is not null");
            return (Criteria) this;
        }

        public Criteria andTeamTwoNameEqualTo(String value) {
            addCriterion("team_two_name =", value, "teamTwoName");
            return (Criteria) this;
        }

        public Criteria andTeamTwoNameNotEqualTo(String value) {
            addCriterion("team_two_name <>", value, "teamTwoName");
            return (Criteria) this;
        }

        public Criteria andTeamTwoNameGreaterThan(String value) {
            addCriterion("team_two_name >", value, "teamTwoName");
            return (Criteria) this;
        }

        public Criteria andTeamTwoNameGreaterThanOrEqualTo(String value) {
            addCriterion("team_two_name >=", value, "teamTwoName");
            return (Criteria) this;
        }

        public Criteria andTeamTwoNameLessThan(String value) {
            addCriterion("team_two_name <", value, "teamTwoName");
            return (Criteria) this;
        }

        public Criteria andTeamTwoNameLessThanOrEqualTo(String value) {
            addCriterion("team_two_name <=", value, "teamTwoName");
            return (Criteria) this;
        }

        public Criteria andTeamTwoNameLike(String value) {
            addCriterion("team_two_name like", value, "teamTwoName");
            return (Criteria) this;
        }

        public Criteria andTeamTwoNameNotLike(String value) {
            addCriterion("team_two_name not like", value, "teamTwoName");
            return (Criteria) this;
        }

        public Criteria andTeamTwoNameIn(List<String> values) {
            addCriterion("team_two_name in", values, "teamTwoName");
            return (Criteria) this;
        }

        public Criteria andTeamTwoNameNotIn(List<String> values) {
            addCriterion("team_two_name not in", values, "teamTwoName");
            return (Criteria) this;
        }

        public Criteria andTeamTwoNameBetween(String value1, String value2) {
            addCriterion("team_two_name between", value1, value2, "teamTwoName");
            return (Criteria) this;
        }

        public Criteria andTeamTwoNameNotBetween(String value1, String value2) {
            addCriterion("team_two_name not between", value1, value2, "teamTwoName");
            return (Criteria) this;
        }

        public Criteria andMatchIdIsNull() {
            addCriterion("match_id is null");
            return (Criteria) this;
        }

        public Criteria andMatchIdIsNotNull() {
            addCriterion("match_id is not null");
            return (Criteria) this;
        }

        public Criteria andMatchIdEqualTo(String value) {
            addCriterion("match_id =", value, "matchId");
            return (Criteria) this;
        }

        public Criteria andMatchIdNotEqualTo(String value) {
            addCriterion("match_id <>", value, "matchId");
            return (Criteria) this;
        }

        public Criteria andMatchIdGreaterThan(String value) {
            addCriterion("match_id >", value, "matchId");
            return (Criteria) this;
        }

        public Criteria andMatchIdGreaterThanOrEqualTo(String value) {
            addCriterion("match_id >=", value, "matchId");
            return (Criteria) this;
        }

        public Criteria andMatchIdLessThan(String value) {
            addCriterion("match_id <", value, "matchId");
            return (Criteria) this;
        }

        public Criteria andMatchIdLessThanOrEqualTo(String value) {
            addCriterion("match_id <=", value, "matchId");
            return (Criteria) this;
        }

        public Criteria andMatchIdLike(String value) {
            addCriterion("match_id like", value, "matchId");
            return (Criteria) this;
        }

        public Criteria andMatchIdNotLike(String value) {
            addCriterion("match_id not like", value, "matchId");
            return (Criteria) this;
        }

        public Criteria andMatchIdIn(List<String> values) {
            addCriterion("match_id in", values, "matchId");
            return (Criteria) this;
        }

        public Criteria andMatchIdNotIn(List<String> values) {
            addCriterion("match_id not in", values, "matchId");
            return (Criteria) this;
        }

        public Criteria andMatchIdBetween(String value1, String value2) {
            addCriterion("match_id between", value1, value2, "matchId");
            return (Criteria) this;
        }

        public Criteria andMatchIdNotBetween(String value1, String value2) {
            addCriterion("match_id not between", value1, value2, "matchId");
            return (Criteria) this;
        }

        public Criteria andWinLostIsNull() {
            addCriterion("win_lost is null");
            return (Criteria) this;
        }

        public Criteria andWinLostIsNotNull() {
            addCriterion("win_lost is not null");
            return (Criteria) this;
        }

        public Criteria andWinLostEqualTo(Integer value) {
            addCriterion("win_lost =", value, "winLost");
            return (Criteria) this;
        }

        public Criteria andWinLostNotEqualTo(Integer value) {
            addCriterion("win_lost <>", value, "winLost");
            return (Criteria) this;
        }

        public Criteria andWinLostGreaterThan(Integer value) {
            addCriterion("win_lost >", value, "winLost");
            return (Criteria) this;
        }

        public Criteria andWinLostGreaterThanOrEqualTo(Integer value) {
            addCriterion("win_lost >=", value, "winLost");
            return (Criteria) this;
        }

        public Criteria andWinLostLessThan(Integer value) {
            addCriterion("win_lost <", value, "winLost");
            return (Criteria) this;
        }

        public Criteria andWinLostLessThanOrEqualTo(Integer value) {
            addCriterion("win_lost <=", value, "winLost");
            return (Criteria) this;
        }

        public Criteria andWinLostIn(List<Integer> values) {
            addCriterion("win_lost in", values, "winLost");
            return (Criteria) this;
        }

        public Criteria andWinLostNotIn(List<Integer> values) {
            addCriterion("win_lost not in", values, "winLost");
            return (Criteria) this;
        }

        public Criteria andWinLostBetween(Integer value1, Integer value2) {
            addCriterion("win_lost between", value1, value2, "winLost");
            return (Criteria) this;
        }

        public Criteria andWinLostNotBetween(Integer value1, Integer value2) {
            addCriterion("win_lost not between", value1, value2, "winLost");
            return (Criteria) this;
        }

        public Criteria andIntegralIsNull() {
            addCriterion("integral is null");
            return (Criteria) this;
        }

        public Criteria andIntegralIsNotNull() {
            addCriterion("integral is not null");
            return (Criteria) this;
        }

        public Criteria andIntegralEqualTo(Integer value) {
            addCriterion("integral =", value, "integral");
            return (Criteria) this;
        }

        public Criteria andIntegralNotEqualTo(Integer value) {
            addCriterion("integral <>", value, "integral");
            return (Criteria) this;
        }

        public Criteria andIntegralGreaterThan(Integer value) {
            addCriterion("integral >", value, "integral");
            return (Criteria) this;
        }

        public Criteria andIntegralGreaterThanOrEqualTo(Integer value) {
            addCriterion("integral >=", value, "integral");
            return (Criteria) this;
        }

        public Criteria andIntegralLessThan(Integer value) {
            addCriterion("integral <", value, "integral");
            return (Criteria) this;
        }

        public Criteria andIntegralLessThanOrEqualTo(Integer value) {
            addCriterion("integral <=", value, "integral");
            return (Criteria) this;
        }

        public Criteria andIntegralIn(List<Integer> values) {
            addCriterion("integral in", values, "integral");
            return (Criteria) this;
        }

        public Criteria andIntegralNotIn(List<Integer> values) {
            addCriterion("integral not in", values, "integral");
            return (Criteria) this;
        }

        public Criteria andIntegralBetween(Integer value1, Integer value2) {
            addCriterion("integral between", value1, value2, "integral");
            return (Criteria) this;
        }

        public Criteria andIntegralNotBetween(Integer value1, Integer value2) {
            addCriterion("integral not between", value1, value2, "integral");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}