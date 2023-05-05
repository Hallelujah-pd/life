package com.school.life.bean;

import java.util.ArrayList;
import java.util.List;

public class AdvSiteExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AdvSiteExample() {
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

        public Criteria andAdvSiteidIsNull() {
            addCriterion("adv_siteId is null");
            return (Criteria) this;
        }

        public Criteria andAdvSiteidIsNotNull() {
            addCriterion("adv_siteId is not null");
            return (Criteria) this;
        }

        public Criteria andAdvSiteidEqualTo(Integer value) {
            addCriterion("adv_siteId =", value, "advSiteid");
            return (Criteria) this;
        }

        public Criteria andAdvSiteidNotEqualTo(Integer value) {
            addCriterion("adv_siteId <>", value, "advSiteid");
            return (Criteria) this;
        }

        public Criteria andAdvSiteidGreaterThan(Integer value) {
            addCriterion("adv_siteId >", value, "advSiteid");
            return (Criteria) this;
        }

        public Criteria andAdvSiteidGreaterThanOrEqualTo(Integer value) {
            addCriterion("adv_siteId >=", value, "advSiteid");
            return (Criteria) this;
        }

        public Criteria andAdvSiteidLessThan(Integer value) {
            addCriterion("adv_siteId <", value, "advSiteid");
            return (Criteria) this;
        }

        public Criteria andAdvSiteidLessThanOrEqualTo(Integer value) {
            addCriterion("adv_siteId <=", value, "advSiteid");
            return (Criteria) this;
        }

        public Criteria andAdvSiteidIn(List<Integer> values) {
            addCriterion("adv_siteId in", values, "advSiteid");
            return (Criteria) this;
        }

        public Criteria andAdvSiteidNotIn(List<Integer> values) {
            addCriterion("adv_siteId not in", values, "advSiteid");
            return (Criteria) this;
        }

        public Criteria andAdvSiteidBetween(Integer value1, Integer value2) {
            addCriterion("adv_siteId between", value1, value2, "advSiteid");
            return (Criteria) this;
        }

        public Criteria andAdvSiteidNotBetween(Integer value1, Integer value2) {
            addCriterion("adv_siteId not between", value1, value2, "advSiteid");
            return (Criteria) this;
        }

        public Criteria andAdvSiteIsNull() {
            addCriterion("adv_site is null");
            return (Criteria) this;
        }

        public Criteria andAdvSiteIsNotNull() {
            addCriterion("adv_site is not null");
            return (Criteria) this;
        }

        public Criteria andAdvSiteEqualTo(String value) {
            addCriterion("adv_site =", value, "advSite");
            return (Criteria) this;
        }

        public Criteria andAdvSiteNotEqualTo(String value) {
            addCriterion("adv_site <>", value, "advSite");
            return (Criteria) this;
        }

        public Criteria andAdvSiteGreaterThan(String value) {
            addCriterion("adv_site >", value, "advSite");
            return (Criteria) this;
        }

        public Criteria andAdvSiteGreaterThanOrEqualTo(String value) {
            addCriterion("adv_site >=", value, "advSite");
            return (Criteria) this;
        }

        public Criteria andAdvSiteLessThan(String value) {
            addCriterion("adv_site <", value, "advSite");
            return (Criteria) this;
        }

        public Criteria andAdvSiteLessThanOrEqualTo(String value) {
            addCriterion("adv_site <=", value, "advSite");
            return (Criteria) this;
        }

        public Criteria andAdvSiteLike(String value) {
            addCriterion("adv_site like", value, "advSite");
            return (Criteria) this;
        }

        public Criteria andAdvSiteNotLike(String value) {
            addCriterion("adv_site not like", value, "advSite");
            return (Criteria) this;
        }

        public Criteria andAdvSiteIn(List<String> values) {
            addCriterion("adv_site in", values, "advSite");
            return (Criteria) this;
        }

        public Criteria andAdvSiteNotIn(List<String> values) {
            addCriterion("adv_site not in", values, "advSite");
            return (Criteria) this;
        }

        public Criteria andAdvSiteBetween(String value1, String value2) {
            addCriterion("adv_site between", value1, value2, "advSite");
            return (Criteria) this;
        }

        public Criteria andAdvSiteNotBetween(String value1, String value2) {
            addCriterion("adv_site not between", value1, value2, "advSite");
            return (Criteria) this;
        }

