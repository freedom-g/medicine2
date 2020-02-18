package com.medince.service.inteface;

import com.medince.pojo.MedicineMessage;
import com.medince.utils.ResultDate;

import java.util.List;

public interface ItemCatService {

	public ResultDate getItemCatLis();

	public List<MedicineMessage> getCid(Integer cid);
	
	
}
