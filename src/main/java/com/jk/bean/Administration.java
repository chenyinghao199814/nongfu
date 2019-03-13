package com.jk.bean;

public class Administration {
    private Integer id;

    private String adName;

    private String adTypeId;

    private String adStatus;

    private String createDate;

    private Integer price;

    private Integer info;

    public Integer getInfo() {
        return info;
    }

    public void setInfo(Integer info) {
        this.info = info;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAdName() {
        return adName;
    }

    public void setAdName(String adName) {
        this.adName = adName;
    }

    public String getAdTypeId() {
        return adTypeId;
    }

    public void setAdTypeId(String adTypeId) {
        this.adTypeId = adTypeId;
    }

    public String getAdStatus() {
        return adStatus;
    }

    public void setAdStatus(String adStatus) {
        this.adStatus = adStatus;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "Administration{" +
                "id=" + id +
                ", adName='" + adName + '\'' +
                ", adTypeId='" + adTypeId + '\'' +
                ", adStatus='" + adStatus + '\'' +
                ", createDate='" + createDate + '\'' +
                ", price=" + price +
                ", info=" + info +
                '}';
    }
}


