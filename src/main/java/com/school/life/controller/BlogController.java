package com.school.life.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.school.life.bean.Adv;
import com.school.life.bean.Article;
import com.school.life.bean.Msg;
import com.school.life.bean.Photo;
import com.school.life.dao.AdvMapper;
import com.school.life.service.BlogService;
import com.school.life.service.IndexService;
import com.school.life.service.PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/15 20:14
 */
@Controller
@RequestMapping("/blog")
public class BlogController {
    @Autowired
    private BlogService blogService;
    @Autowired
    private PageService pageService;
    @Autowired
    private IndexService indexService;

    @Autowired
    private AdvMapper advMapper;
    @RequestMapping("/getBlog")
    public String getBlog(Model model){
        List<Article> articleList = blogService.getArticleList();
        model.addAttribute("articleList",articleList);

        return "blog";
    }

    @RequestMapping("/pageList")
    //pn分页参数，默认第一页开始
    public String pageList(@RequestParam(value = "pn",defaultValue = "1") Integer pn,Model model){

        Adv advEnd = advMapper.selectByAdvLocalAndAdvPageLocal("博客", "底部");
        Adv advSideOne = advMapper.selectByAdvLocalAndAdvPageLocal("博客", "侧边1");
        Adv advSideTwo = advMapper.selectByAdvLocalAndAdvPageLocal("博客", "侧边2");

        model.addAttribute("advEnd",advEnd);
        model.addAttribute("advSideOne",advSideOne);
        model.addAttribute("advSideTwo",advSideTwo);

        PageInfo<Article> page = pageService.pageArticle(pn);
        List<Photo> blogPhoto = indexService.getAllPhoto();
        List<Article> articleBySortClick = indexService.getArticleBySortClick();

        model.addAttribute("pageInfo",page);
        model.addAttribute("blogPhoto",blogPhoto);
        model.addAttribute("articleBySortClick",articleBySortClick);


        return "blog";
    }
}
