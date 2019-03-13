package com.jk.controller.Fs;

import com.jk.bean.Commodity;
import com.jk.bean.Parameter;
import com.jk.service.Fs.ParameterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ParameterController {

    @Autowired
    private ParameterService parameterService;

    @RequestMapping("queryListParameter")
    @ResponseBody
    public List<Parameter> queryListParameter(){
        return parameterService.queryListParameter();
    }

    @RequestMapping("deletesUs")
    @ResponseBody
    public String deletesUs(Integer id) {
        parameterService.deletesUs(id);
        return "1 ";
    }

    @RequestMapping("saveParameter")
    @ResponseBody
    public String saveParameter(Parameter parameter) {
        parameterService.saveParameter(parameter);
        return "1";
    }
}
