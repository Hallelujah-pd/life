package com.school.life.dao;

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
 * DateTime: 2022/6/1 10:55
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class AdvMapperTest {

    @Autowired
    private AdvMapper advMapper;
    @Test
    public void selectByAdvLocalAndAdvPageLocal() {
        System.out.println(advMapper.selectByAdvLocalAndAdvPageLocal("主页","顶部"));
    }

    @Test
    public void selectByPrimaryKey() {
        System.out.println(        advMapper.selectByPrimaryKey(4)
);
    }

    @Test
    public void selectByOrderTime() {
        System.out.println(        advMapper.selectByOrderClick()
        );
    }
}