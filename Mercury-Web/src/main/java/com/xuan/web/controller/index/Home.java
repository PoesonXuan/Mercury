package com.xuan.web.controller.index;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Home {
    private static final Logger logger = Logger.getLogger(Home.class);
    @RequestMapping("{page}")
    public String getPage(@PathVariable String page){
        logger.info("跳转页："+page);
        return page;
    }
}
