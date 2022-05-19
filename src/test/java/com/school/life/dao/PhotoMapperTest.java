package com.school.life.dao;

import com.school.life.bean.Photo;
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
 * DateTime: 2022/5/18 11:10
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class PhotoMapperTest {

    @Autowired
    private PhotoMapper photoMapper;
    @Test
    public void selectByExampleWithUserOrderByTime() {
        List<Photo> photos = photoMapper.selectByExampleWithUserOrderByTime();
        photos.forEach(System.out::println);
    }
}