package com.medince.service;

import java.util.ArrayList;
import java.util.List;

import com.medince.mapper.MedicineMessageMapper;
import com.medince.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medince.mapper.ItemCatMapper;
import com.medince.service.inteface.ItemCatService;
import tree.CatDate;
import com.medince.utils.ResultDate;

@Service
public class ItemCatServiceimpl implements ItemCatService{

	@Autowired
	private ItemCatMapper catMapper;

	@Autowired
    private MedicineMessageMapper messageMapper;

	//根据分类id查找商品
	@Override
	public List<MedicineMessage> getCid(Integer cid) {
		return null;
	}

	//查找所有商品
    @Override
    public List<MedicineMessage> getItemList(Long id) {

        MedicineMessageExample example = new MedicineMessageExample();
        MedicineMessageExample.Criteria criteria = example.createCriteria();
        criteria.andCidEqualTo(id);

        List<MedicineMessage> medicineMessages = messageMapper.selectByExample(example);

        return medicineMessages;

    }

    //分类
	@Override
	public ResultDate getItemCatLis() {
		// TODO Auto-generated method stub
		ResultDate result = new ResultDate();
		result.setData(getCatList(0));
		return result;
	}



	private List<CatDate> getCatList(Integer parentId) {

		ItemCatExample item = new ItemCatExample();

		ItemCatExample.Criteria cr = item.createCriteria();

		cr.andParentIdEqualTo(parentId);

		List<ItemCat> list = catMapper.selectByExample(item);

		List<CatDate> resulList = new ArrayList();

		for(ItemCat ItemCat : list) {

			if(ItemCat.getIsParent()==1) {
				CatDate cat = new CatDate();
				if(parentId == 0) {
					cat.setName("<a href='/products/" + ItemCat.getId() + ".html'>" + ItemCat.getName() + "</a>");
                    //cat.setName(ItemCat.getName());
				} else {
					cat.setName(ItemCat.getName());
				}
				//"/products/" + ItemCat.getId() + ".html"
				cat.setUrl(String.valueOf(ItemCat.getId()));
				cat.setItem(getCatList(ItemCat.getId()));
				resulList.add(cat);
			} else {
				CatDate cat2 = new CatDate();
				cat2.setName(ItemCat.getName());
				cat2.setUrl(String.valueOf(ItemCat.getId()));
				//"/products/" + ItemCat.getId() + ".html|" + ItemCat.getName() + ""
				resulList.add(cat2);
			}

		}
		return resulList;
	}

}
