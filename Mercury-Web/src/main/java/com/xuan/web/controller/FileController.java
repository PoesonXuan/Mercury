package com.xuan.web.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@RequestMapping("file")
@Controller
public class FileController {
    private static final Logger logger = Logger.getLogger(FileController.class);

    @ResponseBody
    @RequestMapping("/uploadImg")
    public Map<String,Object> uploadImg(MultipartFile multipartFile){
        logger.info("进入uploadImg()");
        Map<String,Object> map = new HashMap<String,Object>();

        if(!multipartFile.isEmpty()){
            logger.info("开始存储文件");
            //设置文件的保存路径
            String filePath = "G:\\Temp\\" + multipartFile.getOriginalFilename();
            //转存文件
            try {
                multipartFile.transferTo(new File(filePath));
            } catch (IOException e) {
                logger.error("uploadImg",e);
            }
        }else{
            logger.info("文件为空");
        }

        return map;

    }
}
