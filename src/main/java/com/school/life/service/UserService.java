package com.school.life.service;

import com.school.life.bean.User;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/12 18:30
 */
public interface UserService {

    User login(String username,String userPassword);

    User findUserById(Integer userId);

    int sign(User user);

    int updateUser(User user);
}
