package com.hwadee.service.impl;


import com.hwadee.dao.IUserDao;
import com.hwadee.domain.LoginUser;
import com.hwadee.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements IUserService {
    @Autowired
    private IUserDao userDao;

    @Override
    public LoginUser selectByNameAndPwd(String name, String pwd) {
        return userDao.selectByNameAndPwd(name, pwd);
    }


}
