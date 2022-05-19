package com.school.life.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/20 11:09
 */
@Controller
@RequestMapping("/sign")
public class SignController {

    @RequestMapping("/intoSign")
    public String intoSign(){
        return "sign_up";
    }
}
