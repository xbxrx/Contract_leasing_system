package com.hwadee.controller;


import com.hwadee.domain.LoginUser;

import com.hwadee.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class LoginController {
    @Resource(name = "userService")
    IUserService userService;


    @RequestMapping("/")
    public String toLogin() {
        return "login";
    }


    @RequestMapping("/doLogin")
    public String login(String username, String password) {

        LoginUser loginUser = userService.selectByNameAndPwd(username, password);
//        System.out.println("====================>>>"+loginUser);
        if(loginUser!=null){
            if (password.equals(loginUser.getPassword()) && username.equals(loginUser.getUsername())) {
                return "main";
            } else {
                return "login";
            }
        }
        return "login";
    }

    @RequestMapping("/inMain2Nav")
    public String inMain2Nav() {
        return "nav";
    }






}

