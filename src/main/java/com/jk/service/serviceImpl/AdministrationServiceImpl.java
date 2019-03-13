package com.jk.service.serviceImpl;

import com.jk.bean.Administration;
import com.jk.mapper.Fs.AdministrationMapper;
import com.jk.service.Fs.AdministrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class AdministrationServiceImpl implements AdministrationService {

    @Autowired
    private AdministrationMapper administrationMapper;


    @Override
    public List<Administration> queryAdministration() {
        return administrationMapper.queryAdministration();
    }

    @Override
    public void saveAd(Administration administration) {
        administrationMapper.saveAd(administration);
    }

    @Override
    public void deletes(Integer id) {
        administrationMapper.deletes(id);
    }

    @Override
    public List<Administration> queryAdministration2() {
        return administrationMapper.queryAdministration2();
    }

    @Override
    public void updatexiadan(Integer id) {
        administrationMapper.updatexiadan(id);
    }

    @Override
    public   List<Administration>  updatexiadan3() {
        return administrationMapper.updatexiadan3();
    }

    @Override
    public void deleteDrop(Integer id) {
        administrationMapper.deleteDrop(id);
    }
}
