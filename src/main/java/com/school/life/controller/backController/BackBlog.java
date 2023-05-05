package com.school.life.controller.backController;

import com.school.life.bean.Article;
import com.school.life.dao.ArticleMapper;
import com.school.life.service.BlogService;
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
 * DateTime: 2022/6/8 16:14
 */
@Controller
@RequestMapping("/backBlog")

public class BackBlog {
    @Autowired
    private BlogService blogService;
    @Autowired
    private ArticleMapper articleMapper;
    @RequestMapping("/intoBackBlog")
    public String intoBackBlog(Model model){

        List<Article> articleBySortTime = blogService.getArticleBySortTime();
        model.addAttribute("articleBySortTime",articleBySortTime);

        return "back_blog";
    }

     @RequestMapping("/deleteBlog")
    public String deleteBlog(@Param("blogId") Integer blogId){

      articleMapper.deleteByPrimaryKey(blogId);

        return "forward:/backBlog/intoBackBlog";
    }


}
