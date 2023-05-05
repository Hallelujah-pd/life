package com.school.life.service;

import com.school.life.bean.Photo;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/19 8:55
 */
public interface PhotoService {
    List<Photo> getSortTimePhotos();

    List<Photo> getSortTimePhotosByUserId(Integer userId);



}
