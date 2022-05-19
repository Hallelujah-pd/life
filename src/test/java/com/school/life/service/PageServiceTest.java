package com.school.life.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.school.life.bean.Article;
import com.school.life.bean.Photo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/16 9:33
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class PageServiceTest {
    @Autowired
    private PageService pageService;


    @Test
    public void pageArticle() {
        PageInfo<Article> articlePageInfo = pageService.pageArticle(1);
        List<Article> list = articlePageInfo.getList();
        list.forEach(System.out::println);
    }

    @Test
    public void pagePhoto() {
        PageInfo<Photo> photoPageInfo = pageService.pagePhoto(3);
        List<Photo> list = photoPageInfo.getList();
        list.forEach(System.out::println);
    }
}