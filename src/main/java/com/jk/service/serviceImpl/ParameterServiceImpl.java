package com.jk.service.serviceImpl;

import com.jk.bean.Parameter;
import com.jk.mapper.Fs.ParameterMapper;
import com.jk.service.Fs.ParameterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ParameterServiceImpl implements ParameterService {

@Autowired
private ParameterMapper parameterMapper;
    @Override
    public List<Parameter> queryListParameter() {
        return parameterMapper.queryListParameter();
    }

    @Override
    public void deletesUs(Integer id) {
        parameterMapper.deletesUs(id);
    }

    @Override
    public void saveParameter(Parameter parameter) {
        parameterMapper.saveParameter(parameter);
    }
}
