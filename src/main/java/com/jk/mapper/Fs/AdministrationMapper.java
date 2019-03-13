package com.jk.mapper.Fs;

import com.jk.bean.Administration;
import com.jk.bean.Commodity;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface AdministrationMapper {


    @Select("select * from t_administration ")
    List<Administration> queryAdministration();

    @Insert("insert into t_administration (adName,adTypeId,adStatus,createDate) values(#{adName},#{adTypeId},#{adStatus},#{createDate})")
    void saveAd(Administration administration);
    @Select("delete from t_administration  where id = #{id}")
    void deletes(Integer id);
   @Select("select * from t_administration where adStatus=2;")
    List<Administration> queryAdministration2();
    @Update("UPDATE t_administration SET info=1 WHERE id=#{id}")
    void updatexiadan(Integer id);
    @Select("select * from t_administration where info=1;")
    List<Administration>  updatexiadan3();
    @Update("UPDATE t_administration SET info=0 WHERE id=#{id}")
    void deleteDrop(Integer id);
}

