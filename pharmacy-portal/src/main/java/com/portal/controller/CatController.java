package com.portal.controller;

import com.google.gson.Gson;
import com.medince.pojo.MedicineMessage;
import httpClient.HttpClientUtil;
import json.JsonUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import result.ResultData;
import tree.CatDate;
import tree.Ping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/cat")
public class CatController {

    List<CatDate> list1 = new ArrayList<>();
    String id1 = null;
    List listId = new ArrayList();
    Map panrtId= new HashMap();
    List list = new ArrayList();
    int l = 1;
    int m = 0;

    @RequestMapping(value = "/list")
    public String CatList(Model model, HttpServletRequest request) {

        List<MedicineMessage> op = new ArrayList<>();

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
    public String getSearch(@PathVariable String id, HttpServletRequest request, Model model) {

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


        String data = HttpClientUtil.doGet("http://localhost:8086/cat/list/item/" + id);

        List<MedicineMessage> list = JsonUtils.jsonToList(data, MedicineMessage.class);

        model.addAttribute("items", list);

        String username = (String) request.getSession().getAttribute("username");
        String data1 = HttpClientUtil.doGet("http://localhost:8080/aa/user/username/" + username);
        List<MedicineMessage> json1 = new ArrayList<>();
        String[] split = data1.split(",");
        for (int i = 0; i < split.length; i++) {

            String data4 = HttpClientUtil.doGet("http://localhost:8086/cat/b/" + split[i]);
            Gson gson = new Gson();
            MedicineMessage json = gson.fromJson(data4, MedicineMessage.class);
            json1.add(json);
        }
        request.getSession().setAttribute("shang", json1);
        return "search";
    }

    @RequestMapping(value = "/ping")
    public String ping( HttpServletRequest request) {

        System.out.println("list1:"+list1);
        if (l==1) {
            for (int i = 0; i < list1.size(); i++) {



                listId.add(list1.get(i).getItem().get(0).getItem().get(0).getUrl());
                panrtId.put(list1.get(i).getItem().get(0).getItem().get(0).getUrl(),list1.get(i).getUrl());

            }

            System.out.println("ol:" + listId);
            System.out.println("panrtId:" + panrtId);



            for (int i = 0; i < listId.size(); i++) {
                System.out.println("循环里的id"+listId.get(i));
                String s = HttpClientUtil.doGet("http://localhost:8086/cat/list/item/" + listId.get(i));
                List<MedicineMessage> json = JsonUtils.jsonToList(s, MedicineMessage.class);

                System.out.println("json:" + json);
                Ping ping = new Ping();
                ping.setId(panrtId.get(listId.get(i)));
                ping.setList(json);

                list.add(ping);
            }
            request.getSession().setAttribute("json5", list);
            System.out.println("list:" + list);
            l=l+1;

        }
        return "index";
    }

//    @RequestMapping(value = "/pin")
//    public String pin(HttpServletRequest request) {
//        if (l == 1) {
//
//            Ping ping = new Ping();
//
//            for (int i = 0; i < listId.size(); i++) {
//                String s = HttpClientUtil.doGet("http://localhost:8086/cat/list/item/" + listId.get(i));
//                List<MedicineMessage> json = JsonUtils.jsonToList(s, MedicineMessage.class);
//
//                ping.setId(listId.get(i));
//                ping.setList(json);
//
//                list.add(ping);
//                System.out.println("商品数据" + json);
//            }
//            request.getSession().setAttribute("json5", list);
//            System.out.println("list:" + list);
//            l = l + 1;
//            return "index";
//        }
//
//        return "index";
//    }

}

