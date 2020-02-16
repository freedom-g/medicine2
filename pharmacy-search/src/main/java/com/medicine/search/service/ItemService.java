package com.medicine.search.service;


import result.MedicineResult;

/**
 * Created by Lenovo on 2020/1/20 .
 *
 * @Author: LDH
 * @date:2020/1/20  19:08
 */
public interface ItemService {
    //导入商品数据到索引库
    public MedicineResult importAllItems();
}
