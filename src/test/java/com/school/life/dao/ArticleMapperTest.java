package com.school.life.dao;

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
 * DateTime: 2022/5/16 19:59
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class ArticleMapperTest {

    @Autowired
    private ArticleMapper articleMapper;
    @Test
    public void selectByExampleWithUser() {
        List<Article> articles = articleMapper.selectByExampleWithUser(null);
        articles.forEach(System.out::println);
    }

    @Test
    public void selectByExampleWithUserOrderByTime() {
        List<Article> articles = articleMapper.selectByExampleWithUserOrderByTime();
        articles.forEach(System.out::println);
    }

    @Test
    public void selectByPrimaryKeyWithUser() {
        Article article = articleMapper.selectByPrimaryKeyWithUser(151);
        System.out.println(article);
    }
}