package com.myway.pojo;

import java.util.Date;

public class TourPrice {
    private Integer id;

    private Integer tId;

    private Date go;

    private Date back;

    private Integer ramain;

    private Integer price;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public Date getGo() {
        return go;
    }

    public void setGo(Date go) {
        this.go = go;
    }

    public Date getBack() {
        return back;
    }

    public void setBack(Date back) {
        this.back = back;
    }

    public Integer getRamain() {
        return ramain;
    }

    public void setRamain(Integer ramain) {
        this.ramain = ramain;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }
}