package com.medince.service;

import java.util.ArrayList;
import java.util.List;

import com.medince.mapper.*;
import com.medince.pojo.ItemCat;
import com.medince.pojo.ItemCatExample;
import com.medince.pojo.MedicineMessage;
import com.medince.pojo.MedicineMessageExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medince.service.inteface.ItemCatService;
import tree.CatDate;
import com.medince.utils.ResultDate;

@Service
public class ItemCatServiceimpl implements ItemCatService{

	@Autowired
	private ItemCatMapper catMapper;

	@Autowired
    private MedicineMessageMapper messageMapper;
	
	@Override
	public ResultDate getItemCatLis() {
		// TODO Auto-generated method stub
		ResultDate result = new ResultDate();
		result.setData(getCatList(0));
		return result;
	}

	//根据分类id查询商品
    @Override
    public List<MedicineMessage> getCid(Long cid) {

        MedicineMessageExample example = new MedicineMessageExample();
        MedicineMessageExample.Criteria criteria = example.createCriteria();
        criteria.andCidEqualTo(cid);

        List<MedicineMessage> medicineMessages = messageMapper.selectByExample(example);

        return medicineMessages;
    }

    private List<Object> getCatList(Integer parentId) {
		
		ItemCatExample item = new ItemCatExample();
		
		ItemCatExample.Criteria cr = item.createCriteria();
		
		cr.andParentIdEqualTo(parentId);
		
		List<ItemCat> list = catMapper.selectByExample(item);
		
		List<Object> resulList = new ArrayList();
		
		for(ItemCat ItemCat : list) {
			
			if(ItemCat.getIsParent()==1) {
				CatDate cat = new CatDate();
				if(parentId == 0) {
				cat.setName("<a href='/products/" + ItemCat.getId() + ".html'>" + ItemCat.getName() + "</a>");
			} else {
				cat.setName(ItemCat.getName());
			}
				cat.setUrl("/products/" + ItemCat.getId() + ".html");
				cat.setItem(getCatList(ItemCat.getId()));
				resulList.add(cat);
			} else {
				resulList.add("/products/" + ItemCat.getId() + ".html|" + ItemCat.getName() + "");
			}
			
		}
		return resulList;
	}

}
