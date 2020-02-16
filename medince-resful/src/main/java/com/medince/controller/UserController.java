package com.medince.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medince.pojo.User;
import json.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.medince.service.inteface.MedinceService;
import com.medince.service.inteface.UserService;
import result.MedicineResult;

@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private MedinceService meService;
	
	public UserController() {
		System.out.println("当我被创造的时候");
	}
	
	@RequestMapping("/createUser/{user1}")
	public MedicineResult createUser(@PathVariable String user1) {

	    User user=	JsonUtils.jsonToPojo(user1,User.class);
		System.out.println("创建用户的接口"+"="+user1);
		System.out.println("用户名="+user.getUserName()+"密码="+user.getPassword());
		return userService.createUser(user);
	}
	
	@RequestMapping("/userLogin/{username}/{password}")
	public MedicineResult userLogin(@PathVariable("username") String username,@PathVariable("password") String password,
                                    HttpServletRequest request,HttpServletResponse response) {
		
		return userService.userLogin(username, password, request, response);
	}

	//未实现
	@RequestMapping("/isuser/{param}")
	public MedicineResult isuser(String param) {
		
		return userService.isuser(param);
	}
	
	@RequestMapping("/checkData/{type}")
	MedicineResult checkData(Integer type) {
		
		return userService.checkData(type);
	}
}
