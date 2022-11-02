package com.hp.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.hp.bean.AssetsInfo;
import com.hp.bean.AssetsType;
import com.hp.bean.PageResult;
import com.hp.mapper.AssListMapper;
import com.hp.service.AssListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AssListServiceImpl implements AssListService {

    @Autowired
    private AssListMapper assListMapper;

    private AssetsInfo assetsinfo;
    //查询

    @Override
    public List<AssetsInfo> findAll(AssetsInfo assetsinfo) {
        return assListMapper.findAll(assetsinfo);
    }
    //添加
    @Override
    public void addAll(AssetsInfo assetsinfo) {
        assListMapper.addAll(assetsinfo);
    }
    //查询tname
    @Override
    public List<AssetsType> asTnamefind(AssetsType assetsType) {
        return assListMapper.asTnamefind(assetsType);
    }

    @Override
    public AssetsInfo findById(int aid) {
        return assListMapper.findById(aid);
    }
    //根据Id查询

    //修改
    @Override
    public void update(AssetsInfo assetsInfo) {
        assListMapper.update(assetsInfo);
    }

    //删除
    @Override
    public void delete(int aid) {
        assListMapper.delete(aid);
    }

    @Override
    public PageResult findPage(int pageNum, int pageSize) {
        //调用分页方法
        PageHelper.startPage(pageNum, pageSize);
        //查询所有数据
        List<AssetsInfo> infoList = assListMapper.findAll(assetsinfo);
        //转成page对象
        Page page = (Page) infoList;
        PageResult pageResult = new PageResult(page.getTotal(), page.getResult(), page.getPages());
        return pageResult;
    }
}
