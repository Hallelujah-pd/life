package com.school.life.controller;

import com.github.pagehelper.PageInfo;
import com.school.life.bean.Article;
import com.school.life.bean.Photo;
import com.school.life.service.BlogDetailService;
import com.school.life.service.IndexService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/20 8:57
 */
@Controller
@RequestMapping("/blogDetail")
public class BlogDetailController {

    @Autowired
    private BlogDetailService blogDetailService;
    @Autowired
    private IndexService indexService;


    @RequestMapping("/getBlogDetail")
    public String getBlogDetail(@RequestParam("articleId") Integer articleId, Model model){
        Article blogDetail = blogDetailService.getBlogDetail(articleId);
        model.addAttribute("blogDetail",blogDetail);

        List<Photo> blogPhoto = indexService.getAllPhoto();
        List<Article> articleBySortClick = indexService.getArticleBySortClick();

        model.addAttribute("blogPhoto",blogPhoto);
        model.addAttribute("articleBySortClick",articleBySortClick);
        return "blog-detail";
    }
}
