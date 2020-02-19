package com.portal.controller;

import com.medince.pojo.Content;
import com.medince.pojo.MedicineMessage;
import com.portal.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2020/2/9 0009.
 */
@Controller
public class ContentController {

    @Autowired
    private ContentService contentService;

    @RequestMapping("/imgContent")
    public String getContentList(HttpServletRequest request){
        List<Content> contentList = contentService.getContentList();
        request.getSession().setAttribute("content",contentList);
        System.out.println("123:"+contentList);
        return "index";
    }
    @RequestMapping("/messagesStatus")
    public String getMessagesStatus(HttpServletRequest request){
        List<MedicineMessage> messageStatus = contentService.getMessageStatus();
        request.getSession().setAttribute("messageStatus",messageStatus);
        System.out.println("Status:"+messageStatus);
        return "index";
    }

}
