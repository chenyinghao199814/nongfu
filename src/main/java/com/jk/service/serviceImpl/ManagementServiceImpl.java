package com.jk.service.serviceImpl;

import com.jk.bean.ManagementBean;
import com.jk.mapper.ManagementMapper;
import com.jk.service.ManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ManagementServiceImpl implements ManagementService {

    @Autowired
    private ManagementMapper managementMapper;

    @Override
    public List<ManagementBean> queryMana() {
        return managementMapper.queryMana();
    }

    @Override
    public void saveMana(ManagementBean managementBean) {
        managementMapper.saveMana(managementBean);
    }

    @Override
    public void deleteMana(Integer id) {
        managementMapper.deleteMana(id);
    }

    @Override
    public ManagementBean ManaById(Integer id) {
        return managementMapper.ManaById(id);
    }
}
