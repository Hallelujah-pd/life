package com.school.life.controller;

import com.github.pagehelper.PageInfo;
import com.school.life.bean.*;
import com.school.life.dao.AdvMapper;
import com.school.life.dao.ArticleMapper;
import com.school.life.dao.UserMapper;

import com.school.life.service.IndexService;
import com.school.life.service.ReleaseService;
import com.school.life.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/20 9:42
 */
@Controller
@RequestMapping("/release")
public class ReleaseController {
    @Autowired
    private ReleaseService releaseService;

    @Autowired
            private UserMapper userMapper;

    @Autowired
            private IndexService indexService;
    @Autowired
            private AdvMapper advMapper;

    String insertPath;

    @RequestMapping("/intoRelease")
    public String intoRelease(Model model) {
        List<Photo> blogPhoto = indexService.getAllPhoto();
        List<Article> articleBySortClick = indexService.getArticleBySortClick();

        model.addAttribute("blogPhoto",blogPhoto);
        model.addAttribute("articleBySortClick",articleBySortClick);

        Adv advEnd = advMapper.selectByAdvLocalAndAdvPageLocal("博客发布", "底部");
        Adv advSideOne = advMapper.selectByAdvLocalAndAdvPageLocal("博客发布", "侧边1");
        Adv advSideTwo = advMapper.selectByAdvLocalAndAdvPageLocal("博客发布", "侧边2");

        model.addAttribute("advEnd",advEnd);
        model.addAttribute("advSideOne",advSideOne);
        model.addAttribute("advSideTwo",advSideTwo);
        return "release";
    }

    @RequestMapping(value = "/insertArticle", method = RequestMethod.POST)
    public String insertArticle(@Param("title") String title,
                                @Param("content") String content, @Param("uId") Integer uId) throws IOException {

        Date date = new Date(new java.util.Date().getTime());

        Article article = new Article();

        article.setArticleId(null);
        article.setArticleClick(0);
        article.setArticleTime(date);
        article.setArticleContent(content);
        article.setArticleTitle(title);
        article.setUserId(uId);
        article.setArticleImg(insertPath);


        releaseService.insertArticle(article);


        return "redirect:/blog/pageList";
    }

    @RequestMapping("/ajaxUpload")
    public void ajaxUpload(@RequestParam("photo") MultipartFile photo, HttpSession session) {
        //获取上传的文件的文件名
        String fileName = photo.getOriginalFilename();
        //获取上传的文件的后缀名
        String suffixName = fileName.substring(fileName.lastIndexOf("."));
        //将UUID作为文件名
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        //将uuid和后缀名拼接后的结果作为最终的文件名
        fileName = uuid + suffixName;
        //通过ServletContext获取服务器中photo目录的路径
        ServletContext servletContext = session.getServletContext();
        String photoPath = servletContext.getRealPath("photo");
        File file = new File(photoPath);
        //判断photoPath所对应路径是否存在
        if (!file.exists()) {
            //若不存在，则创建目录
            file.mkdir();
        }

        insertPath = "/photo/" + fileName;

        String finalPath = photoPath + File.separator + fileName;
        //上传文件
        try {
            photo.transferTo(new File(finalPath));
        } catch (IOException exception) {
            exception.printStackTrace();
        }

    }
}
