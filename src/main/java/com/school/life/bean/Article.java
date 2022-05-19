package com.school.life.bean;

import java.io.Serializable;
import java.util.Date;

public class Article implements Serializable,Comparable<Article>{

    private Integer articleId;

    private Date articleTime;

    private Integer userId;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    private String articleContent;

    private Integer articleClick;

    private String articleTitle;

    private String articleImg;

    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public Date getArticleTime() {
        return articleTime;
    }

    public void setArticleTime(Date articleTime) {
        this.articleTime = articleTime;
    }

    @Override
    public String toString() {
        return "Article{" +
                "articleId=" + articleId +
                ", articleTime=" + articleTime +
                ", userId=" + userId +
                ", articleContent='" + articleContent + '\'' +
                ", articleClick=" + articleClick +
                ", articleTitle='" + articleTitle + '\'' +
                ", articleImg='" + articleImg + '\'' +
                ", user=" + user +
                '}';
    }

    public String getArticleContent() {
        return articleContent;
    }

    public void setArticleContent(String articleContent) {
        this.articleContent = articleContent == null ? null : articleContent.trim();
    }

    public Integer getArticleClick() {
        return articleClick;
    }

    public void setArticleClick(Integer articleClick) {
        this.articleClick = articleClick;
    }

    public String getArticleTitle() {
        return articleTitle;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle == null ? null : articleTitle.trim();
    }

    public String getArticleImg() {
        return articleImg;
    }

    public void setArticleImg(String articleImg) {
        this.articleImg = articleImg == null ? null : articleImg.trim();
    }

    @Override
    public int compareTo(Article o) {
        return 0;
    }
}