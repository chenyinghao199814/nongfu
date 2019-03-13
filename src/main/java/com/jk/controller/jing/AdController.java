package com.jk.controller.jing;

import com.jk.bean.AdBean;
import com.jk.service.jing.AdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;


@Controller
public class AdController {

    @Autowired
    private AdService adservice;
   //查询
     @RequestMapping("queryAd")
    @ResponseBody
    public HashMap<String, Object> queryAd(Integer page, Integer rows,AdBean adBean){

       return  adservice.queryAd(page,rows,adBean);
    }
    //新增
    @RequestMapping("saveAd")
    @ResponseBody
    public String saveAd(AdBean adBean){
        adservice.saveAd(adBean);
        return "1";
    }

  /*  @RequestMapping("upload2")
    @ResponseBody
    public HashMap<String, String> upload2(MultipartFile img, HttpServletRequest request) {
        HashMap<String, String> result = new HashMap<>();
        String fileUpload = FileUtil.FileUpload(img, request);
        result.put("img", fileUpload);
        return result;
    }*/

}
