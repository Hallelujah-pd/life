//package com.school.life.service;
//
//import com.school.life.bean.Admin;
//import com.school.life.bean.Adv;
//import com.school.life.bean.Article;
//import com.school.life.bean.Photo;
//import com.school.life.dao.AdvMapper;
//import com.school.life.dao.ArticleMapper;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//
//import java.util.Arrays;
//import java.util.List;
//
//import static org.junit.Assert.*;
//
///**
// * Created with IntelliJ IDEA.
// * Description:
// *
// * @author pd
// * DateTime: 2022/5/9 19:49
// */
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations={"classpath:applicationContext.xml"})
//public class IndexServiceTest {
//
//    @Autowired
//    private ArticleMapper articleMapper;
//    @Autowired
//    IndexService indexService;
//
//    @Test
//    public void getAllArticle() {
//        List<Article> articles = articleMapper.selectByExample(null);
//        System.out.println(articles);
//    }
//
//    @Test
//    public void getRandomArticle() {
//        Article randomArticle = indexService.getRandomArticle();
//        System.out.println(randomArticle);
//    }
//
//    @Test
//    public void getCarouselArticle() {
//        List<Article> carouselArticle = indexService.getArticleBySortClick();
//
//        System.out.println(carouselArticle);
//    }
//
//    @Test
//    public void getCarouselPhoto() {
//
//        List<Photo> carouselPhoto = indexService.getPhotoBySortClick();
//        carouselPhoto.forEach(System.out::println);
//
//    }
//
//    @Test
//    public void getAllPhoto() {
//
//        List<Photo> allPhoto = indexService.getAllPhoto();
//        allPhoto.forEach(System.out::println);
//    }
//
//}