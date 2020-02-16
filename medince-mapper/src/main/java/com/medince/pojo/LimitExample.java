package com.medince.pojo;

import java.util.ArrayList;
import java.util.List;

public class LimitExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public LimitExample() {
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

        public Criteria andLidIsNull() {
            addCriterion("lid is null");
            return (Criteria) this;
        }

        public Criteria andLidIsNotNull() {
            addCriterion("lid is not null");
            return (Criteria) this;
        }

        public Criteria andLidEqualTo(Long value) {
            addCriterion("lid =", value, "lid");
            return (Criteria) this;
        }

        public Criteria andLidNotEqualTo(Long value) {
            addCriterion("lid <>", value, "lid");
            return (Criteria) this;
        }

        public Criteria andLidGreaterThan(Long value) {
            addCriterion("lid >", value, "lid");
            return (Criteria) this;
        }

        public Criteria andLidGreaterThanOrEqualTo(Long value) {
            addCriterion("lid >=", value, "lid");
            return (Criteria) this;
        }

        public Criteria andLidLessThan(Long value) {
            addCriterion("lid <", value, "lid");
            return (Criteria) this;
        }

        public Criteria andLidLessThanOrEqualTo(Long value) {
            addCriterion("lid <=", value, "lid");
            return (Criteria) this;
        }

        public Criteria andLidIn(List<Long> values) {
            addCriterion("lid in", values, "lid");
            return (Criteria) this;
        }

        public Criteria andLidNotIn(List<Long> values) {
            addCriterion("lid not in", values, "lid");
            return (Criteria) this;
        }

        public Criteria andLidBetween(Long value1, Long value2) {
            addCriterion("lid between", value1, value2, "lid");
            return (Criteria) this;
        }

        public Criteria andLidNotBetween(Long value1, Long value2) {
            addCriterion("lid not between", value1, value2, "lid");
            return (Criteria) this;
        }

        public Criteria andLimitNameIsNull() {
            addCriterion("limit_name is null");
            return (Criteria) this;
        }

        public Criteria andLimitNameIsNotNull() {
            addCriterion("limit_name is not null");
            return (Criteria) this;
        }

        public Criteria andLimitNameEqualTo(String value) {
            addCriterion("limit_name =", value, "limitName");
            return (Criteria) this;
        }

        public Criteria andLimitNameNotEqualTo(String value) {
            addCriterion("limit_name <>", value, "limitName");
            return (Criteria) this;
        }

        public Criteria andLimitNameGreaterThan(String value) {
            addCriterion("limit_name >", value, "limitName");
            return (Criteria) this;
        }

        public Criteria andLimitNameGreaterThanOrEqualTo(String value) {
            addCriterion("limit_name >=", value, "limitName");
            return (Criteria) this;
        }

        public Criteria andLimitNameLessThan(String value) {
            addCriterion("limit_name <", value, "limitName");
            return (Criteria) this;
        }

        public Criteria andLimitNameLessThanOrEqualTo(String value) {
            addCriterion("limit_name <=", value, "limitName");
            return (Criteria) this;
        }

        public Criteria andLimitNameLike(String value) {
            addCriterion("limit_name like", value, "limitName");
            return (Criteria) this;
        }

        public Criteria andLimitNameNotLike(String value) {
            addCriterion("limit_name not like", value, "limitName");
            return (Criteria) this;
        }

        public Criteria andLimitNameIn(List<String> values) {
            addCriterion("limit_name in", values, "limitName");
            return (Criteria) this;
        }

        public Criteria andLimitNameNotIn(List<String> values) {
            addCriterion("limit_name not in", values, "limitName");
            return (Criteria) this;
        }

        public Criteria andLimitNameBetween(String value1, String value2) {
            addCriterion("limit_name between", value1, value2, "limitName");
            return (Criteria) this;
        }

        public Criteria andLimitNameNotBetween(String value1, String value2) {
            addCriterion("limit_name not between", value1, value2, "limitName");
            return (Criteria) this;
        }

