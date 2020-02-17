package com.medince.mapper;

import com.medince.pojo.Sales;
import com.medince.pojo.SalesExample;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface SalesMapper {
    int countByExample(SalesExample example);

    int deleteByExample(SalesExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Sales record);

    int insertSelective(Sales record);

    List<Sales> selectByExample(SalesExample example);

    Sales selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Sales record, @Param("example") SalesExample example);

    int updateByExample(@Param("record") Sales record, @Param("example") SalesExample example);

    int updateByPrimaryKeySelective(Sales record);

    int updateByPrimaryKey(Sales record);

    @Select("select count(*) from sales")
    int count();
}