package com.jk.service.jing;

import com.jk.bean.AdBean;

import java.util.HashMap;
import java.util.List;


public interface AdService {

    HashMap<String, Object> queryAd(Integer page, Integer rows, AdBean adBean);
  //新增
    void saveAd(AdBean adBean);
}