        public Criteria andLimitTypeIsNull() {
            addCriterion("limit_type is null");
            return (Criteria) this;
        }

        public Criteria andLimitTypeIsNotNull() {
            addCriterion("limit_type is not null");
            return (Criteria) this;
        }

        public Criteria andLimitTypeEqualTo(Long value) {
            addCriterion("limit_type =", value, "limitType");
            return (Criteria) this;
        }

        public Criteria andLimitTypeNotEqualTo(Long value) {
            addCriterion("limit_type <>", value, "limitType");
            return (Criteria) this;
        }

        public Criteria andLimitTypeGreaterThan(Long value) {
            addCriterion("limit_type >", value, "limitType");
            return (Criteria) this;
        }

        public Criteria andLimitTypeGreaterThanOrEqualTo(Long value) {
            addCriterion("limit_type >=", value, "limitType");
            return (Criteria) this;
        }

        public Criteria andLimitTypeLessThan(Long value) {
            addCriterion("limit_type <", value, "limitType");
            return (Criteria) this;
        }

        public Criteria andLimitTypeLessThanOrEqualTo(Long value) {
            addCriterion("limit_type <=", value, "limitType");
            return (Criteria) this;
        }

        public Criteria andLimitTypeIn(List<Long> values) {
            addCriterion("limit_type in", values, "limitType");
            return (Criteria) this;
        }

        public Criteria andLimitTypeNotIn(List<Long> values) {
            addCriterion("limit_type not in", values, "limitType");
            return (Criteria) this;
        }

        public Criteria andLimitTypeBetween(Long value1, Long value2) {
            addCriterion("limit_type between", value1, value2, "limitType");
            return (Criteria) this;
        }

        public Criteria andLimitTypeNotBetween(Long value1, Long value2) {
            addCriterion("limit_type not between", value1, value2, "limitType");
            return (Criteria) this;
        }

        public Criteria andLimitParentIsNull() {
            addCriterion("limit_parent is null");
            return (Criteria) this;
        }

        public Criteria andLimitParentIsNotNull() {
            addCriterion("limit_parent is not null");
            return (Criteria) this;
        }

        public Criteria andLimitParentEqualTo(Long value) {
            addCriterion("limit_parent =", value, "limitParent");
            return (Criteria) this;
        }

        public Criteria andLimitParentNotEqualTo(Long value) {
            addCriterion("limit_parent <>", value, "limitParent");
            return (Criteria) this;
        }

        public Criteria andLimitParentGreaterThan(Long value) {
            addCriterion("limit_parent >", value, "limitParent");
            return (Criteria) this;
        }

        public Criteria andLimitParentGreaterThanOrEqualTo(Long value) {
            addCriterion("limit_parent >=", value, "limitParent");
            return (Criteria) this;
        }

        public Criteria andLimitParentLessThan(Long value) {
            addCriterion("limit_parent <", value, "limitParent");
            return (Criteria) this;
        }

        public Criteria andLimitParentLessThanOrEqualTo(Long value) {
            addCriterion("limit_parent <=", value, "limitParent");
            return (Criteria) this;
        }

        public Criteria andLimitParentIn(List<Long> values) {
            addCriterion("limit_parent in", values, "limitParent");
            return (Criteria) this;
        }

        public Criteria andLimitParentNotIn(List<Long> values) {
            addCriterion("limit_parent not in", values, "limitParent");
            return (Criteria) this;
        }

        public Criteria andLimitParentBetween(Long value1, Long value2) {
            addCriterion("limit_parent between", value1, value2, "limitParent");
            return (Criteria) this;
        }

        public Criteria andLimitParentNotBetween(Long value1, Long value2) {
            addCriterion("limit_parent not between", value1, value2, "limitParent");
            return (Criteria) this;
        }

        public Criteria andLimitPathIsNull() {
            addCriterion("limit_path is null");
            return (Criteria) this;
        }

