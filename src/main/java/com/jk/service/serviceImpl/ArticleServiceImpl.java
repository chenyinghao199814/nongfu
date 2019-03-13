package com.jk.service.serviceImpl;

import com.jk.bean.ArticleBean;
import com.jk.mapper.ArticleMapper;
import com.jk.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleMapper articleMapper;

    @Override
    public List<ArticleBean> queryArticle() {

        return articleMapper.queryArticle();
    }

    @Override
    public void saveArticle(ArticleBean articleBean) {
        articleMapper.saveArticle(articleBean);
    }

    @Override
    public void deleteArticle(Integer id) {
        articleMapper.deleteArticle(id);
    }

    @Override
    public ArticleBean ArticleById(Integer id) {
        return articleMapper.ArticleById(id);
    }

    @Override
    public void upArticle(ArticleBean articleBean) {
        articleMapper.upArticle(articleBean);
    }
}