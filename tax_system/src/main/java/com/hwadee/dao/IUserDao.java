package com.hwadee.dao;

import com.hwadee.domain.LoginUser;

public interface IUserDao {
    public LoginUser selectByNameAndPwd(String username, String pwd);
}
