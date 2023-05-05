//package com.school.life.service.backService;
//
//import com.school.life.bean.AdvSite;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import java.util.List;
//
//import static org.junit.Assert.*;
//
///**
// * Created with IntelliJ IDEA.
// * Description:
// *
// * @author pd
// * DateTime: 2022/6/2 11:44
// */
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations={"classpath:applicationContext.xml"})
//public class AdvSiteServiceTest {
//
//    @Autowired
//    private AdvSiteService advSiteService;
//    @Test
//    public void updateAdvSiteStatus() {
//        advSiteService.updateAdvSiteStatus("主页","顶部");
//
//    }
//
//    @Test
//    public void selectAdvByAdvStatus() {
//        List<AdvSite> advSites =
//                advSiteService.selectAdvByAdvStatus();
//
//        advSites.forEach(System.out::println);
//
//    }
//}