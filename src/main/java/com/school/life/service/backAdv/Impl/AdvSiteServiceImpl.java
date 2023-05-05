package com.school.life.service.backAdv.Impl;

import com.school.life.bean.Adv;
import com.school.life.bean.AdvSite;
import com.school.life.bean.AdvSiteExample;
import com.school.life.dao.AdvMapper;
import com.school.life.dao.AdvSiteMapper;
import com.school.life.service.backAdv.AdvSiteService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/6/4 19:09
 */
@Service
public class AdvSiteServiceImpl implements AdvSiteService {

    @Autowired
    private AdvSiteMapper advSiteMapper;

     @Autowired
    private AdvMapper advMapper;


    @Override
    public List<AdvSite> selectAdvByAdvStatus() {
        AdvSiteExample advSiteExample = new AdvSiteExample();
        AdvSiteExample.Criteria criteria = advSiteExample.createCriteria();
        criteria.andAdvSitestatusEqualTo(0);


        return advSiteMapper.selectByExample(advSiteExample);
    }

    @Override
    public void updateAdvSiteStatus(@Param("advLocation") String advLocation, @Param("advPageSite") String advPageSite) {

        AdvSite advSite = advSiteMapper.selectByAdvSiteAndAvdPageSite(advLocation, advPageSite);

        advSite.setAdvSitestatus(1);

        advSiteMapper.updateByPrimaryKeySelective(advSite);


    }
}
