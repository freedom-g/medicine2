package com.medince.service;

import java.util.List;

import com.medince.mapper.*;
import com.medince.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medince.service.inteface.MedinceService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class MedinceServiceImpl implements MedinceService {

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

    @Autowired
    UserMapper userMapper;


    @Override
    public MedicineMessage query(String itemId, String username) {

        MedicineMessage me = mediMapper.selectByPrimaryKey(Integer.valueOf(itemId));

        if (!"".equals(username)) {

            System.out.println("不是空的");

            UserExample example = new UserExample();
            UserExample.Criteria criteria = example.createCriteria();
            criteria.andUserNameEqualTo(username);

            List<User> users = userMapper.selectByExample(example);
            User user = users.get(0);

            //获取浏览数据
            String str = user.getUserZj();

            //累加增加字符串使用
            StringBuffer buffer = new StringBuffer(str);

            //如果字段的数据是不是空的就添加逗号加商品id
            if (!"".equals(str)) {

                //如果这次浏览的商品跟数据库最后一个一样就不添加
                String sub = str.substring(str.length() - 1);
                if(!sub.equals(itemId)){
                    buffer.append("," + itemId);
                }

            } else {
                buffer.append(itemId);
            }

            user.setUserZj(buffer.toString());

            userMapper.updateByPrimaryKey(user);

        }

        return me;

    }

    @Override
    public ItemDesc queryDesc(String itemId) {
        // TODO Auto-generated method stub

        ItemDescExample example = new ItemDescExample();
        ItemDescExample.Criteria cr = example.createCriteria();
        cr.andItemIdEqualTo(itemId);

        List<ItemDesc> list = itemMapper.selectByExampleWithBLOBs(example);

        if (list != null && list.size() > 0) {
            return list.get(0);
        }

        return null;
    }

    @Override
    public ItemExplain queryExplain(Integer itemId) {
        // TODO Auto-generated method stub

        ItemExplainExample example = new ItemExplainExample();
        ItemExplainExample.Criteria cri = example.createCriteria();
        cri.andItemIdEqualTo(itemId);

        List<ItemExplain> list = explinMapper.selectByExample(example);

        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<Sales> querySales(String itemId) {
        // TODO Auto-generated method stub

        SalesExample example = new SalesExample();
        SalesExample.Criteria cri = example.createCriteria();
        cri.andItemIdEqualTo(itemId);

        List<Sales> list = saleMapper.selectByExample(example);

        if (list != null && list.size() > 0) {
            return list;
        }
        return null;
    }

    @Override
    public List<Appraise> queryAppraise(String drugId, Integer rank) {
        // TODO Auto-generated method stub

        AppraiseExample example = new AppraiseExample();
        AppraiseExample.Criteria criteria = example.createCriteria();
        criteria.andDrugIdEqualTo(Integer.valueOf(drugId));
        if (rank != 0) {
            criteria.andRankEqualTo(rank);
        }
        List<Appraise> list = appMapper.selectByExample(example);

        return list;
    }

    @Override
    public Integer queryAppraiseCount(Integer id) {

        int count = appMapper.count(id);
        if ("".equals(count)) {
            return 0;
        }
        return count;
    }

    @Override
    public Integer queryAppraiseNum(Integer itemId,Integer id) {
        int num = appMapper.num(itemId,id);
        return num;
    }

    @Override
    public Integer salesCount(Integer id) {
        int count = saleMapper.count(id);
        return count;
    }


}
