package com.yuekangsong.service.Impl;
import com.yuekangsong.service.PaiService;
import httpClient.HttpClientUtil;
import org.springframework.stereotype.Service;
/**
 * Created by lenovo on 2020/1/29.
 */

@Service
public class PaiServiceImpl implements PaiService{

    /*@Override
    public List Pai(int id) {
        return null;
    }

    @Override
    public MedicineMessage zui(int id) {
        return null;
    }*/


    //查找分类
    @Override
    public String getItemCatList() {
        String data = HttpClientUtil.doGet("http://localhost:8080/aa/item/cat/get");
        System.out.println(data);
        return data;
    }
}
