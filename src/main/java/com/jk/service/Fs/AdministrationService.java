package com.jk.service.Fs;

import com.jk.bean.Administration;

import java.util.HashMap;
import java.util.List;

public interface AdministrationService {
    List<Administration> queryAdministration();

    void saveAd(Administration administration);

    void deletes(Integer id);

    List<Administration> queryAdministration2();

    void updatexiadan(Integer id);

    List<Administration> updatexiadan3();

    void deleteDrop(Integer id);
}
