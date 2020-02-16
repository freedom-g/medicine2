package com.medince.service;

import com.medince.service.inteface.SolrDao;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import result.SearchResult;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Lenovo on 2020/2/11.
 *
 * @Author: LDH
 * @date:2020/2/11 14:46
 */
@Service
public class SolrServiceImpl implements SolrDao {

    @Autowired
    private SolrClient solrClient;

    @Override
    public SearchResult search(SolrQuery query) throws Exception {
        //返回值对象
        SearchResult result = new SearchResult();
        //根据查询条件查询索引库
        QueryResponse queryResponse = solrClient.query(query);
        //取查询结果
        SolrDocumentList solrDocumentList = queryResponse.getResults();
        //取查询结果总数量
        result.setRecordCount(solrDocumentList.getNumFound());
        //商品列表
        List<Map<String, Object>> itemList = new ArrayList<>();
        //取高亮显示
        Map<String, Map<String, List<String>>> highlighting = queryResponse.getHighlighting();
        //取商品列表
        for (SolrDocument solrDocument : solrDocumentList) {
            //创建一商品对象
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("id", solrDocument.get("id"));
            //取高亮显示的结果
            List<String> list = highlighting.get(solrDocument.get("id")).get("item_name");
            String name = "";
            if (list != null && list.size() > 0) {
                name = list.get(0);
            } else {
                name = (String) solrDocument.get("item_name");
            }
            map.put("item_name", name);
            map.put("item_brand", solrDocument.get("item_brand"));
            map.put("item_stack", solrDocument.get("item_stack"));
            map.put("item_bazaar", solrDocument.get("item_bazaar"));
            map.put("param_item", solrDocument.get("param_item"));
            //添加的商品列表
            itemList.add(map);
        }
        result.setItemList(itemList);
        return result;
    }

}