        public Criteria andAvdPagesiteIsNull() {
            addCriterion("avd_pageSite is null");
            return (Criteria) this;
        }

        public Criteria andAvdPagesiteIsNotNull() {
            addCriterion("avd_pageSite is not null");
            return (Criteria) this;
        }

        public Criteria andAvdPagesiteEqualTo(String value) {
            addCriterion("avd_pageSite =", value, "avdPagesite");
            return (Criteria) this;
        }

        public Criteria andAvdPagesiteNotEqualTo(String value) {
            addCriterion("avd_pageSite <>", value, "avdPagesite");
            return (Criteria) this;
        }

        public Criteria andAvdPagesiteGreaterThan(String value) {
            addCriterion("avd_pageSite >", value, "avdPagesite");
            return (Criteria) this;
        }

        public Criteria andAvdPagesiteGreaterThanOrEqualTo(String value) {
            addCriterion("avd_pageSite >=", value, "avdPagesite");
            return (Criteria) this;
        }

        public Criteria andAvdPagesiteLessThan(String value) {
            addCriterion("avd_pageSite <", value, "avdPagesite");
            return (Criteria) this;
        }

        public Criteria andAvdPagesiteLessThanOrEqualTo(String value) {
            addCriterion("avd_pageSite <=", value, "avdPagesite");
            return (Criteria) this;
        }

        public Criteria andAvdPagesiteLike(String value) {
            addCriterion("avd_pageSite like", value, "avdPagesite");
            return (Criteria) this;
        }

        public Criteria andAvdPagesiteNotLike(String value) {
            addCriterion("avd_pageSite not like", value, "avdPagesite");
            return (Criteria) this;
        }

        public Criteria andAvdPagesiteIn(List<String> values) {
            addCriterion("avd_pageSite in", values, "avdPagesite");
            return (Criteria) this;
        }

        public Criteria andAvdPagesiteNotIn(List<String> values) {
            addCriterion("avd_pageSite not in", values, "avdPagesite");
            return (Criteria) this;
        }

        public Criteria andAvdPagesiteBetween(String value1, String value2) {
            addCriterion("avd_pageSite between", value1, value2, "avdPagesite");
            return (Criteria) this;
        }

        public Criteria andAvdPagesiteNotBetween(String value1, String value2) {
            addCriterion("avd_pageSite not between", value1, value2, "avdPagesite");
            return (Criteria) this;
        }

        public Criteria andAdvSitestatusIsNull() {
            addCriterion("adv_siteStatus is null");
            return (Criteria) this;
        }

        public Criteria andAdvSitestatusIsNotNull() {
            addCriterion("adv_siteStatus is not null");
            return (Criteria) this;
        }

        public Criteria andAdvSitestatusEqualTo(Integer value) {
            addCriterion("adv_siteStatus =", value, "advSitestatus");
            return (Criteria) this;
        }

        public Criteria andAdvSitestatusNotEqualTo(Integer value) {
            addCriterion("adv_siteStatus <>", value, "advSitestatus");
            return (Criteria) this;
        }

        public Criteria andAdvSitestatusGreaterThan(Integer value) {
            addCriterion("adv_siteStatus >", value, "advSitestatus");
            return (Criteria) this;
        }

        public Criteria andAdvSitestatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("adv_siteStatus >=", value, "advSitestatus");
            return (Criteria) this;
        }

        public Criteria andAdvSitestatusLessThan(Integer value) {
            addCriterion("adv_siteStatus <", value, "advSitestatus");
            return (Criteria) this;
        }

        public Criteria andAdvSitestatusLessThanOrEqualTo(Integer value) {
            addCriterion("adv_siteStatus <=", value, "advSitestatus");
            return (Criteria) this;
        }

        public Criteria andAdvSitestatusIn(List<Integer> values) {
            addCriterion("adv_siteStatus in", values, "advSitestatus");
            return (Criteria) this;
        }

        public Criteria andAdvSitestatusNotIn(List<Integer> values) {
            addCriterion("adv_siteStatus not in", values, "advSitestatus");
            return (Criteria) this;
        }

        public Criteria andAdvSitestatusBetween(Integer value1, Integer value2) {
            addCriterion("adv_siteStatus between", value1, value2, "advSitestatus");
            return (Criteria) this;
        }

        public Criteria andAdvSitestatusNotBetween(Integer value1, Integer value2) {
            addCriterion("adv_siteStatus not between", value1, value2, "advSitestatus");
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