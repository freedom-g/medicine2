package com.yuekangsong.service;


/**
 * Created by lenovo on 2020/1/29.
 */
public interface PaiService {

    //根据分类id查找该分类下根据销售量排行由高到低的所有商品
    //public List Pai(int id);

    //根据用户id查找最近浏览商品的id(用户表里有一个浏览商品的id,是最后的那个预留字段作为浏览的id)
    //public MedicineMessage zui(int id);

    //分类
    public String getItemCatList();
}