        public Criteria andLimitPathIsNotNull() {
            addCriterion("limit_path is not null");
            return (Criteria) this;
        }

        public Criteria andLimitPathEqualTo(String value) {
            addCriterion("limit_path =", value, "limitPath");
            return (Criteria) this;
        }

        public Criteria andLimitPathNotEqualTo(String value) {
            addCriterion("limit_path <>", value, "limitPath");
            return (Criteria) this;
        }

        public Criteria andLimitPathGreaterThan(String value) {
            addCriterion("limit_path >", value, "limitPath");
            return (Criteria) this;
        }

        public Criteria andLimitPathGreaterThanOrEqualTo(String value) {
            addCriterion("limit_path >=", value, "limitPath");
            return (Criteria) this;
        }

        public Criteria andLimitPathLessThan(String value) {
            addCriterion("limit_path <", value, "limitPath");
            return (Criteria) this;
        }

        public Criteria andLimitPathLessThanOrEqualTo(String value) {
            addCriterion("limit_path <=", value, "limitPath");
            return (Criteria) this;
        }

        public Criteria andLimitPathLike(String value) {
            addCriterion("limit_path like", value, "limitPath");
            return (Criteria) this;
        }

        public Criteria andLimitPathNotLike(String value) {
            addCriterion("limit_path not like", value, "limitPath");
            return (Criteria) this;
        }

        public Criteria andLimitPathIn(List<String> values) {
            addCriterion("limit_path in", values, "limitPath");
            return (Criteria) this;
        }

        public Criteria andLimitPathNotIn(List<String> values) {
            addCriterion("limit_path not in", values, "limitPath");
            return (Criteria) this;
        }

        public Criteria andLimitPathBetween(String value1, String value2) {
            addCriterion("limit_path between", value1, value2, "limitPath");
            return (Criteria) this;
        }

        public Criteria andLimitPathNotBetween(String value1, String value2) {
            addCriterion("limit_path not between", value1, value2, "limitPath");
            return (Criteria) this;
        }

        public Criteria andRemakeIsNull() {
            addCriterion("remake is null");
            return (Criteria) this;
        }

        public Criteria andRemakeIsNotNull() {
            addCriterion("remake is not null");
            return (Criteria) this;
        }

        public Criteria andRemakeEqualTo(String value) {
            addCriterion("remake =", value, "remake");
            return (Criteria) this;
        }

        public Criteria andRemakeNotEqualTo(String value) {
            addCriterion("remake <>", value, "remake");
            return (Criteria) this;
        }

        public Criteria andRemakeGreaterThan(String value) {
            addCriterion("remake >", value, "remake");
            return (Criteria) this;
        }

        public Criteria andRemakeGreaterThanOrEqualTo(String value) {
            addCriterion("remake >=", value, "remake");
            return (Criteria) this;
        }

        public Criteria andRemakeLessThan(String value) {
            addCriterion("remake <", value, "remake");
            return (Criteria) this;
        }

        public Criteria andRemakeLessThanOrEqualTo(String value) {
            addCriterion("remake <=", value, "remake");
            return (Criteria) this;
        }

        public Criteria andRemakeLike(String value) {
            addCriterion("remake like", value, "remake");
            return (Criteria) this;
        }

        public Criteria andRemakeNotLike(String value) {
            addCriterion("remake not like", value, "remake");
            return (Criteria) this;
        }

        public Criteria andRemakeIn(List<String> values) {
            addCriterion("remake in", values, "remake");
            return (Criteria) this;
        }

        public Criteria andRemakeNotIn(List<String> values) {
            addCriterion("remake not in", values, "remake");
            return (Criteria) this;
        }

        public Criteria andRemakeBetween(String value1, String value2) {
            addCriterion("remake between", value1, value2, "remake");
            return (Criteria) this;
        }

        public Criteria andRemakeNotBetween(String value1, String value2) {
            addCriterion("remake not between", value1, value2, "remake");
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