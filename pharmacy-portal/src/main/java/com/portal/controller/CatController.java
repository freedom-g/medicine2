package com.portal.controller;

import com.google.gson.Gson;
import com.medince.pojo.MedicineMessage;
import httpClient.HttpClientUtil;
import json.JsonUtils;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import result.ResultData;
import tree.CatDate;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/cat")
public class CatController {

    List<CatDate> list1 = new ArrayList<>();
    String id1 = null;

    @RequestMapping(value = "/list")
    public String CatList(Model model, HttpServletRequest request) {

        String data = HttpClientUtil.doGet("http://localhost:8086/cat/list");

        Gson gson = new Gson();
        ResultData json = gson.fromJson(data, ResultData.class);

        List<CatDate> list = json.getData();
        list1 = list;
        System.out.println("分类数据" + list);
        request.getSession().setAttribute("data", list);

        return "index";

    }

    @RequestMapping(value = "/list2")
    public String CatList2(Model model, HttpServletRequest request) {

        String data = HttpClientUtil.doGet("http://localhost:8086/cat/list");

        Gson gson = new Gson();
        ResultData json = gson.fromJson(data, ResultData.class);

        List<CatDate> list = json.getData();
        model.addAttribute("data", list);
        request.setAttribute("data", list);

        return "search";

    }

    @RequestMapping(value = "/searchs/{id}")
    public String getSearch(@PathVariable String id, HttpServletRequest request,Model model) {

        if (!id.equals("index")) {
            id1 = id;
        }

        id = id1;

        List<CatDate> shu = new ArrayList<>();
        for (int i = 0; i < list1.size(); i++) {
            for (int j = 0; j < list1.get(i).getItem().size(); j++) {
                for (int x = 0; x < list1.get(i).getItem().get(j).getItem().size(); x++) {
                    if (id.equals(list1.get(i).getItem().get(j).getItem().get(x).getUrl())) {
                        String[] split = list1.get(i).getName().split(">");
                        String a = split[1];
                        String[] split1 = a.split("<");
                        String b = split1[0];
                        request.getSession().setAttribute("yi", b);
                        request.getSession().setAttribute("er", list1.get(i).getItem().get(j).getName());
                        request.getSession().setAttribute("san", list1.get(i).getItem().get(j).getItem().get(x).getName());
                        request.getSession().setAttribute("sanid", list1.get(i).getItem().get(j).getItem().get(x).getUrl());
                        for (int c = 0; c < list1.get(i).getItem().get(j).getItem().size(); c++) {
                            if (!list1.get(i).getItem().get(j).getItem().get(x).getName().equals(list1.get(i).getItem().get(j).getItem().get(c).getName())) {
                                shu.add(list1.get(i).getItem().get(j).getItem().get(c));
                            }
                        }
                        request.getSession().setAttribute("ji", shu);
                    }
                }
            }
        }



        String data = HttpClientUtil.doGet("http://localhost:8086/cat/list/item/"+id);

        List<MedicineMessage> list = JsonUtils.jsonToList(data, MedicineMessage.class);

        model.addAttribute("items", list);

        return "search";
    }

}
