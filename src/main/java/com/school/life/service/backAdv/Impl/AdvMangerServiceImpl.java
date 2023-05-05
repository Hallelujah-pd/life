package com.school.life.service.backAdv.Impl;

import com.school.life.bean.Adv;
import com.school.life.bean.AdvSite;
import com.school.life.dao.AdvMapper;
import com.school.life.dao.AdvSiteMapper;
import com.school.life.service.backAdv.AdvMangerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/6/4 19:28
 */
@Service
public class AdvMangerServiceImpl implements AdvMangerService {
    @Autowired
    private AdvMapper advMapper;

    @Autowired
    private AdvSiteMapper advSiteMapper;
    @Override
    public List<Adv> selectAdvList() {
        return advMapper.selectByExample(null);

    }

    @Override
    public void deleteAdvByTime(Integer advId) {
//        //1.创建线程池  它可安排命令给定延迟后运行或定期执行
//        ScheduledExecutorService scheduledExecutorService = Executors.newScheduledThreadPool(2);
//
//        //2.执行任务 （initialDelay为延迟时间，此处延迟0s，立即执行，perio为周期，此处每5s执行一次，后面为时间单位）
//        scheduledExecutorService.scheduleAtFixedRate(new RunWork(), 0, 5, TimeUnit.SECONDS);

        advMapper.deleteByPrimaryKey(advId);
    }

    @Override
    public void deleteAdvById(Integer advId) {

        Adv adv = advMapper.selectByPrimaryKey(advId);


        String advLocation = adv.getAdvLocation();
        String advPagelocal = adv.getAdvPagelocal();

        AdvSite advSite = advSiteMapper.selectByAdvSiteAndAvdPageSite(advLocation, advPagelocal);

        advSite.setAdvSitestatus(0);

        advSiteMapper.updateByPrimaryKeySelective(advSite);

        advMapper.deleteByPrimaryKey(advId);

    }
}
