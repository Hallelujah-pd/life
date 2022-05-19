package com.school.life.service;

import com.school.life.bean.Article;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/15 20:11
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class BlogServiceTest {

    @Autowired
    private BlogService blogService;
    @Test
    public void getArticleList() {
        List<Article> articleList = blogService.getArticleList();
        articleList.forEach(System.out::println);
    }
}