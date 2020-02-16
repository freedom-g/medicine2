package com.medince.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SalesExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SalesExample() {
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

        public Criteria andItemIdIsNull() {
            addCriterion("item_id is null");
            return (Criteria) this;
        }

        public Criteria andItemIdIsNotNull() {
            addCriterion("item_id is not null");
            return (Criteria) this;
        }

        public Criteria andItemIdEqualTo(String value) {
            addCriterion("item_id =", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdNotEqualTo(String value) {
            addCriterion("item_id <>", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdGreaterThan(String value) {
            addCriterion("item_id >", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdGreaterThanOrEqualTo(String value) {
            addCriterion("item_id >=", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdLessThan(String value) {
            addCriterion("item_id <", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdLessThanOrEqualTo(String value) {
            addCriterion("item_id <=", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdLike(String value) {
            addCriterion("item_id like", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdNotLike(String value) {
            addCriterion("item_id not like", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdIn(List<String> values) {
            addCriterion("item_id in", values, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdNotIn(List<String> values) {
            addCriterion("item_id not in", values, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdBetween(String value1, String value2) {
            addCriterion("item_id between", value1, value2, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdNotBetween(String value1, String value2) {
            addCriterion("item_id not between", value1, value2, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemMjIsNull() {
            addCriterion("item_mj is null");
            return (Criteria) this;
        }

        public Criteria andItemMjIsNotNull() {
            addCriterion("item_mj is not null");
            return (Criteria) this;
        }

        public Criteria andItemMjEqualTo(String value) {
            addCriterion("item_mj =", value, "itemMj");
            return (Criteria) this;
        }

        public Criteria andItemMjNotEqualTo(String value) {
            addCriterion("item_mj <>", value, "itemMj");
            return (Criteria) this;
        }

        public Criteria andItemMjGreaterThan(String value) {
            addCriterion("item_mj >", value, "itemMj");
            return (Criteria) this;
        }

        public Criteria andItemMjGreaterThanOrEqualTo(String value) {
            addCriterion("item_mj >=", value, "itemMj");
            return (Criteria) this;
        }

        public Criteria andItemMjLessThan(String value) {
            addCriterion("item_mj <", value, "itemMj");
            return (Criteria) this;
        }

        public Criteria andItemMjLessThanOrEqualTo(String value) {
            addCriterion("item_mj <=", value, "itemMj");
            return (Criteria) this;
        }

        public Criteria andItemMjLike(String value) {
            addCriterion("item_mj like", value, "itemMj");
            return (Criteria) this;
        }

        public Criteria andItemMjNotLike(String value) {
            addCriterion("item_mj not like", value, "itemMj");
            return (Criteria) this;
        }

        public Criteria andItemMjIn(List<String> values) {
            addCriterion("item_mj in", values, "itemMj");
            return (Criteria) this;
        }

        public Criteria andItemMjNotIn(List<String> values) {
            addCriterion("item_mj not in", values, "itemMj");
            return (Criteria) this;
        }

        public Criteria andItemMjBetween(String value1, String value2) {
            addCriterion("item_mj between", value1, value2, "itemMj");
            return (Criteria) this;
        }

        public Criteria andItemMjNotBetween(String value1, String value2) {
            addCriterion("item_mj not between", value1, value2, "itemMj");
            return (Criteria) this;
        }

        public Criteria andItemJgIsNull() {
            addCriterion("item_jg is null");
            return (Criteria) this;
        }

        public Criteria andItemJgIsNotNull() {
            addCriterion("item_jg is not null");
            return (Criteria) this;
        }

        public Criteria andItemJgEqualTo(Integer value) {
            addCriterion("item_jg =", value, "itemJg");
            return (Criteria) this;
        }

        public Criteria andItemJgNotEqualTo(Integer value) {
            addCriterion("item_jg <>", value, "itemJg");
            return (Criteria) this;
        }

        public Criteria andItemJgGreaterThan(Integer value) {
            addCriterion("item_jg >", value, "itemJg");
            return (Criteria) this;
        }

        public Criteria andItemJgGreaterThanOrEqualTo(Integer value) {
            addCriterion("item_jg >=", value, "itemJg");
            return (Criteria) this;
        }

        public Criteria andItemJgLessThan(Integer value) {
            addCriterion("item_jg <", value, "itemJg");
            return (Criteria) this;
        }

        public Criteria andItemJgLessThanOrEqualTo(Integer value) {
            addCriterion("item_jg <=", value, "itemJg");
            return (Criteria) this;
        }

        public Criteria andItemJgIn(List<Integer> values) {
            addCriterion("item_jg in", values, "itemJg");
            return (Criteria) this;
        }

        public Criteria andItemJgNotIn(List<Integer> values) {
            addCriterion("item_jg not in", values, "itemJg");
            return (Criteria) this;
        }

        public Criteria andItemJgBetween(Integer value1, Integer value2) {
            addCriterion("item_jg between", value1, value2, "itemJg");
            return (Criteria) this;
        }

        public Criteria andItemJgNotBetween(Integer value1, Integer value2) {
            addCriterion("item_jg not between", value1, value2, "itemJg");
            return (Criteria) this;
        }

        public Criteria andItemHdIsNull() {
            addCriterion("item_hd is null");
            return (Criteria) this;
        }

        public Criteria andItemHdIsNotNull() {
            addCriterion("item_hd is not null");
            return (Criteria) this;
        }

        public Criteria andItemHdEqualTo(String value) {
            addCriterion("item_hd =", value, "itemHd");
            return (Criteria) this;
        }

        public Criteria andItemHdNotEqualTo(String value) {
            addCriterion("item_hd <>", value, "itemHd");
            return (Criteria) this;
        }

        public Criteria andItemHdGreaterThan(String value) {
            addCriterion("item_hd >", value, "itemHd");
            return (Criteria) this;
        }

        public Criteria andItemHdGreaterThanOrEqualTo(String value) {
            addCriterion("item_hd >=", value, "itemHd");
            return (Criteria) this;
        }

        public Criteria andItemHdLessThan(String value) {
            addCriterion("item_hd <", value, "itemHd");
            return (Criteria) this;
        }

        public Criteria andItemHdLessThanOrEqualTo(String value) {
            addCriterion("item_hd <=", value, "itemHd");
            return (Criteria) this;
        }

        public Criteria andItemHdLike(String value) {
            addCriterion("item_hd like", value, "itemHd");
            return (Criteria) this;
        }

        public Criteria andItemHdNotLike(String value) {
            addCriterion("item_hd not like", value, "itemHd");
            return (Criteria) this;
        }

        public Criteria andItemHdIn(List<String> values) {
            addCriterion("item_hd in", values, "itemHd");
            return (Criteria) this;
        }

        public Criteria andItemHdNotIn(List<String> values) {
            addCriterion("item_hd not in", values, "itemHd");
            return (Criteria) this;
        }

        public Criteria andItemHdBetween(String value1, String value2) {
            addCriterion("item_hd between", value1, value2, "itemHd");
            return (Criteria) this;
        }

        public Criteria andItemHdNotBetween(String value1, String value2) {
            addCriterion("item_hd not between", value1, value2, "itemHd");
            return (Criteria) this;
        }

        public Criteria andItemSlIsNull() {
            addCriterion("item_sl is null");
            return (Criteria) this;
        }

        public Criteria andItemSlIsNotNull() {
            addCriterion("item_sl is not null");
            return (Criteria) this;
        }

        public Criteria andItemSlEqualTo(Integer value) {
            addCriterion("item_sl =", value, "itemSl");
            return (Criteria) this;
        }

        public Criteria andItemSlNotEqualTo(Integer value) {
            addCriterion("item_sl <>", value, "itemSl");
            return (Criteria) this;
        }

        public Criteria andItemSlGreaterThan(Integer value) {
            addCriterion("item_sl >", value, "itemSl");
            return (Criteria) this;
        }

        public Criteria andItemSlGreaterThanOrEqualTo(Integer value) {
            addCriterion("item_sl >=", value, "itemSl");
            return (Criteria) this;
        }

        public Criteria andItemSlLessThan(Integer value) {
            addCriterion("item_sl <", value, "itemSl");
            return (Criteria) this;
        }

        public Criteria andItemSlLessThanOrEqualTo(Integer value) {
            addCriterion("item_sl <=", value, "itemSl");
            return (Criteria) this;
        }

        public Criteria andItemSlIn(List<Integer> values) {
            addCriterion("item_sl in", values, "itemSl");
            return (Criteria) this;
        }

        public Criteria andItemSlNotIn(List<Integer> values) {
            addCriterion("item_sl not in", values, "itemSl");
            return (Criteria) this;
        }

        public Criteria andItemSlBetween(Integer value1, Integer value2) {
            addCriterion("item_sl between", value1, value2, "itemSl");
            return (Criteria) this;
        }

        public Criteria andItemSlNotBetween(Integer value1, Integer value2) {
            addCriterion("item_sl not between", value1, value2, "itemSl");
            return (Criteria) this;
        }

        public Criteria andCreatedIsNull() {
            addCriterion("created is null");
            return (Criteria) this;
        }

        public Criteria andCreatedIsNotNull() {
            addCriterion("created is not null");
            return (Criteria) this;
        }

        public Criteria andCreatedEqualTo(Date value) {
            addCriterion("created =", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedNotEqualTo(Date value) {
            addCriterion("created <>", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedGreaterThan(Date value) {
            addCriterion("created >", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedGreaterThanOrEqualTo(Date value) {
            addCriterion("created >=", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedLessThan(Date value) {
            addCriterion("created <", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedLessThanOrEqualTo(Date value) {
            addCriterion("created <=", value, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedIn(List<Date> values) {
            addCriterion("created in", values, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedNotIn(List<Date> values) {
            addCriterion("created not in", values, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedBetween(Date value1, Date value2) {
            addCriterion("created between", value1, value2, "created");
            return (Criteria) this;
        }

        public Criteria andCreatedNotBetween(Date value1, Date value2) {
            addCriterion("created not between", value1, value2, "created");
            return (Criteria) this;
        }

        public Criteria andUpdatedIsNull() {
            addCriterion("updated is null");
            return (Criteria) this;
        }

        public Criteria andUpdatedIsNotNull() {
            addCriterion("updated is not null");
            return (Criteria) this;
        }

        public Criteria andUpdatedEqualTo(Date value) {
            addCriterion("updated =", value, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedNotEqualTo(Date value) {
            addCriterion("updated <>", value, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedGreaterThan(Date value) {
            addCriterion("updated >", value, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedGreaterThanOrEqualTo(Date value) {
            addCriterion("updated >=", value, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedLessThan(Date value) {
            addCriterion("updated <", value, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedLessThanOrEqualTo(Date value) {
            addCriterion("updated <=", value, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedIn(List<Date> values) {
            addCriterion("updated in", values, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedNotIn(List<Date> values) {
            addCriterion("updated not in", values, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedBetween(Date value1, Date value2) {
            addCriterion("updated between", value1, value2, "updated");
            return (Criteria) this;
        }

        public Criteria andUpdatedNotBetween(Date value1, Date value2) {
            addCriterion("updated not between", value1, value2, "updated");
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