package com.school.life.service;

import com.school.life.bean.Article;
import com.school.life.bean.ArticleExample;
//import com.school.life.bean.Photo;
import com.school.life.bean.Photo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/9 9:18
 */

public interface IndexService {
    List<Article> getAllArticle();

    Article getRandomArticle();

    List<Article> getArticleBySortClick();

    List<Photo> getAllPhoto();

    List<Photo> getPhotoBySortClick();




}
