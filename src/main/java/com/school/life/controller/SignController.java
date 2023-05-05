package com.school.life.controller;

import com.school.life.bean.Msg;
import com.school.life.bean.User;
import com.school.life.dao.UserMapper;
import com.school.life.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

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

    @Autowired
    private UserService userService;
    @RequestMapping("/signUp")
    @ResponseBody
    public int signUp(@Param("realName") String realName, @Param("username") String username,
                         @Param("relation") String relation,
                         @Param("reason") String reason, @Param("email") String email,
                         @Param("password") String password){

        String headImg = "static/img/1.png";
        String selfInt = "这个人很懒什么都没写";

        User user = new User();
        user.setRealName(realName);
        user.setSelfIntroduction(selfInt);
        user.setUsername(username);
        user.setRelation(relation);
        user.setReason(reason);
        user.setEmail(email);
        user.setUserPassword(password);

        user.setHeadImg(headImg);
        user.setUserId(null);

        return userService.sign(user);
    }

    @RequestMapping("/intoSign")
    public String intoSign(){
        return "/sign_up";
    }
}
