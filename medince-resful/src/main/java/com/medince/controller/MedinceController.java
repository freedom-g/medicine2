package com.medince.controller;

import com.medince.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.medince.service.inteface.MedinceService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/medin")
public class MedinceController {

    @Autowired
    MedinceService meService;

    @RequestMapping("/query/{itemId}/{username}")
    public MedicineMessage query(@PathVariable String itemId,@PathVariable String username) {
        return meService.query(itemId,username);

    };

    //查询商品的详情信息
    @RequestMapping("/queryDesc/{itemId}")
    public ItemDesc queryDesc(@PathVariable String itemId) {
        return meService.queryDesc(itemId);
    }

    //查询药品的说明书
    @RequestMapping("/queryExplain/{itemId}")
    public ItemExplain queryExplain(@PathVariable Integer itemId) {
        return meService.queryExplain(itemId);
    }

    //查询药品的销售记录
    @RequestMapping("/querySales/{itemId}")
    public List<Sales> querySales(@PathVariable String itemId) {
        return meService.querySales(itemId);
    }

    //查询药品的评价
    @RequestMapping("/queryAppraise/{drugId}/{rank}")
    public List<Appraise> queryAppraise(@PathVariable String drugId, @PathVariable("rank")Integer rank) {
        return meService.queryAppraise(drugId,rank);
    }

    //查询评价总数
    @RequestMapping("/queryAppraise/count/{id}")
    public Integer queryAppraise(@PathVariable Integer id) {
        return meService.queryAppraiseCount(id);
    }

    //查询好中差评的个数
    @RequestMapping("/queryAppraise/num/{itemId}/{id}")
    public Integer queryAppraiseNum(@PathVariable Integer itemId,@PathVariable("id")Integer id){
        return meService.queryAppraiseNum(itemId,id);
    }

    @RequestMapping("/sales/count/{id}")
    public Integer salesCount(@PathVariable Integer id){
        return meService.salesCount(id);
    }
}
