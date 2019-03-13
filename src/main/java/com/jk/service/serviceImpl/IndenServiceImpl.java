package com.jk.service.serviceImpl;

import com.jk.bean.IndentBean;
import com.jk.bean.MemberBean;
import com.jk.mapper.IndenMapper;
import com.jk.mapper.LoginMapper;
import com.jk.service.IndenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IndenServiceImpl implements IndenService {
    @Autowired
    private IndenMapper indenMapper;

    @Override
    public List<IndentBean> querLists(IndentBean indentBean) {
        List<IndentBean> list = indenMapper.querLists(indentBean);
        return list;
    }
}
