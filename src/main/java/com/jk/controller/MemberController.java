package com.jk.controller;

import com.jk.bean.MemberBean;
import com.jk.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class MemberController {
    @Autowired
    private MemberService memberService;

    /**
     * 查询
     * @return
     */
    @RequestMapping("querList")
    @ResponseBody
    public List<MemberBean> querymember(MemberBean memberBean){
        List<MemberBean> list = memberService.querymember(memberBean);
        return list;
    }

    /**
     * 添加
     */
    @RequestMapping("savemeb")
    @ResponseBody
    public String savemeb(MemberBean memberBean) {
        System.out.println(memberBean);
        memberService.savemeb(memberBean);
        return "1";
    }

    /**
     * 删除
     */
    @RequestMapping("daleteList")
    @ResponseBody
    public String daleteList(String id) {
        memberService.daleteList(id);
        return "1";
    }



}
