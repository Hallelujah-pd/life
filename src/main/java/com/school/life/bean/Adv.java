package com.school.life.bean;

import java.io.Serializable;
import java.util.Date;

public class Adv implements Serializable {
    @Override
    public String toString() {
        return "Adv{" +
                "advId=" + advId +
                ", advTime=" + advTime +
                ", advImg='" + advImg + '\'' +
                ", advContent='" + advContent + '\'' +
                ", advHead='" + advHead + '\'' +
                ", advAddtime='" + advAddtime + '\'' +
                ", advOrder='" + advOrder + '\'' +
                ", advLocation='" + advLocation + '\'' +
                ", advPagelocal='" + advPagelocal + '\'' +
                ", advClick=" + advClick +
                '}';
    }

    private Integer advId;

    private Date advTime;

    private String advImg;

    private String advContent;

    private String advHead;

    private String advAddtime;

    private String advOrder;

    private String advLocation;

    private String advPagelocal;

    private Integer advClick;

    public Integer getAdvId() {
        return advId;
    }

    public void setAdvId(Integer advId) {
        this.advId = advId;
    }

    public Date getAdvTime() {
        return advTime;
    }

    public void setAdvTime(Date advTime) {
        this.advTime = advTime;
    }

    public String getAdvImg() {
        return advImg;
    }

    public void setAdvImg(String advImg) {
        this.advImg = advImg == null ? null : advImg.trim();
    }

    public String getAdvContent() {
        return advContent;
    }

    public void setAdvContent(String advContent) {
        this.advContent = advContent == null ? null : advContent.trim();
    }

    public String getAdvHead() {
        return advHead;
    }

    public void setAdvHead(String advHead) {
        this.advHead = advHead == null ? null : advHead.trim();
    }

    public String getAdvAddtime() {
        return advAddtime;
    }

    public void setAdvAddtime(String advAddtime) {
        this.advAddtime = advAddtime == null ? null : advAddtime.trim();
    }

    public String getAdvOrder() {
        return advOrder;
    }

    public void setAdvOrder(String advOrder) {
        this.advOrder = advOrder == null ? null : advOrder.trim();
    }

    public String getAdvLocation() {
        return advLocation;
    }

    public void setAdvLocation(String advLocation) {
        this.advLocation = advLocation == null ? null : advLocation.trim();
    }

    public String getAdvPagelocal() {
        return advPagelocal;
    }

    public void setAdvPagelocal(String advPagelocal) {
        this.advPagelocal = advPagelocal == null ? null : advPagelocal.trim();
    }

    public Integer getAdvClick() {
        return advClick;
    }

    public void setAdvClick(Integer advClick) {
        this.advClick = advClick;
    }
}