package com.medince.service.inteface;

import com.medince.pojo.OrderItem;
import com.medince.pojo.OrderShipping;
import com.medince.pojo.Orders;

public interface OrderService {

	//添加订单信息
	int insert(Orders order);//订单表的类对象

	//添加订单商品信息
	int insert(OrderItem orderItem);//订单商品信息表的对象

	//添加订单收货信息
	int insert(OrderShipping order);//订单收货信息表的对象
}
