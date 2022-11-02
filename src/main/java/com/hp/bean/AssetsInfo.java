package com.hp.bean;

import java.io.Serializable;
import java.util.Date;

public class AssetsInfo implements Serializable {

    private Integer aid;

    private String aname;

    private Integer acount;

    private String aunit;

    private Float amoney;

    private String caitime;

    private String dengtime;

    private Integer astate;

    private String auser;

    private Integer tid;

    private String tname;

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public Integer getAcount() {
        return acount;
    }

    public void setAcount(Integer acount) {
        this.acount = acount;
    }

    public String getAunit() {
        return aunit;
    }

    public void setAunit(String aunit) {
        this.aunit = aunit;
    }

    public Float getAmoney() {
        return amoney;
    }

    public void setAmoney(Float amoney) {
        this.amoney = amoney;
    }

    public String getCaitime() {
        return caitime;
    }

    public void setCaitime(String caitime) {
        this.caitime = caitime;
    }

    public String getDengtime() {
        return dengtime;
    }

    public void setDengtime(String dengtime) {
        this.dengtime = dengtime;
    }

    public Integer getAstate() {
        return astate;
    }

    public void setAstate(Integer astate) {
        this.astate = astate;
    }

    public String getAuser() {
        return auser;
    }

    public void setAuser(String auser) {
        this.auser = auser;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }
}
