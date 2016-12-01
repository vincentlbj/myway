package com.myway.pojo;

import java.util.Date;

public class Order {
    private Integer oId;

    private String uId;

    private String people;

    private String oType;

    private Integer pId;

    private Date oDate;

    public Integer getoId() {
        return oId;
    }

    public void setoId(Integer oId) {
        this.oId = oId;
    }

    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId == null ? null : uId.trim();
    }

    public String getPeople() {
        return people;
    }

    public void setPeople(String people) {
        this.people = people == null ? null : people.trim();
    }

    public String getoType() {
        return oType;
    }

    public void setoType(String oType) {
        this.oType = oType == null ? null : oType.trim();
    }

    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public Date getoDate() {
        return oDate;
    }

    public void setoDate(Date oDate) {
        this.oDate = oDate;
    }
}