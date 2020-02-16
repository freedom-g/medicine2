package com.medicine.search.service;


import result.MedicineResult;
import result.SearchResult;

/**
 * Created by Lenovo on 2020/1/20.
 *
 * @Author: LDH
 * @date:2020/1/20 21:50
 */
public interface SearchService {
    //根据搜索条件进行查询商品信息
    public SearchResult search(String queryString, int page, int rows) throws Exception;
    //根据商品ID添加索引库
    public MedicineResult addDocument(long itemId) throws Exception;
}
