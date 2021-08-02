package com.hwadee.service;

import com.hwadee.domain.LoginUser;

public interface IUserService {
    public LoginUser selectByNameAndPwd(String name, String pwd);
}
