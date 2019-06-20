package com.billiard.entity;

import java.util.ArrayList;
import java.util.List;

public class DictionaryExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DictionaryExample() {
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

        public Criteria andDicNameIsNull() {
            addCriterion("dic_name is null");
            return (Criteria) this;
        }

        public Criteria andDicNameIsNotNull() {
            addCriterion("dic_name is not null");
            return (Criteria) this;
        }

        public Criteria andDicNameEqualTo(String value) {
            addCriterion("dic_name =", value, "dicName");
            return (Criteria) this;
        }

        public Criteria andDicNameNotEqualTo(String value) {
            addCriterion("dic_name <>", value, "dicName");
            return (Criteria) this;
        }

        public Criteria andDicNameGreaterThan(String value) {
            addCriterion("dic_name >", value, "dicName");
            return (Criteria) this;
        }

        public Criteria andDicNameGreaterThanOrEqualTo(String value) {
            addCriterion("dic_name >=", value, "dicName");
            return (Criteria) this;
        }

        public Criteria andDicNameLessThan(String value) {
            addCriterion("dic_name <", value, "dicName");
            return (Criteria) this;
        }

        public Criteria andDicNameLessThanOrEqualTo(String value) {
            addCriterion("dic_name <=", value, "dicName");
            return (Criteria) this;
        }

        public Criteria andDicNameLike(String value) {
            addCriterion("dic_name like", value, "dicName");
            return (Criteria) this;
        }

        public Criteria andDicNameNotLike(String value) {
            addCriterion("dic_name not like", value, "dicName");
            return (Criteria) this;
        }

        public Criteria andDicNameIn(List<String> values) {
            addCriterion("dic_name in", values, "dicName");
            return (Criteria) this;
        }

        public Criteria andDicNameNotIn(List<String> values) {
            addCriterion("dic_name not in", values, "dicName");
            return (Criteria) this;
        }

        public Criteria andDicNameBetween(String value1, String value2) {
            addCriterion("dic_name between", value1, value2, "dicName");
            return (Criteria) this;
        }

        public Criteria andDicNameNotBetween(String value1, String value2) {
            addCriterion("dic_name not between", value1, value2, "dicName");
            return (Criteria) this;
        }

        public Criteria andDicTypeIsNull() {
            addCriterion("dic_type is null");
            return (Criteria) this;
        }

        public Criteria andDicTypeIsNotNull() {
            addCriterion("dic_type is not null");
            return (Criteria) this;
        }

        public Criteria andDicTypeEqualTo(Integer value) {
            addCriterion("dic_type =", value, "dicType");
            return (Criteria) this;
        }

        public Criteria andDicTypeNotEqualTo(Integer value) {
            addCriterion("dic_type <>", value, "dicType");
            return (Criteria) this;
        }

        public Criteria andDicTypeGreaterThan(Integer value) {
            addCriterion("dic_type >", value, "dicType");
            return (Criteria) this;
        }

        public Criteria andDicTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("dic_type >=", value, "dicType");
            return (Criteria) this;
        }

        public Criteria andDicTypeLessThan(Integer value) {
            addCriterion("dic_type <", value, "dicType");
            return (Criteria) this;
        }

        public Criteria andDicTypeLessThanOrEqualTo(Integer value) {
            addCriterion("dic_type <=", value, "dicType");
            return (Criteria) this;
        }

        public Criteria andDicTypeIn(List<Integer> values) {
            addCriterion("dic_type in", values, "dicType");
            return (Criteria) this;
        }

        public Criteria andDicTypeNotIn(List<Integer> values) {
            addCriterion("dic_type not in", values, "dicType");
            return (Criteria) this;
        }

        public Criteria andDicTypeBetween(Integer value1, Integer value2) {
            addCriterion("dic_type between", value1, value2, "dicType");
            return (Criteria) this;
        }

        public Criteria andDicTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("dic_type not between", value1, value2, "dicType");
            return (Criteria) this;
        }

        public Criteria andDicParentIsNull() {
            addCriterion("dic_parent is null");
            return (Criteria) this;
        }

        public Criteria andDicParentIsNotNull() {
            addCriterion("dic_parent is not null");
            return (Criteria) this;
        }

        public Criteria andDicParentEqualTo(Integer value) {
            addCriterion("dic_parent =", value, "dicParent");
            return (Criteria) this;
        }

        public Criteria andDicParentNotEqualTo(Integer value) {
            addCriterion("dic_parent <>", value, "dicParent");
            return (Criteria) this;
        }

        public Criteria andDicParentGreaterThan(Integer value) {
            addCriterion("dic_parent >", value, "dicParent");
            return (Criteria) this;
        }

        public Criteria andDicParentGreaterThanOrEqualTo(Integer value) {
            addCriterion("dic_parent >=", value, "dicParent");
            return (Criteria) this;
        }

        public Criteria andDicParentLessThan(Integer value) {
            addCriterion("dic_parent <", value, "dicParent");
            return (Criteria) this;
        }

        public Criteria andDicParentLessThanOrEqualTo(Integer value) {
            addCriterion("dic_parent <=", value, "dicParent");
            return (Criteria) this;
        }

        public Criteria andDicParentIn(List<Integer> values) {
            addCriterion("dic_parent in", values, "dicParent");
            return (Criteria) this;
        }

        public Criteria andDicParentNotIn(List<Integer> values) {
            addCriterion("dic_parent not in", values, "dicParent");
            return (Criteria) this;
        }

        public Criteria andDicParentBetween(Integer value1, Integer value2) {
            addCriterion("dic_parent between", value1, value2, "dicParent");
            return (Criteria) this;
        }

        public Criteria andDicParentNotBetween(Integer value1, Integer value2) {
            addCriterion("dic_parent not between", value1, value2, "dicParent");
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