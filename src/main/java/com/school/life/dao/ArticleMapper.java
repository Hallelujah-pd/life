package com.school.life.dao;

import com.school.life.bean.Article;
import com.school.life.bean.ArticleExample;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ArticleMapper {
    long countByExample(ArticleExample example);

    int deleteByExample(ArticleExample example);

    int deleteByPrimaryKey(Integer articleId);

    int insert(Article record);

    int insertSelective(Article record);

    List<Article> selectByExample(ArticleExample example);

    List<Article> selectByExampleWithUser(ArticleExample example);

    List<Article> selectByExampleWithUserOrderByTime();

    Article selectByPrimaryKey(Integer articleId);

    Article selectByPrimaryKeyWithUser(Integer articleId);

    int updateByExampleSelective(@Param("record") Article record, @Param("example") ArticleExample example);

    int updateByExample(@Param("record") Article record, @Param("example") ArticleExample example);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKey(Article record);

}