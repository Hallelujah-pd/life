package com.school.life.bean;

import java.util.Date;

public class Photo {
    @Override
    public String toString() {
        return "Photo{" +
                "photoId=" + photoId +
                ", photoImg='" + photoImg + '\'' +
                ", photoTitle='" + photoTitle + '\'' +
                ", userId=" + userId +
                ", photoTime=" + photoTime +
                ", photoClick=" + photoClick +
                ", photoContent='" + photoContent + '\'' +
                ", user=" + user +
                '}';
    }

    private Integer photoId;

    private String photoImg;

    private String photoTitle;

    private Integer userId;

    private Date photoTime;

    private Integer photoClick;

    private String photoContent;

    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getPhotoId() {
        return photoId;
    }

    public void setPhotoId(Integer photoId) {
        this.photoId = photoId;
    }

    public String getPhotoImg() {
        return photoImg;
    }

    public void setPhotoImg(String photoImg) {
        this.photoImg = photoImg == null ? null : photoImg.trim();
    }

    public String getPhotoTitle() {
        return photoTitle;
    }

    public void setPhotoTitle(String photoTitle) {
        this.photoTitle = photoTitle == null ? null : photoTitle.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getPhotoTime() {
        return photoTime;
    }

    public void setPhotoTime(Date photoTime) {
        this.photoTime = photoTime;
    }

    public Integer getPhotoClick() {
        return photoClick;
    }

    public void setPhotoClick(Integer photoClick) {
        this.photoClick = photoClick;
    }

    public String getPhotoContent() {
        return photoContent;
    }

    public void setPhotoContent(String photoContent) {
        this.photoContent = photoContent == null ? null : photoContent.trim();
    }
}