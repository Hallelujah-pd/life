package com.school.life.service.Impl;

import com.school.life.bean.Photo;
import com.school.life.dao.PhotoMapper;
import com.school.life.service.PhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/19 8:55
 */
@Service
public class PhotoServiceImpl implements PhotoService {
    @Autowired
    private PhotoMapper photoMapper;
    @Override
    public List<Photo> getSortTimePhotos() {
        return photoMapper.selectByExampleWithUserOrderByTime();
    }

    @Override
    public List<Photo> getSortTimePhotosByUserId(Integer userId) {

        return photoMapper.selectOrderByTimeByUserId(userId);
    }
}
