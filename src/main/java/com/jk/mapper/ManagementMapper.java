package com.jk.mapper;

import com.jk.bean.ManagementBean;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ManagementMapper {

    @Select("select * from t_mana ")
    List<ManagementBean> queryMana();

    @Insert("insert into t_mana(name,classify,status,time,info,author)values(#{name},#{classify},#{status},#{time},#{info},#{author})")
    void saveMana(ManagementBean managementBean);

    @Delete("delete from t_mana where id = #{id}")
    void deleteMana(Integer id);

    @Select("select * from t_mana where id = #{id}")
    ManagementBean ManaById(Integer id);
}
