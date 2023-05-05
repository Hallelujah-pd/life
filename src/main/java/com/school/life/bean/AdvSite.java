package com.school.life.bean;

public class AdvSite {

    @Override
    public String toString() {
        return "AdvSite{" +
                "advSiteid=" + advSiteid +
                ", advSite='" + advSite + '\'' +
                ", avdPagesite='" + avdPagesite + '\'' +
                ", advSitestatus=" + advSitestatus +
                '}';
    }

    private Integer advSiteid;

    private String advSite;

    private String avdPagesite;

    private Integer advSitestatus;

    public Integer getAdvSiteid() {
        return advSiteid;
    }

    public void setAdvSiteid(Integer advSiteid) {
        this.advSiteid = advSiteid;
    }

    public String getAdvSite() {
        return advSite;
    }

    public void setAdvSite(String advSite) {
        this.advSite = advSite == null ? null : advSite.trim();
    }

    public String getAvdPagesite() {
        return avdPagesite;
    }

    public void setAvdPagesite(String avdPagesite) {
        this.avdPagesite = avdPagesite == null ? null : avdPagesite.trim();
    }

    public Integer getAdvSitestatus() {
        return advSitestatus;
    }

    public void setAdvSitestatus(Integer advSitestatus) {
        this.advSitestatus = advSitestatus;
    }
}