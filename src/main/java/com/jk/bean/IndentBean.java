package com.jk.bean;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class IndentBean {
    private Integer id;
        private Integer numberbm;
    private String  money;
    private Integer member;
    private String consignee;
    private Integer payments;
    private String delivery;
    private Integer jine;
    private Integer status;
    @JsonFormat(pattern="yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private String daterq;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNumberbm() {
        return numberbm;
    }

    public void setNumberbm(Integer numberbm) {
        this.numberbm = numberbm;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public Integer getMember() {
        return member;
    }

    public void setMember(Integer member) {
        this.member = member;
    }

    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee;
    }

    public Integer getPayments() {
        return payments;
    }

    public void setPayments(Integer payments) {
        this.payments = payments;
    }

    public String getDelivery() {
        return delivery;
    }

    public void setDelivery(String delivery) {
        this.delivery = delivery;
    }

    public Integer getJine() {
        return jine;
    }

    public void setJine(Integer jine) {
        this.jine = jine;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public
    String getDaterq() {
        return daterq;
    }

    public
    void setDaterq(String daterq) {
        this.daterq = daterq;
    }

    @Override
    public String toString() {
        return "IndentBean{" +
                "id=" + id +
                ", numberbm=" + numberbm +
                ", money='" + money + '\'' +
                ", member=" + member +
                ", consignee='" + consignee + '\'' +
                ", payments=" + payments +
                ", delivery='" + delivery + '\'' +
                ", jine=" + jine +
                ", status=" + status +
                ", daterq=" + daterq +
                '}';
    }
}
