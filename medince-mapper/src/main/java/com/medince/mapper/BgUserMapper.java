package com.medince.mapper;

import java.util.List;

import com.medince.pojo.BgUser;
import com.medince.pojo.BgUserExample;
import org.apache.ibatis.annotations.Param;

public interface BgUserMapper {
    int countByExample(BgUserExample example);

    int deleteByExample(BgUserExample example);

    int deleteByPrimaryKey(Long uid);

    int insert(BgUser record);

    int insertSelective(BgUser record);

    List<BgUser> selectByExample(BgUserExample example);

    BgUser selectByPrimaryKey(Long uid);

    int updateByExampleSelective(@Param("record") BgUser record, @Param("example") BgUserExample example);

    int updateByExample(@Param("record") BgUser record, @Param("example") BgUserExample example);

    int updateByPrimaryKeySelective(BgUser record);

    int updateByPrimaryKey(BgUser record);
}