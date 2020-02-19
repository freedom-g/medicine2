package com.medince.service.inteface;

import com.medince.pojo.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface MedinceService {

    MedicineMessage query(String itemId,String username);

    //查询商品的详情信息
    public ItemDesc queryDesc(String itemId);

    //查询药品的说明书
    public ItemExplain queryExplain(Integer itemId);

    //查询药品的销售记录
    public List<Sales> querySales(String itemId);

    //查询药品的评价
    public List<Appraise> queryAppraise(String drugId, Integer rank);

    //查询评价的总条数
    public Integer queryAppraiseCount(Integer id);

    //查询各个评价的个数
    public Integer queryAppraiseNum(Integer ItemId,Integer id);

    //查询销售记录的总数
    Integer salesCount(Integer id);
}
