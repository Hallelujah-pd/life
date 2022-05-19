package com.school.life.dao;

import com.school.life.bean.User;
import com.school.life.bean.UserExample;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/12 19:09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class UserMapperTest {

    @Autowired
    UserMapper userMapper;

    @Test
    public void selectByUsernameAndUserPassword() {
        User user = userMapper.selectByUsernameAndPassword("pd123", "admin");
        System.out.println(user);
    }

    @Test
    public void selectByPrimaryKeyWithArticle() {
        User user = userMapper.selectByPrimaryKeyWithArticle(1);
        System.out.println(user);
    }
}