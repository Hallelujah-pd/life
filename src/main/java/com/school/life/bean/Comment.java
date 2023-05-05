package com.school.life.bean;

import java.util.Date;
import java.util.List;

public class Comment {
    @Override
    public String toString() {
        return "Comment{" +
                "user=" + user +
                ", commentId=" + commentId +
                ", commentTime=" + commentTime +
                ", commentContent='" + commentContent + '\'' +
                ", userId=" + userId +
                ", articleId=" + articleId +
                ", replyId=" + replyId +
                '}';
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    private User user;

    private Integer commentId;

    private Date commentTime;

    private String commentContent;

    private Integer userId;

    private Integer articleId;

    private Integer replyId;

    private List<Comment> replies;

    public List<Comment> getReplies() {
        return replies;
    }

    public void setReplies(List<Comment> replies) {
        this.replies = replies;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Date getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(Date commentTime) {
        this.commentTime = commentTime;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent == null ? null : commentContent.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public Integer getReplyId() {
        return replyId;
    }

    public void setReplyId(Integer replyId) {
        this.replyId = replyId;
    }
}