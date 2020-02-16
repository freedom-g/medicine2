package com.medince.mapper;

import java.util.List;

import com.medince.pojo.Sales;
import com.medince.pojo.SalesExample;
import org.apache.ibatis.annotations.Param;

public interface SalesMapper {
    int countByExample(SalesExample example);

    int deleteByExample(SalesExample example);

    int insert(Sales record);

    int insertSelective(Sales record);

    List<Sales> selectByExample(SalesExample example);

    int updateByExampleSelective(@Param("record") Sales record, @Param("example") SalesExample example);

    int updateByExample(@Param("record") Sales record, @Param("example") SalesExample example);
}