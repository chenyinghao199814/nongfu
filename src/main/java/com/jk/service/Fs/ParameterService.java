package com.jk.service.Fs;


import com.jk.bean.Commodity;
import com.jk.bean.Parameter;

import java.util.List;

public interface ParameterService {

    List<Parameter> queryListParameter();

    void deletesUs(Integer id);

    void saveParameter(Parameter parameter);
}
