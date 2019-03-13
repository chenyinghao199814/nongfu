package com.jk.service.serviceImpl;

import com.jk.bean.MemberBean;
import com.jk.mapper.Fs.MemberMapper;
import com.jk.mapper.LoginMapper;
import com.jk.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {
    @Autowired
    private MemberMapper memberMapper;

    //查询
    @Override
    public List<MemberBean> querymember(MemberBean memberBean) {
        List<MemberBean> list = memberMapper.querymember(memberBean);
        return list;
    }
    //新增
    @Override
    public void savemeb(MemberBean memberBean) {
        memberMapper.savemeb(memberBean);
    }

   //删除
    @Override
    public void daleteList(String id) {
        memberMapper.daleteList(id);
    }
}
