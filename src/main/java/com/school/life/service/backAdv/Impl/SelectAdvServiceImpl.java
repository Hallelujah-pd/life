package com.school.life.service.backAdv.Impl;

import com.alibaba.fastjson.JSON;
import com.school.life.bean.*;
import com.school.life.dao.AdvMapper;
import com.school.life.dao.ArticleMapper;
import com.school.life.dao.CommentMapper;
import com.school.life.dao.UserMapper;
import com.school.life.service.Impl.UserServiceImpl;
import com.school.life.service.backAdv.SelectAdvService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.IntSummaryStatistics;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/6/5 1:28
 */
@Service
public class SelectAdvServiceImpl implements SelectAdvService {
    @Autowired
    private AdvMapper advMapper;
    @Autowired
    private ArticleMapper articleMapper;
    @Autowired
    private UserMapper userMapper;

    @Override
    public int selectAdvClick() {
        List<Adv> advs = advMapper.selectByExample(null);

        List<Integer> collect = advs.stream().map(Adv::getAdvClick).collect(Collectors.toList());

        IntSummaryStatistics summaryStatistics = collect.stream().mapToInt((s) -> s).summaryStatistics();

        int sum = Math.toIntExact(summaryStatistics.getSum());

        return sum;
    }

    @Override
    public int selectArticleClick() {
        List<Article> articles = articleMapper.selectByExample(null);

        List<Integer> collect = articles.stream().map(Article::getArticleClick).collect(Collectors.toList());

        IntSummaryStatistics summaryStatistics = collect.stream().mapToInt((s) -> s).summaryStatistics();

        int sum = Math.toIntExact(summaryStatistics.getSum());
        return sum;
    }

    @Override
    public int userSum() {
        List<User> users = userMapper.selectByExample(null);
        return users.size();

    }

    @Override
    public String findAdvClick() {

        List<Adv> advs = advMapper.selectByExample(null);

        List<Integer> collectClick = advs.stream().map(Adv::getAdvClick).collect(Collectors.toList());

        List<String> collectAdvHead = advs.stream().map(Adv::getAdvHead).collect(Collectors.toList());


        List list = new ArrayList();

        for (int i = 0; i < collectClick.size(); i++) {
            PopData popData = new PopData(collectAdvHead.get(i),collectClick.get(i));
            list.add(popData);
        }

        System.out.println(JSON.toJSONString(list));
        return JSON.toJSONString(list);
    }

}
