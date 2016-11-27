package com.myway.pojo;

public class Tour {
    private Integer id;

    private String name;

    private String subname;

    private String during;

    private Integer price;

    private String remark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSubname() {
        return subname;
    }

    public void setSubname(String subname) {
        this.subname = subname == null ? null : subname.trim();
    }

    public String getDuring() {
        return during;
    }

    public void setDuring(String during) {
        this.during = during == null ? null : during.trim();
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}