package com.medince.service;

import com.medince.mapper.MedicineMessageMapper;
import com.medince.service.inteface.SearchService;
import com.medince.service.inteface.SolrDao;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import result.MedicineResult;
import result.SearchResult;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Lenovo on 2019/12/9.
 *
 * @Author: LDH
 * @date:2019/12/9 19:09
 */
@Service
public class SearchServiceImpl implements SearchService {

    @Autowired
    private MedicineMessageMapper medinceService;

    @Autowired
    private SolrClient solrClient;

    @Autowired SolrDao solrDao;



    @Override
    public MedicineResult importAllItems() {
        //查询商品列表
        List<Map<String,Object>> list = medinceService.importAllItems();
        System.out.println(list.size());
        try {

            //把商品信息写入索引库
            for (Map map: list) {
                //创建一个SolrInputDocument对象
                SolrInputDocument document = new SolrInputDocument();
                document.setField("id", map.get("id"));
                document.setField("item_name", map.get("item_name"));
                document.setField("item_brand", map.get("item_brand"));
                document.setField("item_stack", map.get("item_stack"));
                document.setField("item_bazaar", map.get("item_bazaar"));
                document.setField("param_item", map.get("param_item"));
                //写入索引库
                solrClient.add(document);
            }
            //提交修改
            solrClient.commit();
            ;
        } catch (Exception e) {

            e.printStackTrace();
            return MedicineResult.build(500, e.getMessage());
        }

        return MedicineResult.ok(list);
    }


    /**
     * 高级搜索
     * @param queryString
     * @param page
     * @param rows
     * @return
     * @throws Exception
     */
    @Override
    public SearchResult search(String queryString, int page, int rows) throws Exception {
        //创建查询对象
        SolrQuery query = new SolrQuery();
        //设置查询条件
        query.setQuery(queryString);
        //设置分页
        query.setStart((page - 1) * rows);
        query.setRows(rows);
        //设置默认搜素域
        query.set("df", "item_keywords");
        //设置高亮显示
        query.setHighlight(true);
        query.addHighlightField("item_title");
        query.setHighlightSimplePre("<em style=\"color:red\">");
        query.setHighlightSimplePost("</em>");
        //执行查询
        SearchResult searchResult = solrDao.search(query);
        System.out.println(searchResult);
        //计算查询结果总页数
        long recordCount = searchResult.getRecordCount();
        long pageCount = recordCount / rows;
        if (recordCount % rows > 0) {
            pageCount++;
        }
        searchResult.setPageCount(pageCount);
        searchResult.setCurPage(page);

        return searchResult;

    }
}
