package com.jk.controller.cyh;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class index {
    @RequestMapping("index")
    public String index(){

        return "moban/index";
    }
    @RequestMapping("newslist")
    public String newslist(){

        return "moban/newslist";
    }
    @RequestMapping("hyzx")
    public String hyzx(){

        return "moban/hyzx";
    }
    @RequestMapping("denglu")
    public String denglu(){

        return "moban/denglu";
    }
    @RequestMapping("ddtj")
    public String ddtj(){

        return "moban/ddtj";
    }
    @RequestMapping("ddqr")
    public String ddqr(){

        return "moban/ddqr";
    }
}
