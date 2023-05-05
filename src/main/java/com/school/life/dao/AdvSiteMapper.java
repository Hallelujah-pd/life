package com.school.life.dao;

import com.school.life.bean.Adv;
import com.school.life.bean.AdvSite;
import com.school.life.bean.AdvSiteExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AdvSiteMapper {
    long countByExample(AdvSiteExample example);

    int deleteByExample(AdvSiteExample example);

    int deleteByPrimaryKey(Integer advSiteid);

    int insert(AdvSite record);

    int insertSelective(AdvSite record);

    List<AdvSite> selectByExample(AdvSiteExample example);

    AdvSite selectByPrimaryKey(Integer advSiteid);

    AdvSite selectByAdvSiteAndAvdPageSite(@Param("advSite") String advSite, @Param("avdPagesite") String avdPagesite);


    int updateByExampleSelective(@Param("record") AdvSite record, @Param("example") AdvSiteExample example);

    int updateByExample(@Param("record") AdvSite record, @Param("example") AdvSiteExample example);

    int updateByPrimaryKeySelective(AdvSite record);

    int updateByPrimaryKey(AdvSite record);
}