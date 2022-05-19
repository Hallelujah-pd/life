package com.school.life.service.Impl;

import com.school.life.bean.Article;
import com.school.life.dao.ArticleMapper;
import com.school.life.service.BlogDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/20 8:49
 */
@Service
public class BlogDetailServiceImpl implements BlogDetailService {
    @Autowired
    private ArticleMapper articleMapper;


    @Override
    public Article getBlogDetail(Integer articleId) {
        return articleMapper.selectByPrimaryKeyWithUser(articleId);
    }
}
