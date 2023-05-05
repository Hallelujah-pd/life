package com.school.life.service.backAdv;

import com.alibaba.fastjson.JSON;
import com.school.life.bean.Adv;
import com.school.life.bean.PopData;
import com.school.life.dao.AdvMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/6/5 1:47
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class SelectAdvServiceTest {

    @Autowired
    private SelectAdvService selectAdvService;

    @Autowired
    private AdvMapper advMapper;
    @Test
    public void selectAdvClick() {
//        System.out.println(selectAdvService.selectAdvClick());

        List<Adv> advs = advMapper.selectByExample(null);


        List<String> collect = advs.stream().map(Adv::getAdvHead).collect(Collectors.toList());
        System.out.println("collect"+collect);
        System.out.println("==============================");

        advs.forEach(System.out::println);
        System.out.println("==============================");
        System.out.println("advs"+advs);
    }

    @Test
    public void selectAdvTitle() {

        List<Adv> advs = advMapper.selectByExample(null);

        List<String> collect = advs.stream().map(Adv::getAdvHead).collect(Collectors.toList());

        List list = new ArrayList();

        for (int i = 0; i < collect.size(); i++) {
            PopData popData = new PopData("advHead",collect.get(i));
            list.add(popData);
        }

        String data = JSON.toJSONString(list);

        System.out.println(data);

    }

    @Test
    public void findAdvClick() {

        System.out.println(selectAdvService.findAdvClick());
    }

}