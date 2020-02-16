package com.medince.controller;

import com.medince.service.inteface.SearchService;
import org.apache.commons.lang3.StringUtils;
import org.apache.solr.client.solrj.SolrServerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import result.MedicineResult;
import result.SearchResult;

import java.io.IOException;

/**
 * Created by Lenovo on 2020/2/10.
 *
 * @Author: LDH
 * @date:2020/2/10 20:45
 * /manager/importall
 */
@RestController
@RequestMapping("/manager")
public class SearchController {

    @Autowired
    private SearchService searchService;


    //批量增加
    @RequestMapping("/importall")
    public MedicineResult addUsers() throws IOException, SolrServerException {
        MedicineResult medicineResult = searchService.importAllItems();
        return medicineResult;
    }


    @RequestMapping(value = "/query/{queryString}/{page}/{rows}", method = RequestMethod.GET)
    @ResponseBody
    public MedicineResult search(@PathVariable("queryString") String queryString,
                                 @PathVariable("page") String page,
                                 @PathVariable("rows") String rows) {
        System.out.println("进入高级搜索controller");
        System.out.println(queryString);
        System.out.println(page);
        System.out.println(rows);
        if (page == null) {
            page = "1";
            Integer.parseInt(page);
            System.out.println(page);
            if (rows == null) {
                rows = "60";
                Integer.parseInt(rows);
                System.out.println(rows);
            }
        }
        //查询条件不能为空
        if (StringUtils.isBlank(queryString)) {
            return MedicineResult.build(400, "查询条件不能为空");
        }
        SearchResult searchResult = null;
        try {
            queryString = new String(queryString.getBytes("iso8859-1"), "utf-8");
            ;
            searchResult = searchService.search(queryString, Integer.parseInt(page), Integer.parseInt(rows));
            System.out.println(searchResult);
        } catch (Exception e) {
            e.printStackTrace();
            return MedicineResult.build(500, e.getMessage());
        }
        return MedicineResult.ok(searchResult);
    }

}
