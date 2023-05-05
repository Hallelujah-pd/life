package com.school.life.controller.backController;

import com.alibaba.fastjson.JSON;
import com.school.life.bean.*;
import com.school.life.dao.AdvMapper;
import com.school.life.dao.CommentMapper;
import com.school.life.dao.UserMapper;
import com.school.life.service.BlogService;
import com.school.life.service.IndexService;
import com.school.life.service.UserService;
import com.school.life.service.backAdv.SelectAdvService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/28 19:49
 */
@Controller
@RequestMapping("/backIndex")
public class BackIndex {
    @Autowired
    private SelectAdvService selectAdvService;

 @Autowired
    private UserMapper userMapper;

 @Autowired
 private BlogService blogService;
 @Autowired
 private CommentMapper commentMapper;

 @Autowired
 private IndexService indexService;

 @Autowired
 private AdvMapper advMapper;

    @RequestMapping("/intoIndex")
    public String intoIndex(Model model){
        int advClick = selectAdvService.selectAdvClick();
        model.addAttribute("advClick",advClick);

        int articleClick = selectAdvService.selectArticleClick();
        model.addAttribute("articleClick",articleClick);

        int userSum = selectAdvService.userSum();
        model.addAttribute("userSum",userSum);

        List<User> users = userMapper.selectByExample(null);
        model.addAttribute("users",users);

        List<Article> articleBySortTime = blogService.getArticleBySortTime();
        model.addAttribute("articleBySortTime",articleBySortTime);

        List<Comment> comments = commentMapper.selectByExample(null);
        int commentsSum = comments.size();
        model.addAttribute("commentsSum",commentsSum);

        List<Comment> commentsOrderByTime = commentMapper.selectByExampleWithUser(null);
        model.addAttribute("commentsOrderByTime",commentsOrderByTime);


        List<Article> articleBySortClick = indexService.getArticleBySortClick();
        model.addAttribute("articleBySortClick",articleBySortClick);


        List<Adv> advByOrderClick = advMapper.selectByOrderClick();
        model.addAttribute("advByOrderClick",advByOrderClick);


        return "back_index";
    }

    @RequestMapping("/getAdvTitle")
    @ResponseBody
    public String intoIndex(){

        return selectAdvService.findAdvClick();
    }

    @RequestMapping("/deleteUser")
    public String deleteUser(@Param("userId") Integer userId){

        userMapper.deleteByPrimaryKey(userId);

        return "forward:/backIndex/intoIndex";
    }
}
