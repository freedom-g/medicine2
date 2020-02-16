package com.yuekangsong.controller;

import com.medince.pojo.MedicineMessage;
import com.yuekangsong.service.MedicineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/item")
public class MedicineController {

    @Autowired
    private MedicineService medicineService;

    //查询药品的基本信息
    @RequestMapping("/message/{itemId}")
    public MedicineMessage queryMessage(@PathVariable Integer itemId){
        MedicineMessage message = medicineService.query(itemId);
        return message;
    }


    //查询药品的详情信息
    @RequestMapping(value = "/desc/{itemId}",produces = "application/json; charset=utf-8")
    public String queryDesc(@PathVariable String itemId){
        String data = medicineService.queryDesc(itemId);
        return data;
    }


    //查询药品的说明书
    @RequestMapping(value = "/explain/{itemId}",produces = "application/json; charset=utf-8")
    public String queryExplain(@PathVariable String itemId){
        String data = medicineService.queryExplain(itemId);
        return data;
    }

    /**
     * 查询药品的销售记录
     * @param itemId
     * @return
     */
    @RequestMapping(value = "/sales/{itemId}",produces = "application/json; charset=utf-8")
    public String querySales(@PathVariable String itemId){
        String data = medicineService.querySales(itemId);
        return data;
    }

    /**
     * 查询药品的评价
     * @param drugId
     * @return
     */
    @RequestMapping(value = "/appraise/{drugId}/{rank}",produces = "application/json; charset=utf-8")
    public String queryAppraise(@PathVariable String drugId,@PathVariable Integer rank){
        String data = medicineService.queryAppraise(drugId,rank);
        return data;
    }
}
