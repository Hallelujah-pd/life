package com.school.life.controller;

import com.school.life.bean.Article;
import com.school.life.bean.Photo;
import com.school.life.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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

    /**
     * 获取首页全部文章
     */
    @RequestMapping("/")
    public String getAllArticle(Model model){
        Article randomArticle = indexService.getRandomArticle();
        Article randomArticle2 = indexService.getRandomArticle();
        Article randomArticle3 = indexService.getRandomArticle();

        model.addAttribute("randomArticle",randomArticle);
        model.addAttribute("randomArticle2",randomArticle2);
        model.addAttribute("randomArticle3",randomArticle3);

        List<Article> articleBySortClick = indexService.getArticleBySortClick();
        Article article = articleBySortClick.get(0);
        model.addAttribute("article",article);


        Article article2 = articleBySortClick.get(1);
        model.addAttribute("article2",article2);

        Article article3 = articleBySortClick.get(2);
        model.addAttribute("article3",article3);

        Article article4 = articleBySortClick.get(3);
        model.addAttribute("article4",article4);

        List<Photo> allPhoto = indexService.getAllPhoto();
        model.addAttribute("allPhoto",allPhoto);

        List<Photo> photoBySortClick = indexService.getPhotoBySortClick();
        model.addAttribute("carouselPhoto",photoBySortClick);

        return "index";
    }
}
