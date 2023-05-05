package com.school.life.service.Impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.school.life.bean.Article;
import com.school.life.bean.Photo;
import com.school.life.dao.ArticleMapper;
import com.school.life.dao.PhotoMapper;
import com.school.life.service.PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/16 8:55
 */
@Service
public class PageServiceImpl implements PageService {

    @Autowired
    private ArticleMapper articleMapper;
    @Autowired
    private PhotoMapper photoMapper;
    @Override
    public PageInfo<Article> pageArticle(Integer pageNum) {
//        每页显示的数据条数
        PageHelper.startPage(pageNum,4);
        List<Article> articles = articleMapper.selectByExampleWithUserOrderByTime();
//        显示页码数量
        return new PageInfo<>(articles, 5);
    }

    @Override
    public PageInfo<Photo> pagePhoto(Integer pageNum) {
        PageHelper.startPage(pageNum,9);
        List<Photo> photos = photoMapper.selectByExampleWithUserOrderByTime();
        return new PageInfo<>(photos,5);
    }
}

