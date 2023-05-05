package com.school.life.controller;

import com.school.life.bean.Adv;
import com.school.life.bean.Article;
import com.school.life.bean.Photo;
import com.school.life.bean.User;
import com.school.life.dao.AdvMapper;
import com.school.life.dao.ArticleMapper;
import com.school.life.dao.UserMapper;
import com.school.life.service.BlogService;
import com.school.life.service.PhotoService;
import com.school.life.service.UserService;
import javafx.geometry.Pos;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Timer;
import java.util.UUID;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/12 18:29
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private ArticleMapper articleMapper;
    @Autowired
    private BlogService blogService;
    @Autowired
    private PhotoService photoService;

    @Autowired
    private AdvMapper advMapper;

    String insertPath;

    @RequestMapping(value = "/login")
    @ResponseBody
    public User checkLogin(@Param("username") String username, @Param("password") String password,
                           HttpSession session) {

        User user = userService.login(username, password);
        if (user != null) {
            session.setAttribute("user_session", user);
            return user;
        } else {

        }
        return null;
    }

    @RequestMapping("/logOut")
    public String logout(HttpSession session){
        session.invalidate();
        return "forward:/";
    }

    @RequestMapping("/selfInter")
    public String selfInter(@Param("userId") Integer userId,Model model){


        User selfInter = userService.findUserById(userId);

        model.addAttribute("selfInter",selfInter);

        List<Article> articleByUserId = blogService.getArticleByUserId(userId);

        model.addAttribute("articleByUserId",articleByUserId);

        List<Photo> sortTimePhotosByUserId = photoService.getSortTimePhotosByUserId(userId);

        model.addAttribute("sortTimePhotosByUserId",sortTimePhotosByUserId);

        Adv advTop = advMapper.selectByAdvLocalAndAdvPageLocal("个人资料", "顶部");
        Adv advEnd = advMapper.selectByAdvLocalAndAdvPageLocal("个人资料", "底部");
        Adv advSideOne = advMapper.selectByAdvLocalAndAdvPageLocal("个人资料", "侧边1");
        Adv advSideTwo = advMapper.selectByAdvLocalAndAdvPageLocal("个人资料", "侧边2");

        model.addAttribute("advTop",advTop);
        model.addAttribute("advEnd",advEnd);
        model.addAttribute("advSideOne",advSideOne);
        model.addAttribute("advSideTwo",advSideTwo);

        return "/self_inter";
    }

    @RequestMapping("/dataMod")
    public String dataMod(@Param("userId") Integer userId,Model model){
        User userById = userService.findUserById(userId);
        model.addAttribute("userById",userById);
        return "data_mod";
    }


    @RequestMapping("/updateUser")

    public String updateUser(@Param("modUsername") String modUsername,@Param("modPassword") String modPassword,
                             @Param("modEmail") String modEmail,@Param("modSelfInt") String modSelfInt,
                             @Param("userId") Integer userId,HttpSession session){



        User userById = userService.findUserById(userId);

        userById.setUserPassword(modPassword);
        userById.setUsername(modUsername);
        userById.setEmail(modEmail);
        userById.setSelfIntroduction(modSelfInt);
        if (insertPath!=null){
            userById.setHeadImg(insertPath);
        }
        userService.updateUser(userById);

        session.invalidate();


        return "forward:/user/logOut";
    }

    @RequestMapping("/ajaxUploadUser")
    public void ajaxUpload(@RequestParam("modHeadImg") MultipartFile modHeadImg, HttpSession session) {
        //获取上传的文件的文件名
        String fileName = modHeadImg.getOriginalFilename();
        //获取上传的文件的后缀名
        String suffixName = fileName.substring(fileName.lastIndexOf("."));
        //将UUID作为文件名
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        //将uuid和后缀名拼接后的结果作为最终的文件名
        fileName = uuid + suffixName;
        //通过ServletContext获取服务器中photo目录的路径
        ServletContext servletContext = session.getServletContext();
        String photoPath = servletContext.getRealPath("modHeadImg");

        File file = new File(photoPath);

        //判断photoPath所对应路径是否存在
        if (!file.exists()) {
            //若不存在，则创建目录
            file.mkdir();
        }

        insertPath = "modHeadImg/" + fileName;

        String finalPath = photoPath + File.separator + fileName;
        //上传文件
        try {
            modHeadImg.transferTo(new File(finalPath));
        } catch (IOException exception) {
            exception.printStackTrace();
        }

    }


}
