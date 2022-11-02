package com.hp.service.impl;

import com.hp.bean.UserInfo;
import com.hp.mapper.LoginMapper;
import com.hp.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginMapper loginMapper;
    //登录
    @Override
    public UserInfo login(UserInfo userInfo) {
        return loginMapper.login(userInfo);
    }
}
