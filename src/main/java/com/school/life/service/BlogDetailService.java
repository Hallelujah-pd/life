package com.school.life.service;

import com.school.life.bean.Article;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/20 8:49
 */
public interface BlogDetailService {
    Article getBlogDetail(Integer articleId);
}
