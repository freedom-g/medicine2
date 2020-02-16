package com.medince.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.medince.pojo.OrderItem;
import com.medince.pojo.OrderShipping;
import com.medince.pojo.Orders;
import com.medince.service.inteface.OrderService;

@RestController
@RequestMapping("/order")
public class OrderController {

	@Autowired
	OrderService service;
	
	@RequestMapping("/inster/order")
	public int inster(Orders order){
		
		return service.insert(order);
		
	}
	
	@RequestMapping("/inster/orderItem")
	public int inster(OrderItem order){
		
		return service.insert(order);
		
	}
	
	@RequestMapping("/inster/ordershi")
	public int inster(OrderShipping order){
		
		return service.insert(order);
		
	}
}
