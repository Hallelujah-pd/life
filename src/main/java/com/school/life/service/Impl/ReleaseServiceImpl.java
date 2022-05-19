package com.school.life.service.Impl;

import com.school.life.bean.Article;
import com.school.life.dao.ArticleMapper;
import com.school.life.service.ReleaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/21 17:59
 */
@Service
public class ReleaseServiceImpl implements ReleaseService {

    @Autowired
    private ArticleMapper articleMapper;
    @Override
    public int insertArticle(Article article) {

        return articleMapper.insertSelective(article);

    }
}
