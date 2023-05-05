package com.school.life.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class AdvExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AdvExample() {
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

        public Criteria andAdvIdIsNull() {
            addCriterion("adv_id is null");
            return (Criteria) this;
        }

        public Criteria andAdvIdIsNotNull() {
            addCriterion("adv_id is not null");
            return (Criteria) this;
        }

        public Criteria andAdvIdEqualTo(Integer value) {
            addCriterion("adv_id =", value, "advId");
            return (Criteria) this;
        }

        public Criteria andAdvIdNotEqualTo(Integer value) {
            addCriterion("adv_id <>", value, "advId");
            return (Criteria) this;
        }

        public Criteria andAdvIdGreaterThan(Integer value) {
            addCriterion("adv_id >", value, "advId");
            return (Criteria) this;
        }

        public Criteria andAdvIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("adv_id >=", value, "advId");
            return (Criteria) this;
        }

        public Criteria andAdvIdLessThan(Integer value) {
            addCriterion("adv_id <", value, "advId");
            return (Criteria) this;
        }

        public Criteria andAdvIdLessThanOrEqualTo(Integer value) {
            addCriterion("adv_id <=", value, "advId");
            return (Criteria) this;
        }

        public Criteria andAdvIdIn(List<Integer> values) {
            addCriterion("adv_id in", values, "advId");
            return (Criteria) this;
        }

        public Criteria andAdvIdNotIn(List<Integer> values) {
            addCriterion("adv_id not in", values, "advId");
            return (Criteria) this;
        }

        public Criteria andAdvIdBetween(Integer value1, Integer value2) {
            addCriterion("adv_id between", value1, value2, "advId");
            return (Criteria) this;
        }

        public Criteria andAdvIdNotBetween(Integer value1, Integer value2) {
            addCriterion("adv_id not between", value1, value2, "advId");
            return (Criteria) this;
        }

        public Criteria andAdvTimeIsNull() {
            addCriterion("adv_time is null");
            return (Criteria) this;
        }

        public Criteria andAdvTimeIsNotNull() {
            addCriterion("adv_time is not null");
            return (Criteria) this;
        }

        public Criteria andAdvTimeEqualTo(Date value) {
            addCriterion("adv_time =", value, "advTime");
            return (Criteria) this;
        }

        public Criteria andAdvTimeNotEqualTo(Date value) {
            addCriterion("adv_time <>", value, "advTime");
            return (Criteria) this;
        }

        public Criteria andAdvTimeGreaterThan(Date value) {
            addCriterion("adv_time >", value, "advTime");
            return (Criteria) this;
        }

        public Criteria andAdvTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("adv_time >=", value, "advTime");
            return (Criteria) this;
        }

        public Criteria andAdvTimeLessThan(Date value) {
            addCriterion("adv_time <", value, "advTime");
            return (Criteria) this;
        }

        public Criteria andAdvTimeLessThanOrEqualTo(Date value) {
            addCriterion("adv_time <=", value, "advTime");
            return (Criteria) this;
        }

        public Criteria andAdvTimeIn(List<Date> values) {
            addCriterion("adv_time in", values, "advTime");
            return (Criteria) this;
        }

        public Criteria andAdvTimeNotIn(List<Date> values) {
            addCriterion("adv_time not in", values, "advTime");
            return (Criteria) this;
        }

        public Criteria andAdvTimeBetween(Date value1, Date value2) {
            addCriterion("adv_time between", value1, value2, "advTime");
            return (Criteria) this;
        }

        public Criteria andAdvTimeNotBetween(Date value1, Date value2) {
            addCriterion("adv_time not between", value1, value2, "advTime");
            return (Criteria) this;
        }

        public Criteria andAdvImgIsNull() {
            addCriterion("adv_img is null");
            return (Criteria) this;
        }

        public Criteria andAdvImgIsNotNull() {
            addCriterion("adv_img is not null");
            return (Criteria) this;
        }

        public Criteria andAdvImgEqualTo(String value) {
            addCriterion("adv_img =", value, "advImg");
            return (Criteria) this;
        }

        public Criteria andAdvImgNotEqualTo(String value) {
            addCriterion("adv_img <>", value, "advImg");
            return (Criteria) this;
        }

        public Criteria andAdvImgGreaterThan(String value) {
            addCriterion("adv_img >", value, "advImg");
            return (Criteria) this;
        }

        public Criteria andAdvImgGreaterThanOrEqualTo(String value) {
            addCriterion("adv_img >=", value, "advImg");
            return (Criteria) this;
        }

        public Criteria andAdvImgLessThan(String value) {
            addCriterion("adv_img <", value, "advImg");
            return (Criteria) this;
        }

        public Criteria andAdvImgLessThanOrEqualTo(String value) {
            addCriterion("adv_img <=", value, "advImg");
            return (Criteria) this;
        }

        public Criteria andAdvImgLike(String value) {
            addCriterion("adv_img like", value, "advImg");
            return (Criteria) this;
        }

        public Criteria andAdvImgNotLike(String value) {
            addCriterion("adv_img not like", value, "advImg");
            return (Criteria) this;
        }

        public Criteria andAdvImgIn(List<String> values) {
            addCriterion("adv_img in", values, "advImg");
            return (Criteria) this;
        }

        public Criteria andAdvImgNotIn(List<String> values) {
            addCriterion("adv_img not in", values, "advImg");
            return (Criteria) this;
        }

        public Criteria andAdvImgBetween(String value1, String value2) {
            addCriterion("adv_img between", value1, value2, "advImg");
            return (Criteria) this;
        }

        public Criteria andAdvImgNotBetween(String value1, String value2) {
            addCriterion("adv_img not between", value1, value2, "advImg");
            return (Criteria) this;
        }

        public Criteria andAdvContentIsNull() {
            addCriterion("adv_content is null");
            return (Criteria) this;
        }

        public Criteria andAdvContentIsNotNull() {
            addCriterion("adv_content is not null");
            return (Criteria) this;
        }

        public Criteria andAdvContentEqualTo(String value) {
            addCriterion("adv_content =", value, "advContent");
            return (Criteria) this;
        }

        public Criteria andAdvContentNotEqualTo(String value) {
            addCriterion("adv_content <>", value, "advContent");
            return (Criteria) this;
        }

        public Criteria andAdvContentGreaterThan(String value) {
            addCriterion("adv_content >", value, "advContent");
            return (Criteria) this;
        }

        public Criteria andAdvContentGreaterThanOrEqualTo(String value) {
            addCriterion("adv_content >=", value, "advContent");
            return (Criteria) this;
        }

        public Criteria andAdvContentLessThan(String value) {
            addCriterion("adv_content <", value, "advContent");
            return (Criteria) this;
        }

        public Criteria andAdvContentLessThanOrEqualTo(String value) {
            addCriterion("adv_content <=", value, "advContent");
            return (Criteria) this;
        }

        public Criteria andAdvContentLike(String value) {
            addCriterion("adv_content like", value, "advContent");
            return (Criteria) this;
        }

        public Criteria andAdvContentNotLike(String value) {
            addCriterion("adv_content not like", value, "advContent");
            return (Criteria) this;
        }

        public Criteria andAdvContentIn(List<String> values) {
            addCriterion("adv_content in", values, "advContent");
            return (Criteria) this;
        }

        public Criteria andAdvContentNotIn(List<String> values) {
            addCriterion("adv_content not in", values, "advContent");
            return (Criteria) this;
        }

        public Criteria andAdvContentBetween(String value1, String value2) {
            addCriterion("adv_content between", value1, value2, "advContent");
            return (Criteria) this;
        }

        public Criteria andAdvContentNotBetween(String value1, String value2) {
            addCriterion("adv_content not between", value1, value2, "advContent");
            return (Criteria) this;
        }

        public Criteria andAdvHeadIsNull() {
            addCriterion("adv_head is null");
            return (Criteria) this;
        }

        public Criteria andAdvHeadIsNotNull() {
            addCriterion("adv_head is not null");
            return (Criteria) this;
        }

        public Criteria andAdvHeadEqualTo(String value) {
            addCriterion("adv_head =", value, "advHead");
            return (Criteria) this;
        }

        public Criteria andAdvHeadNotEqualTo(String value) {
            addCriterion("adv_head <>", value, "advHead");
            return (Criteria) this;
        }

        public Criteria andAdvHeadGreaterThan(String value) {
            addCriterion("adv_head >", value, "advHead");
            return (Criteria) this;
        }

        public Criteria andAdvHeadGreaterThanOrEqualTo(String value) {
            addCriterion("adv_head >=", value, "advHead");
            return (Criteria) this;
        }

        public Criteria andAdvHeadLessThan(String value) {
            addCriterion("adv_head <", value, "advHead");
            return (Criteria) this;
        }

        public Criteria andAdvHeadLessThanOrEqualTo(String value) {
            addCriterion("adv_head <=", value, "advHead");
            return (Criteria) this;
        }

        public Criteria andAdvHeadLike(String value) {
            addCriterion("adv_head like", value, "advHead");
            return (Criteria) this;
        }

        public Criteria andAdvHeadNotLike(String value) {
            addCriterion("adv_head not like", value, "advHead");
            return (Criteria) this;
        }

        public Criteria andAdvHeadIn(List<String> values) {
            addCriterion("adv_head in", values, "advHead");
            return (Criteria) this;
        }

        public Criteria andAdvHeadNotIn(List<String> values) {
            addCriterion("adv_head not in", values, "advHead");
            return (Criteria) this;
        }

        public Criteria andAdvHeadBetween(String value1, String value2) {
            addCriterion("adv_head between", value1, value2, "advHead");
            return (Criteria) this;
        }

        public Criteria andAdvHeadNotBetween(String value1, String value2) {
            addCriterion("adv_head not between", value1, value2, "advHead");
            return (Criteria) this;
        }

        public Criteria andAdvAddtimeIsNull() {
            addCriterion("adv_addtime is null");
            return (Criteria) this;
        }

        public Criteria andAdvAddtimeIsNotNull() {
            addCriterion("adv_addtime is not null");
            return (Criteria) this;
        }

        public Criteria andAdvAddtimeEqualTo(String value) {
            addCriterion("adv_addtime =", value, "advAddtime");
            return (Criteria) this;
        }

        public Criteria andAdvAddtimeNotEqualTo(String value) {
            addCriterion("adv_addtime <>", value, "advAddtime");
            return (Criteria) this;
        }

        public Criteria andAdvAddtimeGreaterThan(String value) {
            addCriterion("adv_addtime >", value, "advAddtime");
            return (Criteria) this;
        }

        public Criteria andAdvAddtimeGreaterThanOrEqualTo(String value) {
            addCriterion("adv_addtime >=", value, "advAddtime");
            return (Criteria) this;
        }

        public Criteria andAdvAddtimeLessThan(String value) {
            addCriterion("adv_addtime <", value, "advAddtime");
            return (Criteria) this;
        }

        public Criteria andAdvAddtimeLessThanOrEqualTo(String value) {
            addCriterion("adv_addtime <=", value, "advAddtime");
            return (Criteria) this;
        }

        public Criteria andAdvAddtimeLike(String value) {
            addCriterion("adv_addtime like", value, "advAddtime");
            return (Criteria) this;
        }

        public Criteria andAdvAddtimeNotLike(String value) {
            addCriterion("adv_addtime not like", value, "advAddtime");
            return (Criteria) this;
        }

        public Criteria andAdvAddtimeIn(List<String> values) {
            addCriterion("adv_addtime in", values, "advAddtime");
            return (Criteria) this;
        }

        public Criteria andAdvAddtimeNotIn(List<String> values) {
            addCriterion("adv_addtime not in", values, "advAddtime");
            return (Criteria) this;
        }

        public Criteria andAdvAddtimeBetween(String value1, String value2) {
            addCriterion("adv_addtime between", value1, value2, "advAddtime");
            return (Criteria) this;
        }

        public Criteria andAdvAddtimeNotBetween(String value1, String value2) {
            addCriterion("adv_addtime not between", value1, value2, "advAddtime");
            return (Criteria) this;
        }

        public Criteria andAdvOrderIsNull() {
            addCriterion("adv_order is null");
            return (Criteria) this;
        }

        public Criteria andAdvOrderIsNotNull() {
            addCriterion("adv_order is not null");
            return (Criteria) this;
        }

        public Criteria andAdvOrderEqualTo(String value) {
            addCriterion("adv_order =", value, "advOrder");
            return (Criteria) this;
        }

        public Criteria andAdvOrderNotEqualTo(String value) {
            addCriterion("adv_order <>", value, "advOrder");
            return (Criteria) this;
        }

        public Criteria andAdvOrderGreaterThan(String value) {
            addCriterion("adv_order >", value, "advOrder");
            return (Criteria) this;
        }

        public Criteria andAdvOrderGreaterThanOrEqualTo(String value) {
            addCriterion("adv_order >=", value, "advOrder");
            return (Criteria) this;
        }

        public Criteria andAdvOrderLessThan(String value) {
            addCriterion("adv_order <", value, "advOrder");
            return (Criteria) this;
        }

        public Criteria andAdvOrderLessThanOrEqualTo(String value) {
            addCriterion("adv_order <=", value, "advOrder");
            return (Criteria) this;
        }

        public Criteria andAdvOrderLike(String value) {
            addCriterion("adv_order like", value, "advOrder");
            return (Criteria) this;
        }

        public Criteria andAdvOrderNotLike(String value) {
            addCriterion("adv_order not like", value, "advOrder");
            return (Criteria) this;
        }

        public Criteria andAdvOrderIn(List<String> values) {
            addCriterion("adv_order in", values, "advOrder");
            return (Criteria) this;
        }

        public Criteria andAdvOrderNotIn(List<String> values) {
            addCriterion("adv_order not in", values, "advOrder");
            return (Criteria) this;
        }

        public Criteria andAdvOrderBetween(String value1, String value2) {
            addCriterion("adv_order between", value1, value2, "advOrder");
            return (Criteria) this;
        }

        public Criteria andAdvOrderNotBetween(String value1, String value2) {
            addCriterion("adv_order not between", value1, value2, "advOrder");
            return (Criteria) this;
        }

        public Criteria andAdvLocationIsNull() {
            addCriterion("adv_location is null");
            return (Criteria) this;
        }

        public Criteria andAdvLocationIsNotNull() {
            addCriterion("adv_location is not null");
            return (Criteria) this;
        }

        public Criteria andAdvLocationEqualTo(String value) {
            addCriterion("adv_location =", value, "advLocation");
            return (Criteria) this;
        }

        public Criteria andAdvLocationNotEqualTo(String value) {
            addCriterion("adv_location <>", value, "advLocation");
            return (Criteria) this;
        }

        public Criteria andAdvLocationGreaterThan(String value) {
            addCriterion("adv_location >", value, "advLocation");
            return (Criteria) this;
        }

        public Criteria andAdvLocationGreaterThanOrEqualTo(String value) {
            addCriterion("adv_location >=", value, "advLocation");
            return (Criteria) this;
        }

        public Criteria andAdvLocationLessThan(String value) {
            addCriterion("adv_location <", value, "advLocation");
            return (Criteria) this;
        }

        public Criteria andAdvLocationLessThanOrEqualTo(String value) {
            addCriterion("adv_location <=", value, "advLocation");
            return (Criteria) this;
        }

        public Criteria andAdvLocationLike(String value) {
            addCriterion("adv_location like", value, "advLocation");
            return (Criteria) this;
        }

        public Criteria andAdvLocationNotLike(String value) {
            addCriterion("adv_location not like", value, "advLocation");
            return (Criteria) this;
        }

        public Criteria andAdvLocationIn(List<String> values) {
            addCriterion("adv_location in", values, "advLocation");
            return (Criteria) this;
        }

        public Criteria andAdvLocationNotIn(List<String> values) {
            addCriterion("adv_location not in", values, "advLocation");
            return (Criteria) this;
        }

        public Criteria andAdvLocationBetween(String value1, String value2) {
            addCriterion("adv_location between", value1, value2, "advLocation");
            return (Criteria) this;
        }

        public Criteria andAdvLocationNotBetween(String value1, String value2) {
            addCriterion("adv_location not between", value1, value2, "advLocation");
            return (Criteria) this;
        }

        public Criteria andAdvPagelocalIsNull() {
            addCriterion("adv_pageLocal is null");
            return (Criteria) this;
        }

        public Criteria andAdvPagelocalIsNotNull() {
            addCriterion("adv_pageLocal is not null");
            return (Criteria) this;
        }

        public Criteria andAdvPagelocalEqualTo(String value) {
            addCriterion("adv_pageLocal =", value, "advPagelocal");
            return (Criteria) this;
        }

        public Criteria andAdvPagelocalNotEqualTo(String value) {
            addCriterion("adv_pageLocal <>", value, "advPagelocal");
            return (Criteria) this;
        }

        public Criteria andAdvPagelocalGreaterThan(String value) {
            addCriterion("adv_pageLocal >", value, "advPagelocal");
            return (Criteria) this;
        }

        public Criteria andAdvPagelocalGreaterThanOrEqualTo(String value) {
            addCriterion("adv_pageLocal >=", value, "advPagelocal");
            return (Criteria) this;
        }

        public Criteria andAdvPagelocalLessThan(String value) {
            addCriterion("adv_pageLocal <", value, "advPagelocal");
            return (Criteria) this;
        }

        public Criteria andAdvPagelocalLessThanOrEqualTo(String value) {
            addCriterion("adv_pageLocal <=", value, "advPagelocal");
            return (Criteria) this;
        }

        public Criteria andAdvPagelocalLike(String value) {
            addCriterion("adv_pageLocal like", value, "advPagelocal");
            return (Criteria) this;
        }

        public Criteria andAdvPagelocalNotLike(String value) {
            addCriterion("adv_pageLocal not like", value, "advPagelocal");
            return (Criteria) this;
        }

        public Criteria andAdvPagelocalIn(List<String> values) {
            addCriterion("adv_pageLocal in", values, "advPagelocal");
            return (Criteria) this;
        }

        public Criteria andAdvPagelocalNotIn(List<String> values) {
            addCriterion("adv_pageLocal not in", values, "advPagelocal");
            return (Criteria) this;
        }

        public Criteria andAdvPagelocalBetween(String value1, String value2) {
            addCriterion("adv_pageLocal between", value1, value2, "advPagelocal");
            return (Criteria) this;
        }

        public Criteria andAdvPagelocalNotBetween(String value1, String value2) {
            addCriterion("adv_pageLocal not between", value1, value2, "advPagelocal");
            return (Criteria) this;
        }

        public Criteria andAdvClickIsNull() {
            addCriterion("adv_click is null");
            return (Criteria) this;
        }

        public Criteria andAdvClickIsNotNull() {
            addCriterion("adv_click is not null");
            return (Criteria) this;
        }

        public Criteria andAdvClickEqualTo(Integer value) {
            addCriterion("adv_click =", value, "advClick");
            return (Criteria) this;
        }

        public Criteria andAdvClickNotEqualTo(Integer value) {
            addCriterion("adv_click <>", value, "advClick");
            return (Criteria) this;
        }

        public Criteria andAdvClickGreaterThan(Integer value) {
            addCriterion("adv_click >", value, "advClick");
            return (Criteria) this;
        }

        public Criteria andAdvClickGreaterThanOrEqualTo(Integer value) {
            addCriterion("adv_click >=", value, "advClick");
            return (Criteria) this;
        }

        public Criteria andAdvClickLessThan(Integer value) {
            addCriterion("adv_click <", value, "advClick");
            return (Criteria) this;
        }

        public Criteria andAdvClickLessThanOrEqualTo(Integer value) {
            addCriterion("adv_click <=", value, "advClick");
            return (Criteria) this;
        }

        public Criteria andAdvClickIn(List<Integer> values) {
            addCriterion("adv_click in", values, "advClick");
            return (Criteria) this;
        }

        public Criteria andAdvClickNotIn(List<Integer> values) {
            addCriterion("adv_click not in", values, "advClick");
            return (Criteria) this;
        }

        public Criteria andAdvClickBetween(Integer value1, Integer value2) {
            addCriterion("adv_click between", value1, value2, "advClick");
            return (Criteria) this;
        }

        public Criteria andAdvClickNotBetween(Integer value1, Integer value2) {
            addCriterion("adv_click not between", value1, value2, "advClick");
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