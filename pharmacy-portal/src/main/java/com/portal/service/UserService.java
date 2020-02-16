package com.portal.service;

import com.medince.pojo.User;
import result.MedicineResult;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Lenovo on 2020/1/18.
 *
 * @Author: LDH
 * @date:2020/1/18 13:59
 */
public interface UserService {

    //验证是否可以注册
    public MedicineResult checkData(Integer type);

    // 用户注册  注册根据影响行数判断是否注册成功
    public MedicineResult createUser(User user) throws IOException;

    //用户登录
    public  MedicineResult userLogin(String username, String password, HttpServletRequest request,
                          HttpServletResponse response);

    public String login(String username, String password);

   //判断手机号是否注册过
    public  MedicineResult isuser(String param);

   //根据token从redis中查询用户信息
    public  MedicineResult getUserByToken(String token);
}
