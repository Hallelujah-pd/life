package com.school.life.dao;

import com.school.life.bean.Admin;
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
 * DateTime: 2022/5/29 19:00
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class AdminMapperTest {

    @Autowired
    private AdminMapper adminMapper;
    @Test
    public void selectByAdminNameAndAdminPassword() {
        Admin admin = adminMapper.selectByAdminNameAndAdminPassword("admin", "admin");
        System.out.println(admin);
    }
}