package com.portal.service.impl;

import com.medince.pojo.Content;
import com.portal.service.ContentService;
import httpClient.HttpClientUtil;
import json.JsonUtils;
import org.springframework.stereotype.Service;
import result.MedicineResult;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2020/2/1 0001.
 */
@Service
public class ContentServiceImpl implements ContentService {
    public String getContentList(){

        String result = HttpClientUtil.doGet("http://localhost:8083/advertising/content");
        try {
            MedicineResult medicineResult = MedicineResult.formatToList(result, Content.class);
            List<Content> list=(List<Content>)medicineResult.getData();
            List<Map> resultList = new ArrayList<>();
        //创建一个jsp页码要求的pojo列表
        for (Content tbContent : list) {
            Map map = new HashMap<>();
            map.put("srcS", tbContent.getPic());
            map.put("heightA", 240);
            map.put("widthA", 670);
            map.put("widthB", 550);
            map.put("heightB", 240);
            map.put("hrefS", tbContent.getUrl());
            map.put("altS", tbContent.getTitle());
            resultList.add(map);
        }
        return JsonUtils.objectToJson(resultList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
