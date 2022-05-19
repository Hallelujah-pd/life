package com.school.life.service;

import com.github.pagehelper.PageInfo;
import com.school.life.bean.Article;
import com.school.life.bean.Photo;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/16 8:54
 */
public interface PageService {
    PageInfo<Article> pageArticle(Integer pageNum);

    PageInfo<Photo> pagePhoto(Integer pageNum);
}
