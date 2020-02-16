package com.yuekangsong.service;

import com.taotao.pojo.*;
import httpClient.HttpClientUtil;
import json.JsonUtils;
import org.springframework.stereotype.Service;

@Service
public class MedicineServiceImpl implements MedicineService {

    /**
     * 查询药品的基本信息
     * @param itemId
     * @return
     */
    @Override
    public MedicineMessage query(Integer itemId) {

        String json = HttpClientUtil.doGet("http://localhost:8080/aa/medin/query/" + itemId);
        MedicineMessage medicineMessage = JsonUtils.jsonToPojo(json, MedicineMessage.class);
        return medicineMessage;
    }

    /**
     * 查询药品的详情信息
     * @param itemId
     * @return
     */
    @Override
    public String queryDesc(String itemId) {
        String data = HttpClientUtil.doGet("http://localhost:8080/aa/medin/queryDesc/" + itemId);
        return data;
    }

    /**
     * 查询药品的说明书
     * @param itemId
     * @return
     */
    @Override
    public String queryExplain(String itemId) {
        String data = HttpClientUtil.doGet("http://localhost:8080/aa/medin/queryExplain/" + itemId);
        return data;
    }

    /**
     * 查询药品的销售记录
     * @param itemId
     * @return
     */
    @Override
    public String querySales(String itemId) {
        String data = HttpClientUtil.doGet("http://localhost:8080/aa/medin/querySales/" + itemId);
        return data;
    }

    /**
     * 查询药品的评价
     * @param drugId
     * @return
     */
    @Override
    public String queryAppraise(String drugId,Integer rank) {
        String data = HttpClientUtil.doGet("http://localhost:8080/aa/medin/queryAppraise/" + drugId+"/"+rank);
        return data;
    }

}
