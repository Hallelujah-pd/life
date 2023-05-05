package com.school.life.dao;

import com.school.life.bean.Comment;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/6/9 18:27
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class CommentMapperTest {

    @Autowired
    private CommentMapper commentMapper;


    @Test
    public void selectOrderByTimeAndUser() {
        System.out.println(commentMapper.selectOrderByTimeAndUser());
    }

    @Test
    public void selectByExampleWithUserByArticleId() {
        System.out.println();
        List<Comment> comments = commentMapper.selectByExampleWithUserByArticleId(201);
        comments.forEach(System.out::println);
    }

    @Test
    public void selectByExampleWithUserByArticleIdAndReplyId() {
        System.out.println(        commentMapper.selectByExampleWithUserByArticleIdAndReplyId(201)
);
    }
}