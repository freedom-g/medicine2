package com.medicine.search.mapper;


import org.apache.solr.client.solrj.SolrQuery;
import result.SearchResult;

/**
 * Created by Lenovo on 2020/1/20 .
 * 索引库信息
 * @Author: LDH
 * @date:2020/1/20  21:30
 */
public interface SerarchDao {

    /**
     * *--索引库--*
     * 根据搜索条件进行查询商品信息
     * @param query
     * @return
     * @throws Exception
     */
    public SearchResult search(SolrQuery query) throws Exception;
}
