package com.medince.mapper;

import java.util.List;
import java.util.Map;

import com.medince.pojo.MedicineMessage;
import com.medince.pojo.MedicineMessageExample;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface MedicineMessageMapper {
    int countByExample(MedicineMessageExample example);

    int deleteByExample(MedicineMessageExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MedicineMessage record);

    int insertSelective(MedicineMessage record);

    List<MedicineMessage> selectByExample(MedicineMessageExample example);

    MedicineMessage selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") MedicineMessage record, @Param("example") MedicineMessageExample example);

    int updateByExample(@Param("record") MedicineMessage record, @Param("example") MedicineMessageExample example);

    int updateByPrimaryKeySelective(MedicineMessage record);

    int updateByPrimaryKey(MedicineMessage record);

    @Select("select * from medicine_message")
    List<Map<String,Object>> importAllItems();

    //新增查询商品状态方法
    @Select("select * from medicine_message where status=1 limit 0,2")
    List<MedicineMessage> selectStatus();
}