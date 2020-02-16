package com.medince.service.inteface;

import org.apache.solr.client.solrj.SolrQuery;
import result.MedicineResult;
import result.SearchResult;

/**
 * Created by Lenovo on 2020/1/20.
 *用于search
 * @Author: LDH
 * @date:2020/1/20 21:50
 */
public interface SearchService {

    //导入商品数据到索引库
    public MedicineResult importAllItems();

    //高级搜索
    public SearchResult search(String queryString, int page, int rows) throws Exception;
}
