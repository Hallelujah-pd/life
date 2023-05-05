package com.school.life.service;

import com.school.life.bean.Photo;
import com.school.life.dao.PhotoMapper;
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
 * DateTime: 2022/5/25 11:52
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class PhotoServiceTest {
@Autowired
private PhotoService photoService;
    @Test
    public void getSortTimePhotosByUserId() {
        List<Photo> sortTimePhotosByUserId = photoService.getSortTimePhotosByUserId(1);
        sortTimePhotosByUserId.forEach(System.out::println);
    }
}