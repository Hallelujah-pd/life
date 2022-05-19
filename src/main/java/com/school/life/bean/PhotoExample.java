package com.school.life.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PhotoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PhotoExample() {
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

        public Criteria andPhotoIdIsNull() {
            addCriterion("photo_id is null");
            return (Criteria) this;
        }

        public Criteria andPhotoIdIsNotNull() {
            addCriterion("photo_id is not null");
            return (Criteria) this;
        }

        public Criteria andPhotoIdEqualTo(Integer value) {
            addCriterion("photo_id =", value, "photoId");
            return (Criteria) this;
        }

        public Criteria andPhotoIdNotEqualTo(Integer value) {
            addCriterion("photo_id <>", value, "photoId");
            return (Criteria) this;
        }

        public Criteria andPhotoIdGreaterThan(Integer value) {
            addCriterion("photo_id >", value, "photoId");
            return (Criteria) this;
        }

        public Criteria andPhotoIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("photo_id >=", value, "photoId");
            return (Criteria) this;
        }

        public Criteria andPhotoIdLessThan(Integer value) {
            addCriterion("photo_id <", value, "photoId");
            return (Criteria) this;
        }

        public Criteria andPhotoIdLessThanOrEqualTo(Integer value) {
            addCriterion("photo_id <=", value, "photoId");
            return (Criteria) this;
        }

        public Criteria andPhotoIdIn(List<Integer> values) {
            addCriterion("photo_id in", values, "photoId");
            return (Criteria) this;
        }

        public Criteria andPhotoIdNotIn(List<Integer> values) {
            addCriterion("photo_id not in", values, "photoId");
            return (Criteria) this;
        }

        public Criteria andPhotoIdBetween(Integer value1, Integer value2) {
            addCriterion("photo_id between", value1, value2, "photoId");
            return (Criteria) this;
        }

        public Criteria andPhotoIdNotBetween(Integer value1, Integer value2) {
            addCriterion("photo_id not between", value1, value2, "photoId");
            return (Criteria) this;
        }

        public Criteria andPhotoImgIsNull() {
            addCriterion("photo_img is null");
            return (Criteria) this;
        }

        public Criteria andPhotoImgIsNotNull() {
            addCriterion("photo_img is not null");
            return (Criteria) this;
        }

        public Criteria andPhotoImgEqualTo(String value) {
            addCriterion("photo_img =", value, "photoImg");
            return (Criteria) this;
        }

        public Criteria andPhotoImgNotEqualTo(String value) {
            addCriterion("photo_img <>", value, "photoImg");
            return (Criteria) this;
        }

        public Criteria andPhotoImgGreaterThan(String value) {
            addCriterion("photo_img >", value, "photoImg");
            return (Criteria) this;
        }

        public Criteria andPhotoImgGreaterThanOrEqualTo(String value) {
            addCriterion("photo_img >=", value, "photoImg");
            return (Criteria) this;
        }

        public Criteria andPhotoImgLessThan(String value) {
            addCriterion("photo_img <", value, "photoImg");
            return (Criteria) this;
        }

        public Criteria andPhotoImgLessThanOrEqualTo(String value) {
            addCriterion("photo_img <=", value, "photoImg");
            return (Criteria) this;
        }

        public Criteria andPhotoImgLike(String value) {
            addCriterion("photo_img like", value, "photoImg");
            return (Criteria) this;
        }

        public Criteria andPhotoImgNotLike(String value) {
            addCriterion("photo_img not like", value, "photoImg");
            return (Criteria) this;
        }

        public Criteria andPhotoImgIn(List<String> values) {
            addCriterion("photo_img in", values, "photoImg");
            return (Criteria) this;
        }

        public Criteria andPhotoImgNotIn(List<String> values) {
            addCriterion("photo_img not in", values, "photoImg");
            return (Criteria) this;
        }

        public Criteria andPhotoImgBetween(String value1, String value2) {
            addCriterion("photo_img between", value1, value2, "photoImg");
            return (Criteria) this;
        }

        public Criteria andPhotoImgNotBetween(String value1, String value2) {
            addCriterion("photo_img not between", value1, value2, "photoImg");
            return (Criteria) this;
        }

        public Criteria andPhotoTitleIsNull() {
            addCriterion("photo_title is null");
            return (Criteria) this;
        }

        public Criteria andPhotoTitleIsNotNull() {
            addCriterion("photo_title is not null");
            return (Criteria) this;
        }

        public Criteria andPhotoTitleEqualTo(String value) {
            addCriterion("photo_title =", value, "photoTitle");
            return (Criteria) this;
        }

        public Criteria andPhotoTitleNotEqualTo(String value) {
            addCriterion("photo_title <>", value, "photoTitle");
            return (Criteria) this;
        }

        public Criteria andPhotoTitleGreaterThan(String value) {
            addCriterion("photo_title >", value, "photoTitle");
            return (Criteria) this;
        }

        public Criteria andPhotoTitleGreaterThanOrEqualTo(String value) {
            addCriterion("photo_title >=", value, "photoTitle");
            return (Criteria) this;
        }

        public Criteria andPhotoTitleLessThan(String value) {
            addCriterion("photo_title <", value, "photoTitle");
            return (Criteria) this;
        }

        public Criteria andPhotoTitleLessThanOrEqualTo(String value) {
            addCriterion("photo_title <=", value, "photoTitle");
            return (Criteria) this;
        }

        public Criteria andPhotoTitleLike(String value) {
            addCriterion("photo_title like", value, "photoTitle");
            return (Criteria) this;
        }

        public Criteria andPhotoTitleNotLike(String value) {
            addCriterion("photo_title not like", value, "photoTitle");
            return (Criteria) this;
        }

        public Criteria andPhotoTitleIn(List<String> values) {
            addCriterion("photo_title in", values, "photoTitle");
            return (Criteria) this;
        }

        public Criteria andPhotoTitleNotIn(List<String> values) {
            addCriterion("photo_title not in", values, "photoTitle");
            return (Criteria) this;
        }

        public Criteria andPhotoTitleBetween(String value1, String value2) {
            addCriterion("photo_title between", value1, value2, "photoTitle");
            return (Criteria) this;
        }

        public Criteria andPhotoTitleNotBetween(String value1, String value2) {
            addCriterion("photo_title not between", value1, value2, "photoTitle");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andPhotoTimeIsNull() {
            addCriterion("photo_time is null");
            return (Criteria) this;
        }

        public Criteria andPhotoTimeIsNotNull() {
            addCriterion("photo_time is not null");
            return (Criteria) this;
        }

        public Criteria andPhotoTimeEqualTo(Date value) {
            addCriterion("photo_time =", value, "photoTime");
            return (Criteria) this;
        }

        public Criteria andPhotoTimeNotEqualTo(Date value) {
            addCriterion("photo_time <>", value, "photoTime");
            return (Criteria) this;
        }

        public Criteria andPhotoTimeGreaterThan(Date value) {
            addCriterion("photo_time >", value, "photoTime");
            return (Criteria) this;
        }

        public Criteria andPhotoTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("photo_time >=", value, "photoTime");
            return (Criteria) this;
        }

        public Criteria andPhotoTimeLessThan(Date value) {
            addCriterion("photo_time <", value, "photoTime");
            return (Criteria) this;
        }

        public Criteria andPhotoTimeLessThanOrEqualTo(Date value) {
            addCriterion("photo_time <=", value, "photoTime");
            return (Criteria) this;
        }

        public Criteria andPhotoTimeIn(List<Date> values) {
            addCriterion("photo_time in", values, "photoTime");
            return (Criteria) this;
        }

        public Criteria andPhotoTimeNotIn(List<Date> values) {
            addCriterion("photo_time not in", values, "photoTime");
            return (Criteria) this;
        }

        public Criteria andPhotoTimeBetween(Date value1, Date value2) {
            addCriterion("photo_time between", value1, value2, "photoTime");
            return (Criteria) this;
        }

        public Criteria andPhotoTimeNotBetween(Date value1, Date value2) {
            addCriterion("photo_time not between", value1, value2, "photoTime");
            return (Criteria) this;
        }

        public Criteria andPhotoClickIsNull() {
            addCriterion("photo_click is null");
            return (Criteria) this;
        }

        public Criteria andPhotoClickIsNotNull() {
            addCriterion("photo_click is not null");
            return (Criteria) this;
        }

        public Criteria andPhotoClickEqualTo(Integer value) {
            addCriterion("photo_click =", value, "photoClick");
            return (Criteria) this;
        }

        public Criteria andPhotoClickNotEqualTo(Integer value) {
            addCriterion("photo_click <>", value, "photoClick");
            return (Criteria) this;
        }

        public Criteria andPhotoClickGreaterThan(Integer value) {
            addCriterion("photo_click >", value, "photoClick");
            return (Criteria) this;
        }

        public Criteria andPhotoClickGreaterThanOrEqualTo(Integer value) {
            addCriterion("photo_click >=", value, "photoClick");
            return (Criteria) this;
        }

        public Criteria andPhotoClickLessThan(Integer value) {
            addCriterion("photo_click <", value, "photoClick");
            return (Criteria) this;
        }

        public Criteria andPhotoClickLessThanOrEqualTo(Integer value) {
            addCriterion("photo_click <=", value, "photoClick");
            return (Criteria) this;
        }

        public Criteria andPhotoClickIn(List<Integer> values) {
            addCriterion("photo_click in", values, "photoClick");
            return (Criteria) this;
        }

        public Criteria andPhotoClickNotIn(List<Integer> values) {
            addCriterion("photo_click not in", values, "photoClick");
            return (Criteria) this;
        }

        public Criteria andPhotoClickBetween(Integer value1, Integer value2) {
            addCriterion("photo_click between", value1, value2, "photoClick");
            return (Criteria) this;
        }

        public Criteria andPhotoClickNotBetween(Integer value1, Integer value2) {
            addCriterion("photo_click not between", value1, value2, "photoClick");
            return (Criteria) this;
        }

        public Criteria andPhotoContentIsNull() {
            addCriterion("photo_content is null");
            return (Criteria) this;
        }

        public Criteria andPhotoContentIsNotNull() {
            addCriterion("photo_content is not null");
            return (Criteria) this;
        }

        public Criteria andPhotoContentEqualTo(String value) {
            addCriterion("photo_content =", value, "photoContent");
            return (Criteria) this;
        }

        public Criteria andPhotoContentNotEqualTo(String value) {
            addCriterion("photo_content <>", value, "photoContent");
            return (Criteria) this;
        }

        public Criteria andPhotoContentGreaterThan(String value) {
            addCriterion("photo_content >", value, "photoContent");
            return (Criteria) this;
        }

        public Criteria andPhotoContentGreaterThanOrEqualTo(String value) {
            addCriterion("photo_content >=", value, "photoContent");
            return (Criteria) this;
        }

        public Criteria andPhotoContentLessThan(String value) {
            addCriterion("photo_content <", value, "photoContent");
            return (Criteria) this;
        }

        public Criteria andPhotoContentLessThanOrEqualTo(String value) {
            addCriterion("photo_content <=", value, "photoContent");
            return (Criteria) this;
        }

        public Criteria andPhotoContentLike(String value) {
            addCriterion("photo_content like", value, "photoContent");
            return (Criteria) this;
        }

        public Criteria andPhotoContentNotLike(String value) {
            addCriterion("photo_content not like", value, "photoContent");
            return (Criteria) this;
        }

        public Criteria andPhotoContentIn(List<String> values) {
            addCriterion("photo_content in", values, "photoContent");
            return (Criteria) this;
        }

        public Criteria andPhotoContentNotIn(List<String> values) {
            addCriterion("photo_content not in", values, "photoContent");
            return (Criteria) this;
        }

        public Criteria andPhotoContentBetween(String value1, String value2) {
            addCriterion("photo_content between", value1, value2, "photoContent");
            return (Criteria) this;
        }

        public Criteria andPhotoContentNotBetween(String value1, String value2) {
            addCriterion("photo_content not between", value1, value2, "photoContent");
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