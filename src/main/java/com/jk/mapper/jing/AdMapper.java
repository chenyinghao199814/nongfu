package com.jk.mapper.jing;

import com.jk.bean.AdBean;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
@Mapper
public interface AdMapper {


    @Select(" select count(1) from t_advertising t ")
    long queryAdTotal(@Param("adBean") AdBean adBean);

    @Select("select * from t_advertising t  group by t.id limit #{start},#{rows}")
    List<AdBean> queryAd(@Param("start") Integer start,@Param("rows") Integer rows,@Param("adBean") AdBean adBean);

    @Insert("insert into  t_advertising(title,advertising,type,sort,state,content,img,link) values(#{title},#{advertising},#{type},#{sort},#{state},#{content},#{img},#{link})")
    void saveAd(AdBean adBean);
}
