package com.yuekangsong.controller;

import com.yuekangsong.service.PaiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by lenovo on 2020/1/29.
 */

@Controller
@RequestMapping("/cat")
public class PaiController {

    @Autowired
    private PaiService paiService;


    //根据用户id查找最近浏览商品的id(用户表里有一个浏览商品的id,是最后的那个预留字段作为浏览的id)
    @RequestMapping(value = "/b/{id}",produces = "application/json; charset=utf-8")
    @ResponseBody
    public String zui(@PathVariable Integer id){
       return paiService.zui(id);
    }


    //分类
    @RequestMapping(value = "/list",produces = "application/json; charset=utf-8")
    @ResponseBody
    public String getCatList1() {
        String data = paiService.getItemCatList();
        return data;
    }

    //分类商品
    @RequestMapping(value = "/list/item/{id}",produces = "application/json; charset=utf-8")
    @ResponseBody
    public String getCatList1(@PathVariable Integer id) {
        String data = paiService.getItemList(id);
        return data;
    }
}
