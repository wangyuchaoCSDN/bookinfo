package com.hp.bean;

import java.io.Serializable;

public class AssetsType extends AssetsInfo {
    private Integer tid;

    private String tname;

    @Override
    public Integer getTid() {
        return tid;
    }

    @Override
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