package com.jk.controller.Fs;

import com.jk.bean.Commodity;
import com.jk.service.Fs.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CommodityController {

    @Autowired
    private CommodityService commodityService;


    @RequestMapping("queryListFs")
    @ResponseBody
    public List<Commodity> queryListFs(){
        return commodityService.queryListFs();
    }

    @RequestMapping("saveCommodity")
    @ResponseBody
    public String saveCommodity(Commodity commodity) {
        commodityService.saveCommodity(commodity);
        return "1";
    }

    @RequestMapping("deletesUser")
    @ResponseBody
    public String deletesUser(Integer id) {
        commodityService.deletesUser(id);
        return "1 ";
    }
}
