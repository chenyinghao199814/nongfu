package com.jk.mapper.Fs;

import com.jk.bean.Commodity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface  CommodityMapper {
    @Select("select * from t_commodity")
    List<Commodity> queryListFs();

    @Select("insert into t_commodity (id,name) values(#{id},#{name})")
    void saveCommodity(Commodity commodity);



    @Select("delete from t_commodity  where id = #{id}")
    void deletesUser(Integer id);
}
