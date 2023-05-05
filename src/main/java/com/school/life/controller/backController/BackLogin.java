package com.school.life.controller.backController;

import com.school.life.bean.Admin;
import com.school.life.dao.AdminMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/28 20:12
 */
@Controller
@RequestMapping("/back")
public class BackLogin {
    @Autowired
    private AdminMapper adminMapper;
    @RequestMapping("/backLogin")
    public String intoBackLogin(){
        return "back_login";
    }

    @RequestMapping("/login")
    @ResponseBody

    public Admin login(@Param("adminName") String adminName,
                        @Param("adminPassword") String adminPassword,
                        HttpSession session){
        Admin admin = adminMapper.selectByAdminNameAndAdminPassword(adminName, adminPassword);
        if (admin!=null){
            session.setAttribute("admin",admin);
            return admin;
        }else {

        }
        return null;
    }
}
