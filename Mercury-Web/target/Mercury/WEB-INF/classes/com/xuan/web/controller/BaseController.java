package com.xuan.web.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/Mercury")
@Controller
public class BaseController {
    private static final Logger logger = Logger.getLogger(BaseController.class);

    @RequestMapping("/{page}")
    public String toPage(@PathVariable String page){
        logger.info("进入toPage（）");
        if("top".equals(page)){
            return "top/top";
        }else if("footer".equals(page)){
            return "footer/footer";
        }
        return page;
    }

   /* @RequestMapping("/top")
    public String toTopPage(){
        logger.info("toTopPage（）");
        return "top/top";
    }
    @RequestMapping("/footer")
    public String toFooterPage(){
        logger.info("toFooterPage（）");
        return "footer/footer";
    }*/
}
