package com.medince.service.inteface;

import org.apache.solr.client.solrj.SolrQuery;
import result.SearchResult;

/**
 * Created by Lenovo on 2020/2/11.
 *
 * @Author: LDH
 * @date:2020/2/11 14:45
 */
public interface SolrDao {

    public SearchResult search(SolrQuery query) throws Exception ;
}
