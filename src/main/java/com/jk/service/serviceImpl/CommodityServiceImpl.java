package com.jk.service.serviceImpl;

import com.jk.bean.Commodity;
import com.jk.mapper.Fs.CommodityMapper;
import com.jk.service.Fs.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommodityServiceImpl implements CommodityService {

    @Autowired
    private CommodityMapper commodityMapper;

    @Override
    public List<Commodity> queryListFs() {
        return commodityMapper.queryListFs();
    }

    @Override
    public void saveCommodity(Commodity commodity) {
        commodityMapper.saveCommodity(commodity);
    }

    @Override
    public void deletesUser(Integer id) {
        commodityMapper.deletesUser(id);
    }
}
