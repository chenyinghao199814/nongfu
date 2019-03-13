package com.jk.bean;

public class AdBean {

    private Integer id;
    private String title;
    private String  advertising;
    private String  type;
    private String sort;  //排序
    private String state; //状态
    private String  content;//内容
    private String img;
    private String link;//链接


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAdvertising() {
        return advertising;
    }

    public void setAdvertising(String advertising) {
        this.advertising = advertising;
    }

    public String getType() {
        return type;
    }

    public  void setType(String type) {
        this.type = type;
    }


    public
    String getSort() {
        return sort;
    }

    public
    void setSort(String sort) {
        this.sort = sort;
    }

    public
    String getState() {
        return state;
    }

    public
    void setState(String state) {
        this.state = state;
    }

    public
    String getContent() {
        return content;
    }

    public
    void setContent(String content) {
        this.content = content;
    }

    public
    String getImg() {
        return img;
    }

    public
    void setImg(String img) {
        this.img = img;
    }

    public
    String getLink() {
        return link;
    }

    public
    void setLink(String link) {
        this.link = link;
    }

    @Override
    public
    String toString() {
        return "AdBean{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", advertising='" + advertising + '\'' +
                ", type='" + type + '\'' +
                ", sort='" + sort + '\'' +
                ", state='" + state + '\'' +
                ", content='" + content + '\'' +
                ", img='" + img + '\'' +
                ", link='" + link + '\'' +
                '}';
    }
}
