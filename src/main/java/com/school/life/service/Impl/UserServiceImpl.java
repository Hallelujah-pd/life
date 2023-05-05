package com.school.life.service.Impl;

import com.school.life.bean.User;
import com.school.life.bean.UserExample;
import com.school.life.dao.UserMapper;
import com.school.life.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/12 18:30
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;


    @Override
    public User login(String username, String userPassword) {

        return userMapper.selectByUsernameAndPassword(username, userPassword);
    }

    @Override
    public User findUserById(Integer userId) {

        return userMapper.selectByPrimaryKeyWithArticle(userId);
    }

    @Override
    public int sign(User user) {

        return userMapper.insert(user);
    }

    @Override
    public int updateUser(User user) {
        userMapper.updateByPrimaryKeySelective(user);
        return userMapper.updateByPrimaryKeySelective(user);
    }

}
