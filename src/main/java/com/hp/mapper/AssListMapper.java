package com.hp.mapper;

import com.hp.bean.AssetsInfo;
import com.hp.bean.AssetsType;

import java.util.List;

public interface AssListMapper {
    //查询
    List<AssetsInfo> findAll(AssetsInfo assetsinfo);
    //添加
    void addAll(AssetsInfo assetsinfo);
    //查询tname
    List<AssetsType> asTnamefind(AssetsType assetsType);
    //根据id查询
    AssetsInfo findById(int aid);
    //修改
    void update(AssetsInfo assetsInfo);
    //删除
    void delete(int aid);
}
