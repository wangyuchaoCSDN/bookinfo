package com.hp.controller;

import com.hp.bean.AssetsInfo;
import com.hp.bean.AssetsType;
import com.hp.bean.PageResult;
import com.hp.bean.UserInfo;
import com.hp.service.AssListService;
import com.hp.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class LoginController {

    @Autowired
    private LoginService loginService;
    @Autowired
    private AssListService assListService;


    //登录
    @RequestMapping("/login")
    public String login(UserInfo userInfo){
        UserInfo login = loginService.login(userInfo);
        if (login!=null){
            return "redirect:findAll";
        }else {
            return "redirect:login";
        }
    }
    //查询
    @RequestMapping("/findAll")
    public String findAll(@RequestParam(defaultValue="1",required=false,value="pageNum")int pageNum, @RequestParam(defaultValue="3",required=false,value="pageSize")int pageSize, AssetsInfo assetsInfo, Model model){
        PageResult page = assListService.findPage(pageNum, pageSize);
        //取出list
        List<AssetsInfo> assetsInfos = assListService.findAll(assetsInfo);
        //放入model
        model.addAttribute("lists",assetsInfos);
        //当前页
        model.addAttribute("pageNum",pageNum);
        //总记录数
        model.addAttribute("pageSize",pageSize);
        model.addAttribute("pageNums",page.getTotal());
        //总页数
        model.addAttribute("totalPages",page.getTotalPages());
        return "list";
    }

    //展示添加页面并显示下拉框
    @RequestMapping("/addfindTname")
    public String addfindTime(AssetsType assetsType,Model model){
        List<AssetsType> tnamefind = assListService.asTnamefind(assetsType);
        System.out.println(tnamefind);
        //放入model
        model.addAttribute("tnamefind",tnamefind);
        return "add";
    }
    //添加
    @RequestMapping("/findAdd")
    public String findAdd(AssetsInfo assetsinfo){

        assListService.addAll(assetsinfo);
        return "redirect:findAll";
    }
    //根据id查询并回显值
    @RequestMapping("/findById")
    public String findById(int aid,Model model,AssetsType assetsType){
        //查询id
        AssetsInfo infoList = assListService.findById(aid);
        //放入model
        model.addAttribute("ass",infoList);
        //回显下拉框
        List<AssetsType> asTnamefind = assListService.asTnamefind(assetsType);
        //放入model
        model.addAttribute("asTnamefind",asTnamefind);
        return "update";
    }
    //修改
    @RequestMapping("/findUpdate")
    public String findUpdate(AssetsInfo assetsInfo){
        assListService.update(assetsInfo);
        return "redirect:findAll";
    }
    //删除
    @RequestMapping("/delete")
    public String delete(int aid){

        assListService.delete(aid);
        return "redirect:findAll";
    }

}
