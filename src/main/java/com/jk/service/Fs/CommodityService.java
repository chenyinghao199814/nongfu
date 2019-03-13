package com.jk.service.Fs;

import com.jk.bean.Commodity;

import java.util.List;

public interface CommodityService {

    /**
     * 蔬菜商品分类
     * @return
     */
    List<Commodity> queryListFs();

    void saveCommodity(Commodity commodity);

    void deletesUser(Integer id);
}
