package com.medince.mapper;

import java.util.List;

import com.medince.pojo.ItemExplain;
import com.medince.pojo.ItemExplainExample;
import org.apache.ibatis.annotations.Param;

public interface ItemExplainMapper {
    int countByExample(ItemExplainExample example);

    int deleteByExample(ItemExplainExample example);

    int insert(ItemExplain record);

    int insertSelective(ItemExplain record);

    List<ItemExplain> selectByExample(ItemExplainExample example);

    int updateByExampleSelective(@Param("record") ItemExplain record, @Param("example") ItemExplainExample example);

    int updateByExample(@Param("record") ItemExplain record, @Param("example") ItemExplainExample example);
}