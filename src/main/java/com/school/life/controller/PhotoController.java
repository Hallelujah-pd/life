package com.school.life.controller;

import com.github.pagehelper.PageInfo;
import com.school.life.bean.Article;
import com.school.life.bean.Photo;
import com.school.life.service.PageService;
import com.school.life.service.PhotoDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/19 8:56
 */
@Controller
@RequestMapping("/photo")
public class PhotoController {

    @Autowired
    private PhotoDetailService photoDetailService;
     @Autowired
    private PageService pageService;

    @RequestMapping("/getPhoto")
    public String pageList(@RequestParam(value = "pn",defaultValue = "1") Integer pn, Model model){

        PageInfo<Photo> page = pageService.pagePhoto(pn);
        model.addAttribute("photoPageInfo",page);
        return "portfolio";
    }

}
