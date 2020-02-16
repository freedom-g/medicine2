package com.medince.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medince.mapper.OrderItemMapper;
import com.medince.mapper.OrdersMapper;
import com.medince.mapper.OrderShippingMapper;
import com.medince.pojo.Orders;
import com.medince.pojo.OrderItem;
import com.medince.pojo.OrderShipping;
import com.medince.service.inteface.OrderService;
import com.medince.utils.IdUtil;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	OrderItemMapper oritemMapper;
	
	@Autowired
	OrderShippingMapper orshiMapper;
	
	@Autowired
	OrdersMapper orMapper;
	
	@Override
	public int insert(Orders order) {
		// TODO Auto-generated method stub
		Date date = new Date();
		order.setCreateTime(date);
		order.setUpdateTime(date);
		
		order.setOrderId(IdUtil.OrderId());
		
		int i = orMapper.insert(order);
		
		
		
		return i;
	}

	@Override
	public int insert(OrderItem orderItem) {
		orderItem.setId(IdUtil.OrderId());
		int i = oritemMapper.insertSelective(orderItem);
		
		return i;
	}

	@Override
	public int insert(OrderShipping order) {
		order.setCreated(new Date());
		int i = orshiMapper.insertSelective(order);
		
		return i;
	}

}
