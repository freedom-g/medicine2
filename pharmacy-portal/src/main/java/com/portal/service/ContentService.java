package com.portal.service;

import com.medince.pojo.Content;
import com.medince.pojo.MedicineMessage;

import java.util.List;

/**
 * Created by Administrator on 2020/2/1 0001.
 */
public interface ContentService {
    //查询大广告信息
    public List<Content> getContentList();

    //查询促销商品信息
    public List<MedicineMessage> getMessageStatus();
}
