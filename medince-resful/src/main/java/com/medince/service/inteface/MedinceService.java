package com.medince.service.inteface;

import com.medince.pojo.*;

import java.util.List;

public interface MedinceService {

    MedicineMessage query(String itemid);

    //查询商品的详情信息
    public ItemDesc queryDesc(String itemId);

    //查询药品的说明书
    public ItemExplain queryExplain(String itemId);

    //查询药品的销售记录
    public Sales querySales(String itemId);

    //查询药品的评价
    public List<Appraise> queryAppraise(String drugId, Integer rank);

    //查询评价的总条数
    public Integer queryAppraiseCount();

    //查询各个评价的个数
    public Integer queryAppraiseNum(Integer id);
}
