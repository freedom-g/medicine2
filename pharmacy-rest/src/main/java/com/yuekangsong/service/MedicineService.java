package com.yuekangsong.service;

import com.medince.pojo.MedicineMessage;

public interface MedicineService {

    //查询药品的基本信息
    public MedicineMessage query(Integer itemId);

    //查询商品的详情信息
    public String queryDesc(String itemId);

    //查询药品的说明书
    public String queryExplain(String itemId);

    //查询药品的销售记录
    public String querySales(String itemId);

    //查询药品的评价
    public String queryAppraise(String drugId,Integer rank);
}
