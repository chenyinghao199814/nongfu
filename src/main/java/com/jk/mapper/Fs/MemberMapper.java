package com.jk.mapper.Fs;

import com.jk.bean.MemberBean;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MemberMapper {
    //查询
    @Select("select * from t_member")
    List<MemberBean> querymember(MemberBean memberBean);
    //新增
    @Insert("INSERT into t_member (hmnumber,memeberName,memberDate,membpassword) values(#{hmnumber},#{memeberName},SYSDATE(),#{membpassword})")
    void savemeb(MemberBean memberBean);
    //删除（单删）
    @Delete("DELETE from t_member where id in (#{id})")
    void daleteList(String id);
}
