package com.billiard.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MatchExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MatchExample() {
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

        public Criteria andIdEqualTo(String value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(String value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(String value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(String value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(String value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(String value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLike(String value) {
            addCriterion("id like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotLike(String value) {
            addCriterion("id not like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<String> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<String> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(String value1, String value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(String value1, String value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andOrganizationIsNull() {
            addCriterion("organization is null");
            return (Criteria) this;
        }

        public Criteria andOrganizationIsNotNull() {
            addCriterion("organization is not null");
            return (Criteria) this;
        }

        public Criteria andOrganizationEqualTo(String value) {
            addCriterion("organization =", value, "organization");
            return (Criteria) this;
        }

        public Criteria andOrganizationNotEqualTo(String value) {
            addCriterion("organization <>", value, "organization");
            return (Criteria) this;
        }

        public Criteria andOrganizationGreaterThan(String value) {
            addCriterion("organization >", value, "organization");
            return (Criteria) this;
        }

        public Criteria andOrganizationGreaterThanOrEqualTo(String value) {
            addCriterion("organization >=", value, "organization");
            return (Criteria) this;
        }

        public Criteria andOrganizationLessThan(String value) {
            addCriterion("organization <", value, "organization");
            return (Criteria) this;
        }

        public Criteria andOrganizationLessThanOrEqualTo(String value) {
            addCriterion("organization <=", value, "organization");
            return (Criteria) this;
        }

        public Criteria andOrganizationLike(String value) {
            addCriterion("organization like", value, "organization");
            return (Criteria) this;
        }

        public Criteria andOrganizationNotLike(String value) {
            addCriterion("organization not like", value, "organization");
            return (Criteria) this;
        }

        public Criteria andOrganizationIn(List<String> values) {
            addCriterion("organization in", values, "organization");
            return (Criteria) this;
        }

        public Criteria andOrganizationNotIn(List<String> values) {
            addCriterion("organization not in", values, "organization");
            return (Criteria) this;
        }

        public Criteria andOrganizationBetween(String value1, String value2) {
            addCriterion("organization between", value1, value2, "organization");
            return (Criteria) this;
        }

        public Criteria andOrganizationNotBetween(String value1, String value2) {
            addCriterion("organization not between", value1, value2, "organization");
            return (Criteria) this;
        }

        public Criteria andMatchContentIsNull() {
            addCriterion("match_content is null");
            return (Criteria) this;
        }

        public Criteria andMatchContentIsNotNull() {
            addCriterion("match_content is not null");
            return (Criteria) this;
        }

        public Criteria andMatchContentEqualTo(String value) {
            addCriterion("match_content =", value, "matchContent");
            return (Criteria) this;
        }

        public Criteria andMatchContentNotEqualTo(String value) {
            addCriterion("match_content <>", value, "matchContent");
            return (Criteria) this;
        }

        public Criteria andMatchContentGreaterThan(String value) {
            addCriterion("match_content >", value, "matchContent");
            return (Criteria) this;
        }

        public Criteria andMatchContentGreaterThanOrEqualTo(String value) {
            addCriterion("match_content >=", value, "matchContent");
            return (Criteria) this;
        }

        public Criteria andMatchContentLessThan(String value) {
            addCriterion("match_content <", value, "matchContent");
            return (Criteria) this;
        }

        public Criteria andMatchContentLessThanOrEqualTo(String value) {
            addCriterion("match_content <=", value, "matchContent");
            return (Criteria) this;
        }

        public Criteria andMatchContentLike(String value) {
            addCriterion("match_content like", value, "matchContent");
            return (Criteria) this;
        }

        public Criteria andMatchContentNotLike(String value) {
            addCriterion("match_content not like", value, "matchContent");
            return (Criteria) this;
        }

        public Criteria andMatchContentIn(List<String> values) {
            addCriterion("match_content in", values, "matchContent");
            return (Criteria) this;
        }

        public Criteria andMatchContentNotIn(List<String> values) {
            addCriterion("match_content not in", values, "matchContent");
            return (Criteria) this;
        }

        public Criteria andMatchContentBetween(String value1, String value2) {
            addCriterion("match_content between", value1, value2, "matchContent");
            return (Criteria) this;
        }

        public Criteria andMatchContentNotBetween(String value1, String value2) {
            addCriterion("match_content not between", value1, value2, "matchContent");
            return (Criteria) this;
        }

        public Criteria andMatchTimeIsNull() {
            addCriterion("match_time is null");
            return (Criteria) this;
        }

        public Criteria andMatchTimeIsNotNull() {
            addCriterion("match_time is not null");
            return (Criteria) this;
        }

        public Criteria andMatchTimeEqualTo(Date value) {
            addCriterion("match_time =", value, "matchTime");
            return (Criteria) this;
        }

        public Criteria andMatchTimeNotEqualTo(Date value) {
            addCriterion("match_time <>", value, "matchTime");
            return (Criteria) this;
        }

        public Criteria andMatchTimeGreaterThan(Date value) {
            addCriterion("match_time >", value, "matchTime");
            return (Criteria) this;
        }

        public Criteria andMatchTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("match_time >=", value, "matchTime");
            return (Criteria) this;
        }

        public Criteria andMatchTimeLessThan(Date value) {
            addCriterion("match_time <", value, "matchTime");
            return (Criteria) this;
        }

        public Criteria andMatchTimeLessThanOrEqualTo(Date value) {
            addCriterion("match_time <=", value, "matchTime");
            return (Criteria) this;
        }

        public Criteria andMatchTimeIn(List<Date> values) {
            addCriterion("match_time in", values, "matchTime");
            return (Criteria) this;
        }

        public Criteria andMatchTimeNotIn(List<Date> values) {
            addCriterion("match_time not in", values, "matchTime");
            return (Criteria) this;
        }

        public Criteria andMatchTimeBetween(Date value1, Date value2) {
            addCriterion("match_time between", value1, value2, "matchTime");
            return (Criteria) this;
        }

        public Criteria andMatchTimeNotBetween(Date value1, Date value2) {
            addCriterion("match_time not between", value1, value2, "matchTime");
            return (Criteria) this;
        }

        public Criteria andMatchPlaceIsNull() {
            addCriterion("match_place is null");
            return (Criteria) this;
        }

        public Criteria andMatchPlaceIsNotNull() {
            addCriterion("match_place is not null");
            return (Criteria) this;
        }

        public Criteria andMatchPlaceEqualTo(String value) {
            addCriterion("match_place =", value, "matchPlace");
            return (Criteria) this;
        }

        public Criteria andMatchPlaceNotEqualTo(String value) {
            addCriterion("match_place <>", value, "matchPlace");
            return (Criteria) this;
        }

        public Criteria andMatchPlaceGreaterThan(String value) {
            addCriterion("match_place >", value, "matchPlace");
            return (Criteria) this;
        }

        public Criteria andMatchPlaceGreaterThanOrEqualTo(String value) {
            addCriterion("match_place >=", value, "matchPlace");
            return (Criteria) this;
        }

        public Criteria andMatchPlaceLessThan(String value) {
            addCriterion("match_place <", value, "matchPlace");
            return (Criteria) this;
        }

        public Criteria andMatchPlaceLessThanOrEqualTo(String value) {
            addCriterion("match_place <=", value, "matchPlace");
            return (Criteria) this;
        }

        public Criteria andMatchPlaceLike(String value) {
            addCriterion("match_place like", value, "matchPlace");
            return (Criteria) this;
        }

        public Criteria andMatchPlaceNotLike(String value) {
            addCriterion("match_place not like", value, "matchPlace");
            return (Criteria) this;
        }

        public Criteria andMatchPlaceIn(List<String> values) {
            addCriterion("match_place in", values, "matchPlace");
            return (Criteria) this;
        }

        public Criteria andMatchPlaceNotIn(List<String> values) {
            addCriterion("match_place not in", values, "matchPlace");
            return (Criteria) this;
        }

        public Criteria andMatchPlaceBetween(String value1, String value2) {
            addCriterion("match_place between", value1, value2, "matchPlace");
            return (Criteria) this;
        }

        public Criteria andMatchPlaceNotBetween(String value1, String value2) {
            addCriterion("match_place not between", value1, value2, "matchPlace");
            return (Criteria) this;
        }

        public Criteria andPlanningIsNull() {
            addCriterion("planning is null");
            return (Criteria) this;
        }

        public Criteria andPlanningIsNotNull() {
            addCriterion("planning is not null");
            return (Criteria) this;
        }

        public Criteria andPlanningEqualTo(String value) {
            addCriterion("planning =", value, "planning");
            return (Criteria) this;
        }

        public Criteria andPlanningNotEqualTo(String value) {
            addCriterion("planning <>", value, "planning");
            return (Criteria) this;
        }

        public Criteria andPlanningGreaterThan(String value) {
            addCriterion("planning >", value, "planning");
            return (Criteria) this;
        }

        public Criteria andPlanningGreaterThanOrEqualTo(String value) {
            addCriterion("planning >=", value, "planning");
            return (Criteria) this;
        }

        public Criteria andPlanningLessThan(String value) {
            addCriterion("planning <", value, "planning");
            return (Criteria) this;
        }

        public Criteria andPlanningLessThanOrEqualTo(String value) {
            addCriterion("planning <=", value, "planning");
            return (Criteria) this;
        }

        public Criteria andPlanningLike(String value) {
            addCriterion("planning like", value, "planning");
            return (Criteria) this;
        }

        public Criteria andPlanningNotLike(String value) {
            addCriterion("planning not like", value, "planning");
            return (Criteria) this;
        }

        public Criteria andPlanningIn(List<String> values) {
            addCriterion("planning in", values, "planning");
            return (Criteria) this;
        }

        public Criteria andPlanningNotIn(List<String> values) {
            addCriterion("planning not in", values, "planning");
            return (Criteria) this;
        }

        public Criteria andPlanningBetween(String value1, String value2) {
            addCriterion("planning between", value1, value2, "planning");
            return (Criteria) this;
        }

        public Criteria andPlanningNotBetween(String value1, String value2) {
            addCriterion("planning not between", value1, value2, "planning");
            return (Criteria) this;
        }

        public Criteria andScheduleIsNull() {
            addCriterion("schedule is null");
            return (Criteria) this;
        }

        public Criteria andScheduleIsNotNull() {
            addCriterion("schedule is not null");
            return (Criteria) this;
        }

        public Criteria andScheduleEqualTo(String value) {
            addCriterion("schedule =", value, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleNotEqualTo(String value) {
            addCriterion("schedule <>", value, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleGreaterThan(String value) {
            addCriterion("schedule >", value, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleGreaterThanOrEqualTo(String value) {
            addCriterion("schedule >=", value, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleLessThan(String value) {
            addCriterion("schedule <", value, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleLessThanOrEqualTo(String value) {
            addCriterion("schedule <=", value, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleLike(String value) {
            addCriterion("schedule like", value, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleNotLike(String value) {
            addCriterion("schedule not like", value, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleIn(List<String> values) {
            addCriterion("schedule in", values, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleNotIn(List<String> values) {
            addCriterion("schedule not in", values, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleBetween(String value1, String value2) {
            addCriterion("schedule between", value1, value2, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleNotBetween(String value1, String value2) {
            addCriterion("schedule not between", value1, value2, "schedule");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeIsNull() {
            addCriterion("enroll_time is null");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeIsNotNull() {
            addCriterion("enroll_time is not null");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeEqualTo(Date value) {
            addCriterion("enroll_time =", value, "enrollTime");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeNotEqualTo(Date value) {
            addCriterion("enroll_time <>", value, "enrollTime");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeGreaterThan(Date value) {
            addCriterion("enroll_time >", value, "enrollTime");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("enroll_time >=", value, "enrollTime");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeLessThan(Date value) {
            addCriterion("enroll_time <", value, "enrollTime");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeLessThanOrEqualTo(Date value) {
            addCriterion("enroll_time <=", value, "enrollTime");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeIn(List<Date> values) {
            addCriterion("enroll_time in", values, "enrollTime");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeNotIn(List<Date> values) {
            addCriterion("enroll_time not in", values, "enrollTime");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeBetween(Date value1, Date value2) {
            addCriterion("enroll_time between", value1, value2, "enrollTime");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeNotBetween(Date value1, Date value2) {
            addCriterion("enroll_time not between", value1, value2, "enrollTime");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeEndIsNull() {
            addCriterion("enroll_time_end is null");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeEndIsNotNull() {
            addCriterion("enroll_time_end is not null");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeEndEqualTo(Date value) {
            addCriterion("enroll_time_end =", value, "enrollTimeEnd");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeEndNotEqualTo(Date value) {
            addCriterion("enroll_time_end <>", value, "enrollTimeEnd");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeEndGreaterThan(Date value) {
            addCriterion("enroll_time_end >", value, "enrollTimeEnd");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeEndGreaterThanOrEqualTo(Date value) {
            addCriterion("enroll_time_end >=", value, "enrollTimeEnd");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeEndLessThan(Date value) {
            addCriterion("enroll_time_end <", value, "enrollTimeEnd");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeEndLessThanOrEqualTo(Date value) {
            addCriterion("enroll_time_end <=", value, "enrollTimeEnd");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeEndIn(List<Date> values) {
            addCriterion("enroll_time_end in", values, "enrollTimeEnd");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeEndNotIn(List<Date> values) {
            addCriterion("enroll_time_end not in", values, "enrollTimeEnd");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeEndBetween(Date value1, Date value2) {
            addCriterion("enroll_time_end between", value1, value2, "enrollTimeEnd");
            return (Criteria) this;
        }

        public Criteria andEnrollTimeEndNotBetween(Date value1, Date value2) {
            addCriterion("enroll_time_end not between", value1, value2, "enrollTimeEnd");
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

        public Criteria andCreateUserIsNull() {
            addCriterion("create_user is null");
            return (Criteria) this;
        }

        public Criteria andCreateUserIsNotNull() {
            addCriterion("create_user is not null");
            return (Criteria) this;
        }

        public Criteria andCreateUserEqualTo(String value) {
            addCriterion("create_user =", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserNotEqualTo(String value) {
            addCriterion("create_user <>", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserGreaterThan(String value) {
            addCriterion("create_user >", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserGreaterThanOrEqualTo(String value) {
            addCriterion("create_user >=", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserLessThan(String value) {
            addCriterion("create_user <", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserLessThanOrEqualTo(String value) {
            addCriterion("create_user <=", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserLike(String value) {
            addCriterion("create_user like", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserNotLike(String value) {
            addCriterion("create_user not like", value, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserIn(List<String> values) {
            addCriterion("create_user in", values, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserNotIn(List<String> values) {
            addCriterion("create_user not in", values, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserBetween(String value1, String value2) {
            addCriterion("create_user between", value1, value2, "createUser");
            return (Criteria) this;
        }

        public Criteria andCreateUserNotBetween(String value1, String value2) {
            addCriterion("create_user not between", value1, value2, "createUser");
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