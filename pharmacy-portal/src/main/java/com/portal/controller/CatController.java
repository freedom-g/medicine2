package com.portal.controller;

import com.google.gson.Gson;
import httpClient.HttpClientUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import result.ResultData;
import tree.CatDate;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/cat")
public class CatController {

    @RequestMapping(value = "/list",produces = "application/json; charset=utf-8")
    @ResponseBody
    public String CatList(HttpServletRequest request){

        String data = HttpClientUtil.doGet("http://localhost:8086/cat/list");

        Gson gson = new Gson();
        ResultData json = gson.fromJson(data,ResultData.class);

        List<CatDate> list = json.getData();

        System.out.println("list"+list);

        request.setAttribute("data",list);

        return "index";
    }

}
