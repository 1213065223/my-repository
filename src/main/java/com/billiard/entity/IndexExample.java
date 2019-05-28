package com.billiard.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class IndexExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public IndexExample() {
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

        public Criteria andImageUrlIsNull() {
            addCriterion("image_url is null");
            return (Criteria) this;
        }

        public Criteria andImageUrlIsNotNull() {
            addCriterion("image_url is not null");
            return (Criteria) this;
        }

        public Criteria andImageUrlEqualTo(String value) {
            addCriterion("image_url =", value, "imageUrl");
            return (Criteria) this;
        }

        public Criteria andImageUrlNotEqualTo(String value) {
            addCriterion("image_url <>", value, "imageUrl");
            return (Criteria) this;
        }

        public Criteria andImageUrlGreaterThan(String value) {
            addCriterion("image_url >", value, "imageUrl");
            return (Criteria) this;
        }

        public Criteria andImageUrlGreaterThanOrEqualTo(String value) {
            addCriterion("image_url >=", value, "imageUrl");
            return (Criteria) this;
        }

        public Criteria andImageUrlLessThan(String value) {
            addCriterion("image_url <", value, "imageUrl");
            return (Criteria) this;
        }

        public Criteria andImageUrlLessThanOrEqualTo(String value) {
            addCriterion("image_url <=", value, "imageUrl");
            return (Criteria) this;
        }

        public Criteria andImageUrlLike(String value) {
            addCriterion("image_url like", value, "imageUrl");
            return (Criteria) this;
        }

        public Criteria andImageUrlNotLike(String value) {
            addCriterion("image_url not like", value, "imageUrl");
            return (Criteria) this;
        }

        public Criteria andImageUrlIn(List<String> values) {
            addCriterion("image_url in", values, "imageUrl");
            return (Criteria) this;
        }

        public Criteria andImageUrlNotIn(List<String> values) {
            addCriterion("image_url not in", values, "imageUrl");
            return (Criteria) this;
        }

        public Criteria andImageUrlBetween(String value1, String value2) {
            addCriterion("image_url between", value1, value2, "imageUrl");
            return (Criteria) this;
        }

        public Criteria andImageUrlNotBetween(String value1, String value2) {
            addCriterion("image_url not between", value1, value2, "imageUrl");
            return (Criteria) this;
        }

        public Criteria andHrefUrlIsNull() {
            addCriterion("href_url is null");
            return (Criteria) this;
        }

        public Criteria andHrefUrlIsNotNull() {
            addCriterion("href_url is not null");
            return (Criteria) this;
        }

        public Criteria andHrefUrlEqualTo(String value) {
            addCriterion("href_url =", value, "hrefUrl");
            return (Criteria) this;
        }

        public Criteria andHrefUrlNotEqualTo(String value) {
            addCriterion("href_url <>", value, "hrefUrl");
            return (Criteria) this;
        }

        public Criteria andHrefUrlGreaterThan(String value) {
            addCriterion("href_url >", value, "hrefUrl");
            return (Criteria) this;
        }

        public Criteria andHrefUrlGreaterThanOrEqualTo(String value) {
            addCriterion("href_url >=", value, "hrefUrl");
            return (Criteria) this;
        }

        public Criteria andHrefUrlLessThan(String value) {
            addCriterion("href_url <", value, "hrefUrl");
            return (Criteria) this;
        }

        public Criteria andHrefUrlLessThanOrEqualTo(String value) {
            addCriterion("href_url <=", value, "hrefUrl");
            return (Criteria) this;
        }

        public Criteria andHrefUrlLike(String value) {
            addCriterion("href_url like", value, "hrefUrl");
            return (Criteria) this;
        }

        public Criteria andHrefUrlNotLike(String value) {
            addCriterion("href_url not like", value, "hrefUrl");
            return (Criteria) this;
        }

        public Criteria andHrefUrlIn(List<String> values) {
            addCriterion("href_url in", values, "hrefUrl");
            return (Criteria) this;
        }

        public Criteria andHrefUrlNotIn(List<String> values) {
            addCriterion("href_url not in", values, "hrefUrl");
            return (Criteria) this;
        }

        public Criteria andHrefUrlBetween(String value1, String value2) {
            addCriterion("href_url between", value1, value2, "hrefUrl");
            return (Criteria) this;
        }

        public Criteria andHrefUrlNotBetween(String value1, String value2) {
            addCriterion("href_url not between", value1, value2, "hrefUrl");
            return (Criteria) this;
        }

        public Criteria andJumpTypeIsNull() {
            addCriterion("jump_type is null");
            return (Criteria) this;
        }

        public Criteria andJumpTypeIsNotNull() {
            addCriterion("jump_type is not null");
            return (Criteria) this;
        }

        public Criteria andJumpTypeEqualTo(Integer value) {
            addCriterion("jump_type =", value, "jumpType");
            return (Criteria) this;
        }

        public Criteria andJumpTypeNotEqualTo(Integer value) {
            addCriterion("jump_type <>", value, "jumpType");
            return (Criteria) this;
        }

        public Criteria andJumpTypeGreaterThan(Integer value) {
            addCriterion("jump_type >", value, "jumpType");
            return (Criteria) this;
        }

        public Criteria andJumpTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("jump_type >=", value, "jumpType");
            return (Criteria) this;
        }

        public Criteria andJumpTypeLessThan(Integer value) {
            addCriterion("jump_type <", value, "jumpType");
            return (Criteria) this;
        }

        public Criteria andJumpTypeLessThanOrEqualTo(Integer value) {
            addCriterion("jump_type <=", value, "jumpType");
            return (Criteria) this;
        }

        public Criteria andJumpTypeIn(List<Integer> values) {
            addCriterion("jump_type in", values, "jumpType");
            return (Criteria) this;
        }

        public Criteria andJumpTypeNotIn(List<Integer> values) {
            addCriterion("jump_type not in", values, "jumpType");
            return (Criteria) this;
        }

        public Criteria andJumpTypeBetween(Integer value1, Integer value2) {
            addCriterion("jump_type between", value1, value2, "jumpType");
            return (Criteria) this;
        }

        public Criteria andJumpTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("jump_type not between", value1, value2, "jumpType");
            return (Criteria) this;
        }

        public Criteria andIsHiddenIsNull() {
            addCriterion("is_hidden is null");
            return (Criteria) this;
        }

        public Criteria andIsHiddenIsNotNull() {
            addCriterion("is_hidden is not null");
            return (Criteria) this;
        }

        public Criteria andIsHiddenEqualTo(Boolean value) {
            addCriterion("is_hidden =", value, "isHidden");
            return (Criteria) this;
        }

        public Criteria andIsHiddenNotEqualTo(Boolean value) {
            addCriterion("is_hidden <>", value, "isHidden");
            return (Criteria) this;
        }

        public Criteria andIsHiddenGreaterThan(Boolean value) {
            addCriterion("is_hidden >", value, "isHidden");
            return (Criteria) this;
        }

        public Criteria andIsHiddenGreaterThanOrEqualTo(Boolean value) {
            addCriterion("is_hidden >=", value, "isHidden");
            return (Criteria) this;
        }

        public Criteria andIsHiddenLessThan(Boolean value) {
            addCriterion("is_hidden <", value, "isHidden");
            return (Criteria) this;
        }

        public Criteria andIsHiddenLessThanOrEqualTo(Boolean value) {
            addCriterion("is_hidden <=", value, "isHidden");
            return (Criteria) this;
        }

        public Criteria andIsHiddenIn(List<Boolean> values) {
            addCriterion("is_hidden in", values, "isHidden");
            return (Criteria) this;
        }

        public Criteria andIsHiddenNotIn(List<Boolean> values) {
            addCriterion("is_hidden not in", values, "isHidden");
            return (Criteria) this;
        }

        public Criteria andIsHiddenBetween(Boolean value1, Boolean value2) {
            addCriterion("is_hidden between", value1, value2, "isHidden");
            return (Criteria) this;
        }

        public Criteria andIsHiddenNotBetween(Boolean value1, Boolean value2) {
            addCriterion("is_hidden not between", value1, value2, "isHidden");
            return (Criteria) this;
        }

        public Criteria andImageLocationIsNull() {
            addCriterion("image_location is null");
            return (Criteria) this;
        }

        public Criteria andImageLocationIsNotNull() {
            addCriterion("image_location is not null");
            return (Criteria) this;
        }

        public Criteria andImageLocationEqualTo(Integer value) {
            addCriterion("image_location =", value, "imageLocation");
            return (Criteria) this;
        }

        public Criteria andImageLocationNotEqualTo(Integer value) {
            addCriterion("image_location <>", value, "imageLocation");
            return (Criteria) this;
        }

        public Criteria andImageLocationGreaterThan(Integer value) {
            addCriterion("image_location >", value, "imageLocation");
            return (Criteria) this;
        }

        public Criteria andImageLocationGreaterThanOrEqualTo(Integer value) {
            addCriterion("image_location >=", value, "imageLocation");
            return (Criteria) this;
        }

        public Criteria andImageLocationLessThan(Integer value) {
            addCriterion("image_location <", value, "imageLocation");
            return (Criteria) this;
        }

        public Criteria andImageLocationLessThanOrEqualTo(Integer value) {
            addCriterion("image_location <=", value, "imageLocation");
            return (Criteria) this;
        }

        public Criteria andImageLocationIn(List<Integer> values) {
            addCriterion("image_location in", values, "imageLocation");
            return (Criteria) this;
        }

        public Criteria andImageLocationNotIn(List<Integer> values) {
            addCriterion("image_location not in", values, "imageLocation");
            return (Criteria) this;
        }

        public Criteria andImageLocationBetween(Integer value1, Integer value2) {
            addCriterion("image_location between", value1, value2, "imageLocation");
            return (Criteria) this;
        }

        public Criteria andImageLocationNotBetween(Integer value1, Integer value2) {
            addCriterion("image_location not between", value1, value2, "imageLocation");
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