package com.school.life.controller.backController;


import com.school.life.bean.Adv;
import com.school.life.bean.AdvSite;
import com.school.life.bean.AdvSiteExample;
import com.school.life.dao.AdvMapper;
import com.school.life.dao.AdvSiteMapper;
import com.school.life.service.IndexService;

import com.school.life.service.backAdv.AdvSiteService;
import com.school.life.utils.RedisCacheUtil;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/5/29 20:11
 */
@Controller
@RequestMapping("/BacKAdv")
public class BackAdv {

    @Autowired
    private AdvMapper advMapper;

    @Autowired
    private IndexService indexService;

    @Autowired
    private AdvSiteService advSiteService;

    @Autowired
            private RedisCacheUtil redisCacheUtil;


    String insertPath;


    @RequestMapping("/intoBackAdv")
    public String intoBackAdv(Model model){

        List<AdvSite> advSites =
                advSiteService.selectAdvByAdvStatus();
        model.addAttribute("advSites",advSites);

        return "add_adv";
    }

    @RequestMapping(value = "/addBackAdv",method = RequestMethod.POST)
    public String addBackAdv(@Param("advTitle") String advTitle, @Param("advContent") String advContent,
                             @Param("advTime") String advTime, @Param("advOrder") String advOrder,
                             @Param("advLocation") String advLocation,@Param("advPageLocal") String advPageLocal){
        Date date = new Date(new java.util.Date().getTime());

        Adv adv = new Adv();
        adv.setAdvAddtime(advTime);
        adv.setAdvOrder(advOrder);
        adv.setAdvHead(advTitle);
        adv.setAdvContent(advContent);
        adv.setAdvLocation(advLocation);
        adv.setAdvPagelocal(advPageLocal);
        adv.setAdvClick(0);
        adv.setAdvImg(insertPath);


        adv.setAdvTime(date);
        advMapper.insert(adv);

        advSiteService.updateAdvSiteStatus(advLocation,advPageLocal);

        Integer advId = adv.getAdvId();

        long advRedisTime = Long.parseLong(advTime);

        redisCacheUtil.set(String.valueOf(advId),adv,advRedisTime);

        Adv redisAdv = (Adv) redisCacheUtil.get(String.valueOf(advId));

        System.out.println(redisAdv);

        return "forward:/BacKAdv/intoBackAdv";
    }

    @RequestMapping("/ajaxAddBackAdv")
    public void ajaxAddBackAdv(@RequestParam("advPhoto") MultipartFile advPhoto, HttpSession session) {
        //获取上传的文件的文件名
        String fileName = advPhoto.getOriginalFilename();
        //获取上传的文件的后缀名
        String suffixName = fileName.substring(fileName.lastIndexOf("."));
        //将UUID作为文件名
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        //将uuid和后缀名拼接后的结果作为最终的文件名
        fileName = uuid + suffixName;
        //通过ServletContext获取服务器中photo目录的路径
        ServletContext servletContext = session.getServletContext();
        String photoPath = servletContext.getRealPath("advPhoto");
        File file = new File(photoPath);
        //判断photoPath所对应路径是否存在
        if (!file.exists()) {
            //若不存在，则创建目录
            file.mkdir();
        }

        insertPath = "/advPhoto/" + fileName;

        String finalPath = photoPath + File.separator + fileName;
        //上传文件
        try {
            advPhoto.transferTo(new File(finalPath));
        } catch (IOException exception) {
            exception.printStackTrace();
        }

    }




}
