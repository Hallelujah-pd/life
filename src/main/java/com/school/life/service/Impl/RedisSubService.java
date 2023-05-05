package com.school.life.service.Impl;

import com.school.life.bean.Adv;
import com.school.life.bean.AdvSite;
import com.school.life.dao.AdvMapper;
import com.school.life.dao.AdvSiteMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.Message;
import org.springframework.data.redis.listener.KeyExpirationEventMessageListener;
import org.springframework.data.redis.listener.RedisMessageListenerContainer;
import org.springframework.stereotype.Component;

@Component
public class RedisSubService extends KeyExpirationEventMessageListener {

    @Autowired
    private AdvMapper advMapper;
    @Autowired
    private AdvSiteMapper advSiteMapper;

    public RedisSubService(RedisMessageListenerContainer listenerContainer) {
        super(listenerContainer);
    }

    //回调到这个方法
    @Override
    public void onMessage(Message message, byte[] pattern) {
        super.onMessage(message, pattern);
        int keyExpira = Integer.parseInt(message.toString());
        System.out.println("拿到过期key ,处理业务逻辑======" + keyExpira);
        //拿到过期key ,处理业务逻辑
        Adv adv = advMapper.selectByPrimaryKey(keyExpira);

        String advLocation = adv.getAdvLocation();
        String advPageSite = adv.getAdvPagelocal();

        AdvSite advSite = advSiteMapper.selectByAdvSiteAndAvdPageSite(advLocation, advPageSite);

        advSite.setAdvSitestatus(0);

        advSiteMapper.updateByPrimaryKeySelective(advSite);

        advMapper.deleteByPrimaryKey(keyExpira);

    }


}