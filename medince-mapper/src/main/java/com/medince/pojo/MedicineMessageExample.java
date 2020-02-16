package com.medince.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MedicineMessageExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MedicineMessageExample() {
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

        public Criteria andItemNameIsNull() {
            addCriterion("item_name is null");
            return (Criteria) this;
        }

        public Criteria andItemNameIsNotNull() {
            addCriterion("item_name is not null");
            return (Criteria) this;
        }

        public Criteria andItemNameEqualTo(String value) {
            addCriterion("item_name =", value, "itemName");
            return (Criteria) this;
        }

        public Criteria andItemNameNotEqualTo(String value) {
            addCriterion("item_name <>", value, "itemName");
            return (Criteria) this;
        }

        public Criteria andItemNameGreaterThan(String value) {
            addCriterion("item_name >", value, "itemName");
            return (Criteria) this;
        }

        public Criteria andItemNameGreaterThanOrEqualTo(String value) {
            addCriterion("item_name >=", value, "itemName");
            return (Criteria) this;
        }

        public Criteria andItemNameLessThan(String value) {
            addCriterion("item_name <", value, "itemName");
            return (Criteria) this;
        }

        public Criteria andItemNameLessThanOrEqualTo(String value) {
            addCriterion("item_name <=", value, "itemName");
            return (Criteria) this;
        }

        public Criteria andItemNameLike(String value) {
            addCriterion("item_name like", value, "itemName");
            return (Criteria) this;
        }

        public Criteria andItemNameNotLike(String value) {
            addCriterion("item_name not like", value, "itemName");
            return (Criteria) this;
        }

        public Criteria andItemNameIn(List<String> values) {
            addCriterion("item_name in", values, "itemName");
            return (Criteria) this;
        }

        public Criteria andItemNameNotIn(List<String> values) {
            addCriterion("item_name not in", values, "itemName");
            return (Criteria) this;
        }

        public Criteria andItemNameBetween(String value1, String value2) {
            addCriterion("item_name between", value1, value2, "itemName");
            return (Criteria) this;
        }

        public Criteria andItemNameNotBetween(String value1, String value2) {
            addCriterion("item_name not between", value1, value2, "itemName");
            return (Criteria) this;
        }

        public Criteria andImgIsNull() {
            addCriterion("img is null");
            return (Criteria) this;
        }

        public Criteria andImgIsNotNull() {
            addCriterion("img is not null");
            return (Criteria) this;
        }

        public Criteria andImgEqualTo(String value) {
            addCriterion("img =", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgNotEqualTo(String value) {
            addCriterion("img <>", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgGreaterThan(String value) {
            addCriterion("img >", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgGreaterThanOrEqualTo(String value) {
            addCriterion("img >=", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgLessThan(String value) {
            addCriterion("img <", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgLessThanOrEqualTo(String value) {
            addCriterion("img <=", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgLike(String value) {
            addCriterion("img like", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgNotLike(String value) {
            addCriterion("img not like", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgIn(List<String> values) {
            addCriterion("img in", values, "img");
            return (Criteria) this;
        }

        public Criteria andImgNotIn(List<String> values) {
            addCriterion("img not in", values, "img");
            return (Criteria) this;
        }

        public Criteria andImgBetween(String value1, String value2) {
            addCriterion("img between", value1, value2, "img");
            return (Criteria) this;
        }

        public Criteria andImgNotBetween(String value1, String value2) {
            addCriterion("img not between", value1, value2, "img");
            return (Criteria) this;
        }

        public Criteria andItemBrandIsNull() {
            addCriterion("item_brand is null");
            return (Criteria) this;
        }

        public Criteria andItemBrandIsNotNull() {
            addCriterion("item_brand is not null");
            return (Criteria) this;
        }

        public Criteria andItemBrandEqualTo(String value) {
            addCriterion("item_brand =", value, "itemBrand");
            return (Criteria) this;
        }

        public Criteria andItemBrandNotEqualTo(String value) {
            addCriterion("item_brand <>", value, "itemBrand");
            return (Criteria) this;
        }

        public Criteria andItemBrandGreaterThan(String value) {
            addCriterion("item_brand >", value, "itemBrand");
            return (Criteria) this;
        }

        public Criteria andItemBrandGreaterThanOrEqualTo(String value) {
            addCriterion("item_brand >=", value, "itemBrand");
            return (Criteria) this;
        }

        public Criteria andItemBrandLessThan(String value) {
            addCriterion("item_brand <", value, "itemBrand");
            return (Criteria) this;
        }

        public Criteria andItemBrandLessThanOrEqualTo(String value) {
            addCriterion("item_brand <=", value, "itemBrand");
            return (Criteria) this;
        }

        public Criteria andItemBrandLike(String value) {
            addCriterion("item_brand like", value, "itemBrand");
            return (Criteria) this;
        }

        public Criteria andItemBrandNotLike(String value) {
            addCriterion("item_brand not like", value, "itemBrand");
            return (Criteria) this;
        }

        public Criteria andItemBrandIn(List<String> values) {
            addCriterion("item_brand in", values, "itemBrand");
            return (Criteria) this;
        }

        public Criteria andItemBrandNotIn(List<String> values) {
            addCriterion("item_brand not in", values, "itemBrand");
            return (Criteria) this;
        }

        public Criteria andItemBrandBetween(String value1, String value2) {
            addCriterion("item_brand between", value1, value2, "itemBrand");
            return (Criteria) this;
        }

        public Criteria andItemBrandNotBetween(String value1, String value2) {
            addCriterion("item_brand not between", value1, value2, "itemBrand");
            return (Criteria) this;
        }

        public Criteria andItemStackIsNull() {
            addCriterion("item_stack is null");
            return (Criteria) this;
        }

        public Criteria andItemStackIsNotNull() {
            addCriterion("item_stack is not null");
            return (Criteria) this;
        }

        public Criteria andItemStackEqualTo(Long value) {
            addCriterion("item_stack =", value, "itemStack");
            return (Criteria) this;
        }

        public Criteria andItemStackNotEqualTo(Long value) {
            addCriterion("item_stack <>", value, "itemStack");
            return (Criteria) this;
        }

        public Criteria andItemStackGreaterThan(Long value) {
            addCriterion("item_stack >", value, "itemStack");
            return (Criteria) this;
        }

        public Criteria andItemStackGreaterThanOrEqualTo(Long value) {
            addCriterion("item_stack >=", value, "itemStack");
            return (Criteria) this;
        }

        public Criteria andItemStackLessThan(Long value) {
            addCriterion("item_stack <", value, "itemStack");
            return (Criteria) this;
        }

        public Criteria andItemStackLessThanOrEqualTo(Long value) {
            addCriterion("item_stack <=", value, "itemStack");
            return (Criteria) this;
        }

        public Criteria andItemStackIn(List<Long> values) {
            addCriterion("item_stack in", values, "itemStack");
            return (Criteria) this;
        }

        public Criteria andItemStackNotIn(List<Long> values) {
            addCriterion("item_stack not in", values, "itemStack");
            return (Criteria) this;
        }

        public Criteria andItemStackBetween(Long value1, Long value2) {
            addCriterion("item_stack between", value1, value2, "itemStack");
            return (Criteria) this;
        }

        public Criteria andItemStackNotBetween(Long value1, Long value2) {
            addCriterion("item_stack not between", value1, value2, "itemStack");
            return (Criteria) this;
        }

        public Criteria andItemBazaarIsNull() {
            addCriterion("item_bazaar is null");
            return (Criteria) this;
        }

        public Criteria andItemBazaarIsNotNull() {
            addCriterion("item_bazaar is not null");
            return (Criteria) this;
        }

        public Criteria andItemBazaarEqualTo(Long value) {
            addCriterion("item_bazaar =", value, "itemBazaar");
            return (Criteria) this;
        }

        public Criteria andItemBazaarNotEqualTo(Long value) {
            addCriterion("item_bazaar <>", value, "itemBazaar");
            return (Criteria) this;
        }

        public Criteria andItemBazaarGreaterThan(Long value) {
            addCriterion("item_bazaar >", value, "itemBazaar");
            return (Criteria) this;
        }

        public Criteria andItemBazaarGreaterThanOrEqualTo(Long value) {
            addCriterion("item_bazaar >=", value, "itemBazaar");
            return (Criteria) this;
        }

        public Criteria andItemBazaarLessThan(Long value) {
            addCriterion("item_bazaar <", value, "itemBazaar");
            return (Criteria) this;
        }

        public Criteria andItemBazaarLessThanOrEqualTo(Long value) {
            addCriterion("item_bazaar <=", value, "itemBazaar");
            return (Criteria) this;
        }

        public Criteria andItemBazaarIn(List<Long> values) {
            addCriterion("item_bazaar in", values, "itemBazaar");
            return (Criteria) this;
        }

        public Criteria andItemBazaarNotIn(List<Long> values) {
            addCriterion("item_bazaar not in", values, "itemBazaar");
            return (Criteria) this;
        }

        public Criteria andItemBazaarBetween(Long value1, Long value2) {
            addCriterion("item_bazaar between", value1, value2, "itemBazaar");
            return (Criteria) this;
        }

        public Criteria andItemBazaarNotBetween(Long value1, Long value2) {
            addCriterion("item_bazaar not between", value1, value2, "itemBazaar");
            return (Criteria) this;
        }

        public Criteria andItemMembershipIsNull() {
            addCriterion("item_membership is null");
            return (Criteria) this;
        }

        public Criteria andItemMembershipIsNotNull() {
            addCriterion("item_membership is not null");
            return (Criteria) this;
        }

        public Criteria andItemMembershipEqualTo(Long value) {
            addCriterion("item_membership =", value, "itemMembership");
            return (Criteria) this;
        }

        public Criteria andItemMembershipNotEqualTo(Long value) {
            addCriterion("item_membership <>", value, "itemMembership");
            return (Criteria) this;
        }

        public Criteria andItemMembershipGreaterThan(Long value) {
            addCriterion("item_membership >", value, "itemMembership");
            return (Criteria) this;
        }

        public Criteria andItemMembershipGreaterThanOrEqualTo(Long value) {
            addCriterion("item_membership >=", value, "itemMembership");
            return (Criteria) this;
        }

        public Criteria andItemMembershipLessThan(Long value) {
            addCriterion("item_membership <", value, "itemMembership");
            return (Criteria) this;
        }

        public Criteria andItemMembershipLessThanOrEqualTo(Long value) {
            addCriterion("item_membership <=", value, "itemMembership");
            return (Criteria) this;
        }

        public Criteria andItemMembershipIn(List<Long> values) {
            addCriterion("item_membership in", values, "itemMembership");
            return (Criteria) this;
        }

        public Criteria andItemMembershipNotIn(List<Long> values) {
            addCriterion("item_membership not in", values, "itemMembership");
            return (Criteria) this;
        }

        public Criteria andItemMembershipBetween(Long value1, Long value2) {
            addCriterion("item_membership between", value1, value2, "itemMembership");
            return (Criteria) this;
        }

        public Criteria andItemMembershipNotBetween(Long value1, Long value2) {
            addCriterion("item_membership not between", value1, value2, "itemMembership");
            return (Criteria) this;
        }

        public Criteria andItemPromotionIsNull() {
            addCriterion("item_promotion is null");
            return (Criteria) this;
        }

        public Criteria andItemPromotionIsNotNull() {
            addCriterion("item_promotion is not null");
            return (Criteria) this;
        }

        public Criteria andItemPromotionEqualTo(Long value) {
            addCriterion("item_promotion =", value, "itemPromotion");
            return (Criteria) this;
        }

        public Criteria andItemPromotionNotEqualTo(Long value) {
            addCriterion("item_promotion <>", value, "itemPromotion");
            return (Criteria) this;
        }

        public Criteria andItemPromotionGreaterThan(Long value) {
            addCriterion("item_promotion >", value, "itemPromotion");
            return (Criteria) this;
        }

        public Criteria andItemPromotionGreaterThanOrEqualTo(Long value) {
            addCriterion("item_promotion >=", value, "itemPromotion");
            return (Criteria) this;
        }

        public Criteria andItemPromotionLessThan(Long value) {
            addCriterion("item_promotion <", value, "itemPromotion");
            return (Criteria) this;
        }

        public Criteria andItemPromotionLessThanOrEqualTo(Long value) {
            addCriterion("item_promotion <=", value, "itemPromotion");
            return (Criteria) this;
        }

        public Criteria andItemPromotionIn(List<Long> values) {
            addCriterion("item_promotion in", values, "itemPromotion");
            return (Criteria) this;
        }

        public Criteria andItemPromotionNotIn(List<Long> values) {
            addCriterion("item_promotion not in", values, "itemPromotion");
            return (Criteria) this;
        }

        public Criteria andItemPromotionBetween(Long value1, Long value2) {
            addCriterion("item_promotion between", value1, value2, "itemPromotion");
            return (Criteria) this;
        }

        public Criteria andItemPromotionNotBetween(Long value1, Long value2) {
            addCriterion("item_promotion not between", value1, value2, "itemPromotion");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Byte value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Byte value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Byte value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Byte value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Byte value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Byte value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Byte> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Byte> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Byte value1, Byte value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Byte value1, Byte value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andParamItemIsNull() {
            addCriterion("param_item is null");
            return (Criteria) this;
        }

        public Criteria andParamItemIsNotNull() {
            addCriterion("param_item is not null");
            return (Criteria) this;
        }

        public Criteria andParamItemEqualTo(String value) {
            addCriterion("param_item =", value, "paramItem");
            return (Criteria) this;
        }

        public Criteria andParamItemNotEqualTo(String value) {
            addCriterion("param_item <>", value, "paramItem");
            return (Criteria) this;
        }

        public Criteria andParamItemGreaterThan(String value) {
            addCriterion("param_item >", value, "paramItem");
            return (Criteria) this;
        }

        public Criteria andParamItemGreaterThanOrEqualTo(String value) {
            addCriterion("param_item >=", value, "paramItem");
            return (Criteria) this;
        }

        public Criteria andParamItemLessThan(String value) {
            addCriterion("param_item <", value, "paramItem");
            return (Criteria) this;
        }

        public Criteria andParamItemLessThanOrEqualTo(String value) {
            addCriterion("param_item <=", value, "paramItem");
            return (Criteria) this;
        }

        public Criteria andParamItemLike(String value) {
            addCriterion("param_item like", value, "paramItem");
            return (Criteria) this;
        }

        public Criteria andParamItemNotLike(String value) {
            addCriterion("param_item not like", value, "paramItem");
            return (Criteria) this;
        }

        public Criteria andParamItemIn(List<String> values) {
            addCriterion("param_item in", values, "paramItem");
            return (Criteria) this;
        }

        public Criteria andParamItemNotIn(List<String> values) {
            addCriterion("param_item not in", values, "paramItem");
            return (Criteria) this;
        }

        public Criteria andParamItemBetween(String value1, String value2) {
            addCriterion("param_item between", value1, value2, "paramItem");
            return (Criteria) this;
        }

        public Criteria andParamItemNotBetween(String value1, String value2) {
            addCriterion("param_item not between", value1, value2, "paramItem");
            return (Criteria) this;
        }

        public Criteria andPaiIsNull() {
            addCriterion("pai is null");
            return (Criteria) this;
        }

        public Criteria andPaiIsNotNull() {
            addCriterion("pai is not null");
            return (Criteria) this;
        }

        public Criteria andPaiEqualTo(Integer value) {
            addCriterion("pai =", value, "pai");
            return (Criteria) this;
        }

        public Criteria andPaiNotEqualTo(Integer value) {
            addCriterion("pai <>", value, "pai");
            return (Criteria) this;
        }

        public Criteria andPaiGreaterThan(Integer value) {
            addCriterion("pai >", value, "pai");
            return (Criteria) this;
        }

        public Criteria andPaiGreaterThanOrEqualTo(Integer value) {
            addCriterion("pai >=", value, "pai");
            return (Criteria) this;
        }

        public Criteria andPaiLessThan(Integer value) {
            addCriterion("pai <", value, "pai");
            return (Criteria) this;
        }

        public Criteria andPaiLessThanOrEqualTo(Integer value) {
            addCriterion("pai <=", value, "pai");
            return (Criteria) this;
        }

        public Criteria andPaiIn(List<Integer> values) {
            addCriterion("pai in", values, "pai");
            return (Criteria) this;
        }

        public Criteria andPaiNotIn(List<Integer> values) {
            addCriterion("pai not in", values, "pai");
            return (Criteria) this;
        }

        public Criteria andPaiBetween(Integer value1, Integer value2) {
            addCriterion("pai between", value1, value2, "pai");
            return (Criteria) this;
        }

        public Criteria andPaiNotBetween(Integer value1, Integer value2) {
            addCriterion("pai not between", value1, value2, "pai");
            return (Criteria) this;
        }

        public Criteria andNumIsNull() {
            addCriterion("num is null");
            return (Criteria) this;
        }

        public Criteria andNumIsNotNull() {
            addCriterion("num is not null");
            return (Criteria) this;
        }

        public Criteria andNumEqualTo(Integer value) {
            addCriterion("num =", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumNotEqualTo(Integer value) {
            addCriterion("num <>", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumGreaterThan(Integer value) {
            addCriterion("num >", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("num >=", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumLessThan(Integer value) {
            addCriterion("num <", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumLessThanOrEqualTo(Integer value) {
            addCriterion("num <=", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumIn(List<Integer> values) {
            addCriterion("num in", values, "num");
            return (Criteria) this;
        }

        public Criteria andNumNotIn(List<Integer> values) {
            addCriterion("num not in", values, "num");
            return (Criteria) this;
        }

        public Criteria andNumBetween(Integer value1, Integer value2) {
            addCriterion("num between", value1, value2, "num");
            return (Criteria) this;
        }

        public Criteria andNumNotBetween(Integer value1, Integer value2) {
            addCriterion("num not between", value1, value2, "num");
            return (Criteria) this;
        }

        public Criteria andCidIsNull() {
            addCriterion("cid is null");
            return (Criteria) this;
        }

        public Criteria andCidIsNotNull() {
            addCriterion("cid is not null");
            return (Criteria) this;
        }

        public Criteria andCidEqualTo(Long value) {
            addCriterion("cid =", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidNotEqualTo(Long value) {
            addCriterion("cid <>", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidGreaterThan(Long value) {
            addCriterion("cid >", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidGreaterThanOrEqualTo(Long value) {
            addCriterion("cid >=", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidLessThan(Long value) {
            addCriterion("cid <", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidLessThanOrEqualTo(Long value) {
            addCriterion("cid <=", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidIn(List<Long> values) {
            addCriterion("cid in", values, "cid");
            return (Criteria) this;
        }

        public Criteria andCidNotIn(List<Long> values) {
            addCriterion("cid not in", values, "cid");
            return (Criteria) this;
        }

        public Criteria andCidBetween(Long value1, Long value2) {
            addCriterion("cid between", value1, value2, "cid");
            return (Criteria) this;
        }

        public Criteria andCidNotBetween(Long value1, Long value2) {
            addCriterion("cid not between", value1, value2, "cid");
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