package com.jk.service.serviceImpl.Jing;

import com.jk.bean.AdBean;
import com.jk.mapper.jing.AdMapper;
import com.jk.service.jing.AdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public class AdServiceImpl implements AdService {


    @Autowired
    private AdMapper adMapper;

    @Override
    public  HashMap<String, Object> queryAd(Integer page, Integer rows, AdBean adBean) {
        HashMap<String, Object> hashMap = new HashMap<>();
        //查询总条数
        long total = adMapper.queryAdTotal(adBean);
        //查询显示信息
        //开始位置
        int start = (page-1)*rows;
        List<AdBean> list = adMapper.queryAd(start,rows,adBean);
        hashMap.put("total", total);
        hashMap.put("rows", list);
        return hashMap;
    }

    @Override
    public  void saveAd(AdBean adBean) {
        adMapper.saveAd(adBean);
    }
}
