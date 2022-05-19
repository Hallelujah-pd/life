package com.school.life.controller;

import com.school.life.bean.Article;
import com.school.life.bean.User;
import com.school.life.dao.ArticleMapper;
import com.school.life.dao.UserMapper;
import com.school.life.service.UserService;
import javafx.geometry.Pos;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/12 18:29
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private ArticleMapper articleMapper;

    @RequestMapping(value = "/login")
    @ResponseBody
    public User checkLogin(@Param("username") String username, @Param("password") String password,
                           HttpSession session) {
        System.out.println(username);
        User user = userService.login(username, password);
        if (user != null) {
            session.setAttribute("user_session", user);
            System.out.println(user.toString());
            return user;
        } else {

        }
        return null;
    }

    @RequestMapping("/logOut")
    public String logout(HttpSession session){
        session.invalidate();
        return "forward:/";
    }

    @RequestMapping("/selfInter")
    public String selfInter(@Param("userId") Integer userId,Model model){

        User selfInter = userService.findUserById(userId);

        model.addAttribute("selfInter",selfInter);

        return "/self_inter";
    }

}
