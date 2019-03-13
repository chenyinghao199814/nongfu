package com.jk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ToViewController {

    //访问longin登录页面
    @RequestMapping("toLogin")
    public String toLogin(){
        return "222";
    }

    //访问右侧树
    @RequestMapping("toTree")
    public String toTree(){
        return "tree";
    }

    //访问广告页面
    @RequestMapping("toAdvertising")
    public String toAdvertising(){
        return "advertising/ad";
    }

    //跳转新增
    @RequestMapping("toAdd")
    public String toAdd(){
        return "advertising/add";
    }

    /**
     * 文章分类
     * @return
     */
    @RequestMapping("toArticle")
    public String toArticle(){
        return "/article";
    }

    /**
     *跳转新增
     * @return
     */
    @RequestMapping("articleAdd")
    public String userAdd() {
        return "/ArticleAdd";
    }

    /**
     *跳转修改
     */
    @RequestMapping("articleUpdate")
    public String userUpdate() {
        return "/ArticleUpdate";
    }

    /**
     * 文章管理
     * @return
     */
    @RequestMapping("toMana")
    public String toMana(){
        return "/mana";
    }

    /**
     *跳转文章管理新增
     * @return
     */
    @RequestMapping("manaAdd")
    public String manaAdd() {
        return "/ManaAdd";
    }

    /**
     *跳转文章修改
     */
    @RequestMapping("manaUpdate")
    public String manaUpdate() {
        return "/ManaUpdate";
    }

    //跳查询页面
    @RequestMapping("toMember")
    public String toMember(){
        return "member";
    }
    //跳新增页面
    @RequestMapping("toMemberList")
    public String toMemberList(){
        return "memberList";
    }

    //跳修改页面
    @RequestMapping("toupdateMember")
    public String toupdateMember(){
        return "membermima";
    }

    //跳订单页面
    @RequestMapping("toquy")
    public String toquy(){
        return "inden";
    }

    /**
     * 商品分类页面
     * @return
     */
    @RequestMapping("toCommodity")
    public String toCommodity(){
        return "fs/commodity1";
    }

    @RequestMapping("toCommodityAddShow")
    public String toCommodityAddShow() {
        return "fs/commodityAddShow";
    }

    @RequestMapping("toCommodity2")
    public String toCommodity2(){
        return "fs/commodity2";
    }

    @RequestMapping("toParameterAddShow")
    public String toParameterAddShow() {
        return "fs/ParameterAddShow";
    }
    @RequestMapping("toCommodity3")
    public String toCommodity3() {
        return "fs/commodity3";
    }

    @RequestMapping("toAdAddShow")
    public String toAdAddShow() {
        return "fs/adAddShow";
    }


}
