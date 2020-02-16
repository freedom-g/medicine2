package com.medince.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medince.mapper.UserMapper;
import com.medince.pojo.User;
import com.medince.pojo.UserExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medince.service.inteface.UserService;
import result.MedicineResult;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public String login(String username, String pasword) {
		// TODO Auto-generated method stub
		
		User record = new User();
		record.setUserId(2L);
		record.setUserName(username);
		record.setPassword(pasword);
		
		userMapper.insert(record);
		
		return username;
	}

	//验证是否可以注册
	@Override
	public MedicineResult checkData(Integer type) {
		// TODO Auto-generated method stub
		UserExample example = new UserExample();
        UserExample.Criteria cr = example.createCriteria();
        cr.andUserNameEqualTo(type.toString());
		List<User> list = userMapper.selectByExample(example);
		
		if (list.size()>0) {
			return MedicineResult.build(500, "手机号已被注册");
		}
		
		return MedicineResult.ok();
	}

	@Override
	public MedicineResult createUser(User user) {
		// TODO Auto-generated method stub
		
		int i = userMapper.insertSelective(user);
		
		if(i==0)
			return MedicineResult.build(500, "用户注册失败");
		    return MedicineResult.ok();
	}

	@Override
	public MedicineResult userLogin(String username, String password, HttpServletRequest request,
			HttpServletResponse response) {
		
		UserExample example = new UserExample();
        UserExample.Criteria cr = example.createCriteria();

        cr.andUserNameEqualTo(username);
		cr.andPasswordEqualTo(password);
		
		List<User> list = userMapper.selectByExample(example);
		
		if (list.size()==0) {
			return MedicineResult.build(500, "用户名或密码错误");
		}
		
		return MedicineResult.ok();
	}

	@Override
	public MedicineResult isuser(String param) {
		// TODO Auto-generated method stub
		return null;
	}

	

}
