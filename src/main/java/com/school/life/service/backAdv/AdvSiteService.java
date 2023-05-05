package com.school.life.service.backAdv;

import com.school.life.bean.Adv;
import com.school.life.bean.AdvSite;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/6/4 19:08
 */
public interface AdvSiteService {
    List<AdvSite> selectAdvByAdvStatus();

    void updateAdvSiteStatus(@Param("advLocation") String advLocation, @Param("advPageSite") String advPageSite);
}
