package com.jk.controller;

import com.jk.bean.ArticleBean;
import com.jk.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ArticleController {

    @Autowired
    private ArticleService articleService;


    /**
     * 文章分类查询
     */
    @RequestMapping("/queryArticle")
    @ResponseBody
    public List<ArticleBean> queryArticle() {

        return articleService.queryArticle();
    }

    /**
     * 新增
     */
    @RequestMapping("/saveArticle")
    @ResponseBody
    public void saveArticle(ArticleBean articleBean) {

        articleService.saveArticle(articleBean);
    }

    /**
     *删除
     */
    @RequestMapping("deleteArticle")
    @ResponseBody
    public String deleteArticle(Integer id){
        articleService.deleteArticle(id);
        return "1";
    }

    /**
     * 回显
     */
    @RequestMapping("ArticleById")
    @ResponseBody
    public ArticleBean ArticleById(Integer id){
        return articleService.ArticleById(id);
    }

    /**
     * 修改
     */
    @RequestMapping("upArticle")
    @ResponseBody
    public void upArticle(ArticleBean articleBean) {

        articleService.upArticle(articleBean);
    }
}
