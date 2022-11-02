package com.hp.service;

import com.hp.bean.AssetsInfo;
import com.hp.bean.AssetsType;
import com.hp.bean.PageResult;

import java.util.List;

public interface AssListService {
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
    //分页查询
    /**
     *
     * @param pageNum  :当前显示的页码(默认第一页)
     * @param pageSize :每页现实的条数（程序员决定）
     * @return
     */
    PageResult findPage(int pageNum, int pageSize);


}
