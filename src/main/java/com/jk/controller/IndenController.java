package com.jk.controller;



import com.jk.bean.IndentBean;
import com.jk.service.IndenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class IndenController {
    @Autowired
    private IndenService indenService;

    /**
     * 查询
     * @return
     */
    @RequestMapping("querLists")
    @ResponseBody
    public List<IndentBean> querLists(IndentBean indentBean){
        List<IndentBean> list = indenService.querLists(indentBean);
        return list;
    }

}
