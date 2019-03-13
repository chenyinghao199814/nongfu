package com.jk.service;

import com.jk.bean.ManagementBean;

import java.util.List;

public interface ManagementService {
    List<ManagementBean> queryMana();

    void saveMana(ManagementBean managementBean);

    void deleteMana(Integer id);

    ManagementBean ManaById(Integer id);
}
