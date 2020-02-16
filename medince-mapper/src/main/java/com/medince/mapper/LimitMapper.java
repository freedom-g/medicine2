package com.medince.mapper;

import java.util.List;

import com.medince.pojo.Limit;
import com.medince.pojo.LimitExample;
import org.apache.ibatis.annotations.Param;

public interface LimitMapper {
    int countByExample(LimitExample example);

    int deleteByExample(LimitExample example);

    int deleteByPrimaryKey(Long lid);

    int insert(Limit record);

    int insertSelective(Limit record);

    List<Limit> selectByExample(LimitExample example);

    Limit selectByPrimaryKey(Long lid);

    int updateByExampleSelective(@Param("record") Limit record, @Param("example") LimitExample example);

    int updateByExample(@Param("record") Limit record, @Param("example") LimitExample example);

    int updateByPrimaryKeySelective(Limit record);

    int updateByPrimaryKey(Limit record);
}