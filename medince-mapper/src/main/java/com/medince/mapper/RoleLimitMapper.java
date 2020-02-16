package com.medince.mapper;

import java.util.List;

import com.medince.pojo.RoleLimit;
import com.medince.pojo.RoleLimitExample;
import org.apache.ibatis.annotations.Param;

public interface RoleLimitMapper {
    int countByExample(RoleLimitExample example);

    int deleteByExample(RoleLimitExample example);

    int deleteByPrimaryKey(Long id);

    int insert(RoleLimit record);

    int insertSelective(RoleLimit record);

    List<RoleLimit> selectByExample(RoleLimitExample example);

    RoleLimit selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") RoleLimit record, @Param("example") RoleLimitExample example);

    int updateByExample(@Param("record") RoleLimit record, @Param("example") RoleLimitExample example);

    int updateByPrimaryKeySelective(RoleLimit record);

    int updateByPrimaryKey(RoleLimit record);
}