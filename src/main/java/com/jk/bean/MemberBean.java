package com.jk.bean;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class MemberBean {

    private Integer  id;
    private Integer  hmnumber;
    private String   memeberName;
    @JsonFormat(pattern="yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private String  memberDate;

    private  String   membpassword;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getHmnumber() {
        return hmnumber;
    }

    public void setHmnumber(Integer hmnumber) {
        this.hmnumber = hmnumber;
    }

    public String getMemeberName() {
        return memeberName;
    }

    public void setMemeberName(String memeberName) {
        this.memeberName = memeberName;
    }

    public  String getMemberDate() {
        return memberDate;
    }

    public void setMemberDate(String memberDate) {
        this.memberDate = memberDate;
    }

    public String getMembpassword() {
        return membpassword;
    }

    public void setMembpassword(String membpassword) {
        this.membpassword = membpassword;
    }

    @Override
    public String toString() {
        return "MemberBean{" +
                "id=" + id +
                ", hmnumber=" + hmnumber +
                ", memeberName='" + memeberName + '\'' +
                ", memberDate=" + memberDate +
                ", membpassword='" + membpassword + '\'' +
                '}';
    }
}
