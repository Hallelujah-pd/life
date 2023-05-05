package com.school.life.dao;

import com.school.life.bean.Adv;
import com.school.life.bean.AdvExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AdvMapper {
    long countByExample(AdvExample example);

    int deleteByExample(AdvExample example);

    int deleteByPrimaryKey(Integer advId);

    int insert(Adv record);

    int insertSelective(Adv record);

    List<Adv> selectByExample(AdvExample example);

    List<Adv> selectByOrderClick();

    Adv selectByPrimaryKey(Integer advId);

    Adv selectByAdvLocalAndAdvPageLocal(@Param("advLocation") String advLocation, @Param("advPagelocal") String advPagelocal);

    int updateByExampleSelective(@Param("record") Adv record, @Param("example") AdvExample example);

    int updateByExample(@Param("record") Adv record, @Param("example") AdvExample example);

    int updateByPrimaryKeySelective(Adv record);

    int updateByPrimaryKey(Adv record);
}