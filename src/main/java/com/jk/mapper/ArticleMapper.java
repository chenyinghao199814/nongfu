package com.jk.mapper;

import com.jk.bean.ArticleBean;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ArticleMapper {

    @Select("select * from t_article")
    List<ArticleBean> queryArticle();

    @Insert("insert into t_article(name,classification,pagetitle,keyword,pageinfo,sorting)values(#{name},#{classification},#{pagetitle},#{keyword},#{pageinfo},#{sorting})")
    void saveArticle(ArticleBean articleBean);

    @Select("select * from t_article where id = #{id}")
    ArticleBean ArticleById(Integer id);

    @Update("update t_article u set u.name = #{name},u.classification = #{classification},u.pagetitle = #{pagetitle},u.keyword=#{keyword},u.pageinfo=#{pageinfo},u.sorting=#{sorting} where u.id=#{id}")
    void upArticle(ArticleBean articleBean);

    @Delete("delete from t_article where id = #{id}")
    void deleteArticle(Integer id);
}
