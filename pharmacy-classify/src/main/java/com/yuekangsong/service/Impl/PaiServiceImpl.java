package com.yuekangsong.service.Impl;

import com.yuekangsong.service.PaiService;
import httpClient.HttpClientUtil;
import org.springframework.stereotype.Service;

/**
 * Created by lenovo on 2020/1/29.
 */

@Service
public class PaiServiceImpl implements PaiService {


  @Override
    public String zui(int id) {
        String data = HttpClientUtil.doGet("http://localhost:8080/aa/medin/zui/"+id);
        return data;
    }


    //查找分类
    @Override
    public String getItemCatList() {
        String data = HttpClientUtil.doGet("http://localhost:8080/aa/item/cat/get");
        return data;
    }

    //查找所有商品
    @Override
    public String getItemList(Integer id) {
        String data = HttpClientUtil.doGet("http://localhost:8080/aa/item/cat/list/item/" + id);
        return data;
    }
}
