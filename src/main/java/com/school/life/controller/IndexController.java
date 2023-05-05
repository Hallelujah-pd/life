package com.school.life.controller;


import com.school.life.bean.Adv;
import com.school.life.bean.AdvExample;
import com.school.life.bean.Article;
import com.school.life.bean.Photo;
import com.school.life.dao.AdvMapper;
import com.school.life.service.Impl.RedisSubService;
import com.school.life.service.IndexService;
import com.school.life.utils.RedisCacheUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/9 9:05
 */
@Controller
public class IndexController {

    @Autowired
    private IndexService indexService;

    @Autowired
    private AdvMapper advMapper;


    /**
     * 获取首页全部文章
     */
    @RequestMapping("/")
    public String getAllArticle(Model model, HttpServletResponse response){


        Article randomArticle2 = indexService.getRandomArticle();
        model.addAttribute("randomArticle2",randomArticle2);

        List<Article> articleBySortClick = indexService.getArticleBySortClick();
        model.addAttribute("articleBySortClick",articleBySortClick);



        List<Photo> allPhoto = indexService.getAllPhoto();
        model.addAttribute("allPhoto",allPhoto);

        List<Photo> photoBySortClick = indexService.getPhotoBySortClick();
        model.addAttribute("carouselPhoto",photoBySortClick);

        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Pragma", "no-cache");




        Adv advTop = advMapper.selectByAdvLocalAndAdvPageLocal("主页", "顶部");
        Adv advEnd = advMapper.selectByAdvLocalAndAdvPageLocal("主页", "底部");
        Adv advSideOne = advMapper.selectByAdvLocalAndAdvPageLocal("主页", "侧边1");
        Adv advSideTwo = advMapper.selectByAdvLocalAndAdvPageLocal("主页", "侧边2");

        model.addAttribute("advTop",advTop);
        model.addAttribute("advEnd",advEnd);
        model.addAttribute("advSideOne",advSideOne);
        model.addAttribute("advSideTwo",advSideTwo);


        return "index";
    }
}
