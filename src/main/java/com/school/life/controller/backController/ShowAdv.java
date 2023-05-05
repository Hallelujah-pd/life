package com.school.life.controller.backController;

import com.school.life.bean.Adv;
import com.school.life.dao.AdvMapper;

import com.school.life.service.backAdv.AdvMangerService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/31 18:32
 */
@Controller
@RequestMapping("/manageBackAdv")
public class ShowAdv {
    @Autowired
    private AdvMangerService advMangerService;

    @RequestMapping("/showBackAdv")
    public String showBackAdv(Model model){
        List<Adv> advs =
                advMangerService.selectAdvList();

        model.addAttribute("advs",advs);
        return "back_showAdv";
    }
    @RequestMapping("/deleteAdv")
    public String deleteAdv(@Param("/advId") Integer advId){
        advMangerService.deleteAdvById(advId);
        return "forward:/manageBackAdv/showBackAdv";
    }


}
