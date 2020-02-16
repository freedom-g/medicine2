package com.medince.pojo;

public class Limit {
    private Long lid;

    private String limitName;

    private Long limitType;

    private Long limitParent;

    private String limitPath;

    private String remake;

    public Long getLid() {
        return lid;
    }

    public void setLid(Long lid) {
        this.lid = lid;
    }

    public String getLimitName() {
        return limitName;
    }

    public void setLimitName(String limitName) {
        this.limitName = limitName == null ? null : limitName.trim();
    }

    public Long getLimitType() {
        return limitType;
    }

    public void setLimitType(Long limitType) {
        this.limitType = limitType;
    }

    public Long getLimitParent() {
        return limitParent;
    }

    public void setLimitParent(Long limitParent) {
        this.limitParent = limitParent;
    }

    public String getLimitPath() {
        return limitPath;
    }

    public void setLimitPath(String limitPath) {
        this.limitPath = limitPath == null ? null : limitPath.trim();
    }

    public String getRemake() {
        return remake;
    }

    public void setRemake(String remake) {
        this.remake = remake == null ? null : remake.trim();
    }
}