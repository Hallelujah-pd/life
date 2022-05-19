package com.school.life.controller;

import com.school.life.bean.Photo;
import com.school.life.service.PhotoDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/18 11:30
 */
@Controller
@RequestMapping("PhotoDetail")
public class PhotoDetailController {
    @Autowired
    private PhotoDetailService photoDetailService;
    @RequestMapping("getPhotoDetail")
    public String getEvents(Model model){

        List<Photo> sortTimePhotos = photoDetailService.getSortTimePhotos();
        model.addAttribute("sortTimePhotos",sortTimePhotos);
        return "portfolio-slideshow";
    }
}
