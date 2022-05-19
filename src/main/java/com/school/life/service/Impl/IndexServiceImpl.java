package com.school.life.service.Impl;

import com.school.life.bean.Article;
import com.school.life.bean.ArticleExample;
import com.school.life.bean.Photo;
import com.school.life.dao.ArticleMapper;
import com.school.life.dao.PhotoMapper;
import com.school.life.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Connection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Random;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/9 9:23
 */
@Service
public class IndexServiceImpl implements IndexService {
    @Autowired
    private ArticleMapper articleMapper;
    @Autowired
    private PhotoMapper photoMapper;

    private Article article;

    private Photo photo;

    @Override
    public List<Article> getAllArticle() {
        return articleMapper.selectByExample(null);
    }

    @Override
    public Article getRandomArticle() {

        while(article==null){
            Random random = new Random();
            int randomNum = random.nextInt(1000);
            article = articleMapper.selectByPrimaryKey(randomNum);
        }

        return article;
    }

    @Override
    public List<Article> getArticleBySortClick() {

        List<Article> articles = articleMapper.selectByExample(null);

        articles.sort((o1, o2) -> {
            if ((o1.getArticleClick() > o2.getArticleClick())) {
                return -1;
            }
            if (o1.getArticleClick().equals(o2.getArticleClick())) {
                return 0;
            }
            return 1;
        });

        return articles.subList(0, 4);

    }

    @Override
    public List<Photo> getAllPhoto() {

        List<Photo> photos = photoMapper.selectByExample(null);
        Collections.shuffle(photos);
        return photos;
    }

    @Override
    public List<Photo> getPhotoBySortClick() {

        List<Photo> photos = photoMapper.selectByExample(null);

        photos.sort((o1, o2) -> {
            if ((o1.getPhotoClick() > o2.getPhotoClick())) {
                return -1;
            }
            if (o1.getPhotoClick().equals(o2.getPhotoClick())) {
                return 0;
            }
            return 1;
        });

        return photos.subList(0, 3);
    }

}
