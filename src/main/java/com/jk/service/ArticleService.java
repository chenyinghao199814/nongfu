package com.jk.service;

import com.jk.bean.ArticleBean;

import java.util.List;

public interface ArticleService {

    List<ArticleBean> queryArticle();

    void saveArticle(ArticleBean articleBean);

    void deleteArticle(Integer id);

    ArticleBean ArticleById(Integer id);

    void upArticle(ArticleBean articleBean);
}
