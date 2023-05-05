package com.school.life.controller;

import com.github.pagehelper.PageInfo;
import com.school.life.bean.*;
import com.school.life.dao.AdminMapper;
import com.school.life.dao.AdvMapper;
import com.school.life.dao.ArticleMapper;
import com.school.life.dao.CommentMapper;
import com.school.life.service.BlogDetailService;
import com.school.life.service.IndexService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;
import java.util.Map;

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

    @Autowired
    private ArticleMapper articleMapper;

    @Autowired
    private AdvMapper advMapper;

    @Autowired
    private CommentMapper commentMapper;



    @RequestMapping("/getBlogDetail")
    public String getBlogDetail(@RequestParam("articleId") Integer articleId, Model model){

        List<Comment> comments = commentMapper.selectByExampleWithUserByArticleIdAndReplyId(articleId);
        model.addAttribute("comments",comments);


        Article blogDetail = blogDetailService.getBlogDetail(articleId);

        Integer articleClick = blogDetail.getArticleClick();
        int addArticleClick = articleClick + 1;
        blogDetail.setArticleClick(addArticleClick);


        articleMapper.updateByPrimaryKeySelective(blogDetail);


        model.addAttribute("blogDetail",blogDetail);

        List<Photo> blogPhoto = indexService.getAllPhoto();
        List<Article> articleBySortClick = indexService.getArticleBySortClick();

        model.addAttribute("blogPhoto",blogPhoto);
        model.addAttribute("articleBySortClick",articleBySortClick);



        Adv advEnd = advMapper.selectByAdvLocalAndAdvPageLocal("博客详情", "底部");
        Adv advSideOne = advMapper.selectByAdvLocalAndAdvPageLocal("博客详情", "侧边1");
        Adv advSideTwo = advMapper.selectByAdvLocalAndAdvPageLocal("博客详情", "侧边2");

        model.addAttribute("advEnd",advEnd);
        model.addAttribute("advSideOne",advSideOne);
        model.addAttribute("advSideTwo",advSideTwo);

        return "blog-detail";
    }

    @RequestMapping("/releaseComment")
    @ResponseBody
    public int releaseComment(@Param("texComment") String texComment,
                                 @Param("articleId") Integer articleId ,
                                 @Param("userId") Integer userId
                                 ){

        Date date = new Date(new java.util.Date().getTime());


        Comment comment = new Comment();
        comment.setCommentId(null);
        comment.setCommentContent(texComment);
        comment.setArticleId(articleId);
        comment.setCommentTime(date);
        comment.setUserId(userId);

        commentMapper.insertSelective(comment);



        return 1;
    }

}
