package com.advertis.conterller;

import com.advertis.service.ContentService;
import com.medince.pojo.Content;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import result.MedinceResult;

import java.util.List;

/**
 * Created by Administrator on 2020/2/8 0008.
 */
@Controller
public class ContentConterller {
    @Autowired
    private ContentService contentService;

    @RequestMapping("/content")
    @ResponseBody
    public MedinceResult getContentList(){

        try {
            List<Content> contentList = contentService.getContentList();
            System.out.println(contentList);
            return MedinceResult.ok(contentList);
        } catch (Exception e) {
            e.printStackTrace();
            return MedinceResult.build(500, e.getMessage());
        }

    }
}
