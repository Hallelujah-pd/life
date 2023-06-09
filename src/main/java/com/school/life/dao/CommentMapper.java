package com.school.life.dao;

import com.school.life.bean.Comment;
import com.school.life.bean.CommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CommentMapper {
    long countByExample(CommentExample example);

    int deleteByExample(CommentExample example);

    int deleteByPrimaryKey(Integer commentId);

    int insert(Comment record);

    int insertSelective(Comment record);

    List<Comment> selectByExample(CommentExample example);

    Comment selectByPrimaryKey(Integer commentId);

    List<Comment> selectByExampleWithUser(CommentExample example);

    List<Comment> selectByExampleWithUserByArticleId(@Param("articleId") Integer articleId);

    List<Comment> selectByExampleWithUserByArticleIdAndReplyId(@Param("articleId") Integer articleId);

    List<Comment> selectOrderByTimeAndUser();

    int updateByExampleSelective(@Param("record") Comment record, @Param("example") CommentExample example);

    int updateByExample(@Param("record") Comment record, @Param("example") CommentExample example);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
}