package com.medince.mapper;

import java.util.List;

import com.medince.pojo.ItemDesc;
import com.medince.pojo.ItemDescExample;
import org.apache.ibatis.annotations.Param;

public interface ItemDescMapper {
    int countByExample(ItemDescExample example);

    int deleteByExample(ItemDescExample example);

    int insert(ItemDesc record);

    int insertSelective(ItemDesc record);

    List<ItemDesc> selectByExampleWithBLOBs(ItemDescExample example);

    List<ItemDesc> selectByExample(ItemDescExample example);

    int updateByExampleSelective(@Param("record") ItemDesc record, @Param("example") ItemDescExample example);

    int updateByExampleWithBLOBs(@Param("record") ItemDesc record, @Param("example") ItemDescExample example);

    int updateByExample(@Param("record") ItemDesc record, @Param("example") ItemDescExample example);
}