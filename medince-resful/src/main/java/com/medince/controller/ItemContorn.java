package com.medince.controller;

import com.medince.pojo.MedicineMessage;
import com.medince.service.inteface.ItemCatService;
import com.medince.utils.ResultDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/item")
public class ItemContorn {

	@Autowired
	ItemCatService sercice;
	
	@RequestMapping("/cat/get")
	public ResultDate getCat() {
		
		return sercice.getItemCatLis();
	}

	@RequestMapping("/cat/cid/{cid}")
    public List<MedicineMessage> getCid(@PathVariable("cid")Integer cid){
	    return sercice.getCid(cid);
    }
}
