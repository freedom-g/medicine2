package com.portal.controller;

import com.medince.pojo.MedicineMessage;
import httpClient.HttpClientUtil;
import json.JsonUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import result.MedinceResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/item")
public class ItemController {


    //查询药品的基本信息
    @RequestMapping("/message/{itemId}")
    public String queryMessage(@PathVariable Integer itemId, HttpServletRequest request, Model model) {

        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        System.out.println(username);

        String json = HttpClientUtil.doGet("http://localhost:8085/item/message/" + itemId + "/" + username);
        System.out.println(json);

        MedicineMessage medicineMessage = JsonUtils.jsonToPojo(json, MedicineMessage.class);
        model.addAttribute("med", medicineMessage);
        return "item";
    }

    //查询药品的详情信息
    @RequestMapping(value = "/desc/{itemId}", produces = "application/json; charset=utf-8")
    @ResponseBody
    public MedinceResult queryDesc(@PathVariable String itemId) {
        String data = HttpClientUtil.doGet("http://localhost:8085/item/desc/" + itemId);
        return MedinceResult.ok(data);
    }

    //查询药品的说明书
    @RequestMapping(value = "/explain/{itemId}", produces = "application/json; charset=utf-8")
    @ResponseBody
    public MedinceResult queryExplain(@PathVariable String itemId) {
        String data = HttpClientUtil.doGet("http://localhost:8085/item/explain/" + itemId);
        return MedinceResult.ok(data);
    }

    //查询药品的评价
    @RequestMapping(value = "/appraise/{drugId}/{rank}", produces = "application/json; charset=utf-8")
    @ResponseBody
    public MedinceResult queryAppraise(@PathVariable String drugId, @PathVariable Integer rank) {
        String data = HttpClientUtil.doGet("http://localhost:8085/item/appraise/" + drugId + "/" + rank);
        return MedinceResult.ok(data);
    }

    //查询商品评价的总数
    @RequestMapping(value = "/appraise/count/{id}", produces = "application/json; charset=utf-8")
    @ResponseBody
    public MedinceResult queryAppraiseCount(@PathVariable Integer id) {
        String data = HttpClientUtil.doGet("http://localhost:8080/aa/medin/queryAppraise/count/" + id);
        return MedinceResult.ok(data);
    }


    //查询商品好中差评的个数
    @RequestMapping(value = "/appraise/num/{itemId}/{id}", produces = "application/json; charset=utf-8")
    @ResponseBody
    public MedinceResult queryAppraiseNum(@PathVariable Integer itemId, @PathVariable Integer id) {
        String data = HttpClientUtil.doGet("http://localhost:8080/aa/medin/queryAppraise/num/" + itemId + "/" + id);
        return MedinceResult.ok(data);
    }


    //查询药品的销售记录
    @RequestMapping(value = "/sales/{itemId}", produces = "application/json; charset=utf-8")
    @ResponseBody
    public MedinceResult querySales(@PathVariable String itemId) {
        String data = HttpClientUtil.doGet("http://localhost:8085/item/sales/" + itemId);
        return MedinceResult.ok(data);
    }

    //查询销售记录的条数
    @RequestMapping(value = "/sales/count/{id}", produces = "application/json; charset=utf-8")
    @ResponseBody
    public MedinceResult querySales(@PathVariable Integer id) {
        String data = HttpClientUtil.doGet("http://localhost:8080/aa/medin/sales/count/" + id);
        return MedinceResult.ok(data);
    }
}
