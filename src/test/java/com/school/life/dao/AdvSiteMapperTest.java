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
 * DateTime: 2022/6/2 9:58
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class AdvSiteMapperTest {

    @Autowired
    private AdvSiteMapper advSiteMapper;
    @Test
    public void selectByAdvLocalAndAdvPageLocal() {
    }

    @Test
    public void selectByAdvSiteAndAdvSiteStatus() {
        System.out.println(advSiteMapper.selectByAdvSiteAndAvdPageSite("主页","顶部"));
    }
}