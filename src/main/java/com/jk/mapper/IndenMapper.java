package com.jk.mapper;

import com.jk.bean.IndentBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface IndenMapper {
    @Select("select * from t_indent")
    List<IndentBean> querLists(IndentBean indentBean);
}
