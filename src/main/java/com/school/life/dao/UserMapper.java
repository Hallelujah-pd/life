package com.school.life.dao;

import com.school.life.bean.User;
import com.school.life.bean.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    long countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByUsernameAndPassword(@Param("username") String username,@Param("userPassword") String userPassword);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(Integer userId);

    User selectByPrimaryKeyWithArticle(Integer userId);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}