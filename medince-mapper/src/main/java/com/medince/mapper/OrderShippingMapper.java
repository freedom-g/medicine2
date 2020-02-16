package com.medince.mapper;

import java.util.List;

import com.medince.pojo.OrderShipping;
import com.medince.pojo.OrderShippingExample;
import org.apache.ibatis.annotations.Param;

public interface OrderShippingMapper {
    int countByExample(OrderShippingExample example);

    int deleteByExample(OrderShippingExample example);

    int insert(OrderShipping record);

    int insertSelective(OrderShipping record);

    List<OrderShipping> selectByExample(OrderShippingExample example);

    int updateByExampleSelective(@Param("record") OrderShipping record, @Param("example") OrderShippingExample example);

    int updateByExample(@Param("record") OrderShipping record, @Param("example") OrderShippingExample example);
}