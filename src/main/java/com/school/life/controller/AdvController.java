package com.school.life.controller;

import com.school.life.bean.Adv;
import com.school.life.dao.AdvMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/6/5 0:07
 */
@Controller
@RequestMapping("/Adv")
public class AdvController {
    @Autowired
    private AdvMapper advMapper;
    @RequestMapping("/addAdvClick")
    public String addAdvClick(@Param("advId") Integer advId){
        Adv adv = advMapper.selectByPrimaryKey(advId);

        Integer advClick = adv.getAdvClick();

        int addAdv = advClick + 1;

        adv.setAdvClick(addAdv);

        advMapper.updateByPrimaryKeySelective(adv);

        return "forward:/";
    }
}
