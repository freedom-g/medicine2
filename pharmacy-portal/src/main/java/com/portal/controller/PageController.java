package com.portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Lenovo on 2019/12/10.
 *
 * @Author: LDH
 * @date:2019/12/10 21:57
 */
@Controller
@RequestMapping("/page")
public class PageController {

    @RequestMapping("/regist")
    public String showRegister() {
        return "regist";
    }

    @RequestMapping("/login")
    public String showLogin() {

        return "login";
    }

}
