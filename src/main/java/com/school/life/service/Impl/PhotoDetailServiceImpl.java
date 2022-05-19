package com.school.life.service.Impl;

import com.school.life.bean.Photo;
import com.school.life.dao.PhotoMapper;
import com.school.life.service.PhotoDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/17 20:48
 */
@Service
public class PhotoDetailServiceImpl implements PhotoDetailService {
    @Autowired
    private PhotoMapper photoMapper;
    @Override
    public List<Photo> getSortTimePhotos() {
        return photoMapper.selectByExampleWithUserOrderByTime();
    }
}
