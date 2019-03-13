package com.jk.bean;

public class ArticleBean {

    private Integer id; //id

    private String  name; //名称

    private String classification; //上级分类

    private String  pagetitle; //页面标题

    private String keyword;  //页面关键字

    private String pageinfo; //页面描述

    private Integer sorting; //排序

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
        this.name = name;
    }

    public String getClassification() {
        return classification;
    }

    public void setClassification(String classification) {
        this.classification = classification;
    }

    public String getPagetitle() {
        return pagetitle;
    }

    public void setPagetitle(String pagetitle) {
        this.pagetitle = pagetitle;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getPageinfo() {
        return pageinfo;
    }

    public void setPageinfo(String pageinfo) {
        this.pageinfo = pageinfo;
    }

    public Integer getSorting() {
        return sorting;
    }

    public void setSorting(Integer sorting) {
        this.sorting = sorting;
    }
}
