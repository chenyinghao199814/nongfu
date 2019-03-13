package com.jk.service;

import com.jk.bean.MemberBean;

import java.util.List;

public interface MemberService {

    //查询
    List<MemberBean> querymember(MemberBean memberBean);
    //新增
    void savemeb(MemberBean memberBean);
    //删除
    void daleteList(String id);
}
