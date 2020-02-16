package com.portal.controller;

import com.portal.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2020/2/9 0009.
 */
@Controller
public class ContentController {

    @Autowired
   private ContentService contentService;

    @RequestMapping("/imgContent")
    @ResponseBody
    public String getList(){
        String contentList = contentService.getContentList();
        System.out.println("123:"+contentList);
        return contentList;
    }

}
