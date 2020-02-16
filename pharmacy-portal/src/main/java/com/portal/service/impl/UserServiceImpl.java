package com.portal.service.impl;


import com.alibaba.fastjson.JSON;
import com.medince.pojo.User;
import com.portal.service.UserService;
import httpClient.HttpClientUtil;
import json.JsonUtils;
import org.springframework.stereotype.Service;
import result.MedicineResult;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Lenovo on 2020/2/8.
 *
 * @Author: LDH
 * @date:2020/2/8 14:28
 */
@Service
public class UserServiceImpl implements UserService {

    //判断手机是否可以注册
    @Override
    public MedicineResult checkData(Integer token) {
        String s ="http://localhost:8080/aa/user/checkData/"+token;
        String json = HttpClientUtil.doGet(s);
        System.out.println("手机号=="+token);
        MedicineResult medicineMessage = JsonUtils.jsonToPojo(json, MedicineResult.class);
        return medicineMessage;
    }


    //注册
    @Override
    public MedicineResult createUser(User user) throws IOException {
        System.out.println("连接接口");


        user.setUserId(Long.valueOf(200));
        user.setUserName("132165165165");

        String user1= JSON.toJSONString(user);
        String json = HttpClientUtil.doGet("http://localhost:8080/aa/user/createUser/"+user);
        System.out.println("==="+json);
        MedicineResult medicineMessage = JsonUtils.jsonToPojo(json, MedicineResult.class);
        return medicineMessage;
    }


    //登录
    @Override
    public MedicineResult userLogin(String username, String password, HttpServletRequest request, HttpServletResponse response) {
        System.out.println("username"+username);
        System.out.println("pass"+password);
        String s = "http://localhost:8080/aa/user/userLogin/" + username +"/"+ password;
        System.out.println(s);
        String json = HttpClientUtil.doGet(s);
        System.out.println("====" + json);
        MedicineResult medicineMessage = JsonUtils.jsonToPojo(json, MedicineResult.class);
        return medicineMessage;
    }

    @Override
    public String login(String username, String password) {
        return null;
    }

    @Override
    public MedicineResult isuser(String param) {
        return null;
    }

    //判断是否可以注册
    @Override
    public MedicineResult getUserByToken(String token) {
  return null;
    }
}
