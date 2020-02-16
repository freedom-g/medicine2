package com.medince.service;

import java.util.List;

import com.medince.mapper.*;
import com.medince.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medince.service.inteface.MedinceService;

@Service
public class MedinceServiceImpl implements MedinceService{

    @Autowired
    MedicineMessageMapper mediMapper;

    @Autowired
    ItemDescMapper itemMapper;

    @Autowired
    ItemExplainMapper explinMapper;

    @Autowired
    SalesMapper saleMapper;

    @Autowired
    AppraiseMapper appMapper;


    @Override
    public MedicineMessage query(String itemId) {

        MedicineMessage me = mediMapper.selectByPrimaryKey(Integer.valueOf(itemId));

        return me;

    }

    @Override
    public ItemDesc queryDesc(String itemId) {
        // TODO Auto-generated method stub

        ItemDescExample example = new ItemDescExample();
        ItemDescExample.Criteria cr = example.createCriteria();
        cr.andItemIdEqualTo(itemId);

        List<ItemDesc> list = itemMapper.selectByExampleWithBLOBs(example);

        if(list != null && list.size()>0) {
            return list.get(0);
        }

        return null;
    }

    @Override
    public ItemExplain queryExplain(String itemId) {
        // TODO Auto-generated method stub

        ItemExplainExample example = new ItemExplainExample();

        ItemExplainExample.Criteria cri = example.createCriteria();

        List<ItemExplain> list = explinMapper.selectByExample(example);

        if(list != null && list.size()>0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public Sales querySales(String itemId) {
        // TODO Auto-generated method stub

        SalesExample example = new SalesExample();
        SalesExample.Criteria cri = example.createCriteria();
        cri.andItemIdEqualTo(itemId);

        List<Sales> list = saleMapper.selectByExample(example);

        if(list != null && list.size()>0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<Appraise> queryAppraise(String drugId,Integer rank) {
        // TODO Auto-generated method stub

        AppraiseExample example = new AppraiseExample();
        AppraiseExample.Criteria criteria = example.createCriteria();
        criteria.andDrugIdEqualTo(Integer.valueOf(drugId));
        if(rank!=0) {
            criteria.andRankEqualTo(rank);
        }
        List<Appraise> list = appMapper.selectByExample(example);

        return list;
    }

    @Override
    public Integer queryAppraiseCount() {

        int count = appMapper.count();
        if("".equals(count)){
            return 0;
        }
        return count;
    }

    @Override
    public Integer queryAppraiseNum(Integer id) {
        int num = appMapper.num(id);
        return num;
    }


}
