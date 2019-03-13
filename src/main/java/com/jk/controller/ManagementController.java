package com.jk.controller;

import com.jk.bean.ManagementBean;
import com.jk.service.ManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ManagementController {

    @Autowired
    private ManagementService managementService;


    /**
     * 管理查询
     */
    @RequestMapping("queryMana")
    @ResponseBody
    public List<ManagementBean> queryMana(){
        return managementService.queryMana();
    }

    /**
     * 新增
     */
    @RequestMapping("saveMana")
    @ResponseBody
    public void  saveMana(ManagementBean managementBean){
        managementService.saveMana(managementBean);
    }

    /**
     * 删除
     */
    @RequestMapping("deleteMana")
    @ResponseBody
    public String deleteMana(Integer id){
        managementService.deleteMana(id);
        return "1";
    }

    /**
     * 回显
     */
    @RequestMapping("ManaById")
    @ResponseBody
    public ManagementBean ManaById(Integer id){
        return managementService.ManaById(id);
    }
}
