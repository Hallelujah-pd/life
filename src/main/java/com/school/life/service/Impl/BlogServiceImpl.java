package com.school.life.service.Impl;

import com.school.life.bean.Article;
import com.school.life.dao.ArticleMapper;
import com.school.life.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/15 20:09
 */
@Service
public class BlogServiceImpl implements BlogService {

    @Autowired
    private ArticleMapper articleMapper;
    @Override
    public List<Article> getArticleList() {
        return articleMapper.selectByExample(null);
    }

    @Override
    public List<Article> getArticleBySortTime() {
        return articleMapper.selectByExampleWithUserOrderByTime();
    }

    @Override
    public List<Article> getArticleByUserId(Integer userId) {

        return articleMapper.selectByUserIdByOrderTime(userId);
    }
}
