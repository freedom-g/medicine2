package com.portal.controller;


import com.medince.pojo.User;
import com.portal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import result.MedicineResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Created by Lenovo on 2019/12/10.
 *
 * @Author: LDH
 * @date:2019/12/10 21:16
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/check/{type}")
    @ResponseBody
    public Object checkData(@PathVariable Integer type, String callback) {
        MedicineResult result = null;
        System.out.println("11111111111111111111111111111111111111");
        //调用服务
        try {
            result = userService.checkData(type);

        } catch (Exception e) {
            result = MedicineResult.build(500, e.getMessage());
        }

        if (null != callback) {
            MappingJacksonValue mappingJacksonValue = new MappingJacksonValue(result);
            mappingJacksonValue.setJsonpFunction(callback);
            return mappingJacksonValue;
        } else {
            return result;
        }
    }

    //创建用户
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    @ResponseBody
    public MedicineResult createUser(User user) {
        try {
            MedicineResult result = userService.createUser(user);
            return result;
        } catch (Exception e) {
            return MedicineResult.build(500, e.getMessage());
        }
    }

    //用户登录
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public MedicineResult userLogin(String username, String password, HttpServletRequest request,
                                    HttpServletResponse response,HttpSession session) {
        System.out.println("进入登录Controller");
        try {
            MedicineResult result = userService.userLogin(username, password, request, response);
             session.setAttribute("username",username);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return MedicineResult.build(500, e.getMessage());
        }
    }

    @RequestMapping(value = "/isuser/{param}", method = RequestMethod.GET)
    @ResponseBody
    public MedicineResult isUser(@PathVariable String param) {

        return null;
    }


}






