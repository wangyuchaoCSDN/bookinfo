package com.hp.mapper;

import com.hp.bean.UserInfo;

public interface LoginMapper {
    //登录
    UserInfo login(UserInfo userInfo);
}
