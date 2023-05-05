package com.school.life.test;

import com.school.life.bean.User;
import com.school.life.utils.RedisCacheUtil;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.HashMap;

/**
 * @author sanglp
 * @create 2018-01-31 9:16
 * @desc redis测试类
 **/
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = { "classpath:applicationContext.xml",
        "file:D:/javaWeb源代码/life/src/main/webapp/WEB-INF/dispatcherServlet-servlet.xml" })
public class RedisTest {

    @Autowired
    private RedisCacheUtil redisCacheUtil;
    private static String key;
    private static String field;
    private static String value;



    // 初始化 数据
    static {
        key = "tb_student";
        field = "stu_name";
        value = "一系列的关于student的信息！";
    }

    // 测试增加数据
    @Test
    public void testHset() {
//        User user = new User();
//        user.setUsername("22");
//        user.setUserId(1);
//        redisCacheUtil.set("q",user);
        User q = (User) redisCacheUtil.get("q");
        System.out.println(q);
//
//        Object o = redisCacheUtil.get(null);
//        System.out.println(o);



    }



    // 测试数据的数量
    @Test
    public void testHsize() {
        //long size = redisCache.hsize(key);
        // System.out.println("数量为：" + size);
    }
}
