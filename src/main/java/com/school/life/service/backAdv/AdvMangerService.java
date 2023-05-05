package com.school.life.service.backAdv;

import com.school.life.bean.Adv;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/6/4 19:27
 */
public interface AdvMangerService {

    List<Adv> selectAdvList();

    void deleteAdvByTime(Integer advId);

    void deleteAdvById(Integer advId);


}
