package com.school.life.service;

import com.school.life.bean.Article;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/15 20:09
 */
public interface BlogService {
    List<Article> getArticleList();

    List<Article> getArticleBySortTime();

    
}
