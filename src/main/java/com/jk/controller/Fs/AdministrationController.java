package com.jk.controller.Fs;

import com.jk.bean.Administration;
import com.jk.bean.Commodity;
import com.jk.service.Fs.AdministrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;

@Controller
public class AdministrationController {

    @Autowired
    private AdministrationService administrationService;


    @RequestMapping("queryAdministration")
    @ResponseBody
    public List<Administration> queryAdministration(){

        return administrationService.queryAdministration();
    }
    @RequestMapping("queryAdministration2")
    @ResponseBody
    public List<Administration> queryAdministration2(){

        return administrationService.queryAdministration2();
    }

    @RequestMapping("saveAdd2")
    @ResponseBody
    public String saveAd(Administration administration) {
        administrationService.saveAd(administration);
        return "1";
    }

    @RequestMapping("deletes")
    @ResponseBody
    public String deletes(Integer id) {
        administrationService.deletes(id);
        return "1 ";
    }

    @RequestMapping("updatexiadan")
    @ResponseBody
    public String updatexiadan(Integer id){
        administrationService.updatexiadan(id);
        return "1";
    }
    @RequestMapping("updatexiadan3")
    @ResponseBody
    public List<Administration> updatexiadan3(){

        return administrationService.updatexiadan3();
    }
    @RequestMapping("deleteDrop")
    @ResponseBody
    public String deleteDrop(Integer id){
        administrationService.deleteDrop(id);
        return "1";
    }
}
