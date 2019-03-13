package com.jk.mapper.Fs;

import com.jk.bean.Commodity;
import com.jk.bean.Parameter;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ParameterMapper {

    @Select("select * from t_parameter")
    List<Parameter> queryListParameter();

    @Select("delete from t_parameter  where id = #{id}")
    void deletesUs(Integer id);

    @Select("insert into t_parameter (id,parameterId,type,parameterName,sort,createTime) values(#{id},#{parameterId},#{type},#{parameterName},#{sort},#{createTime})")
    void saveParameter(Parameter parameter);
}
