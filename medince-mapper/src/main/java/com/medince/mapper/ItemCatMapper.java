package com.medince.mapper;

import java.util.List;

import com.medince.pojo.ItemCat;
import com.medince.pojo.ItemCatExample;
import org.apache.ibatis.annotations.Param;

public interface ItemCatMapper {
    int countByExample(ItemCatExample example);

    int deleteByExample(ItemCatExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ItemCat record);

    int insertSelective(ItemCat record);

    List<ItemCat> selectByExample(ItemCatExample example);

    ItemCat selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ItemCat record, @Param("example") ItemCatExample example);

    int updateByExample(@Param("record") ItemCat record, @Param("example") ItemCatExample example);

    int updateByPrimaryKeySelective(ItemCat record);

    int updateByPrimaryKey(ItemCat record);
}