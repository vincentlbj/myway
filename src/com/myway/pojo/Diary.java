package com.myway.pojo;

public class Diary {
    private Integer dId;

    private Integer uId;

    private String dPicture;

    private String dContent;

    public Integer getdId() {
        return dId;
    }

    public void setdId(Integer dId) {
        this.dId = dId;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getdPicture() {
        return dPicture;
    }

    public void setdPicture(String dPicture) {
        this.dPicture = dPicture == null ? null : dPicture.trim();
    }

    public String getdContent() {
        return dContent;
    }

    public void setdContent(String dContent) {
        this.dContent = dContent == null ? null : dContent.trim();
    }
}