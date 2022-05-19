package com.school.life.test;

import com.school.life.bean.Admin;
import com.school.life.bean.Article;
import com.school.life.dao.AdminMapper;
import com.school.life.dao.ArticleMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/7 8:35
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class MapperTest {

    @Autowired
    AdminMapper adminMapper;

    @Autowired
    ArticleMapper articleMapper;

//    @Autowired
//    PhotoMapper photoMapper;

    Date date = new Date(new java.util.Date().getTime());

    public void testMapper(){
        System.out.println(adminMapper);
    }

    @Test
    public void addMoreArticle(){

        for (int i = 0; i < 50; i++) {
//            articleMapper.insertSelective(new Article(null,date,1,"这是美好的一天",12,"测试123","/static/img/1.png"));
        }
        System.out.println("批量插入完成");
    }

    @Test
    public void getAllArticle(){

        System.out.println( articleMapper.selectByExample(null));
    }
    @Test
    public void addPhotos(){

        for (int i = 0; i < 50; i++) {
//            photoMapper.insert(new Photo(null,"/static/img/2.png","图片111",1,date,"1234","测试图片内容124"));
        }
        System.out.println("批量插入完成");

    }
}
