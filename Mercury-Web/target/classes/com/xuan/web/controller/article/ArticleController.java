package com.xuan.web.controller.article;

import com.xuan.web.controller.BaseController;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/article")
@Controller
public class ArticleController {

    private static final Logger logger = Logger.getLogger(ArticleController.class);

    @RequestMapping("/detail")
    public ModelAndView getArticle(){

        logger.info("进入getArticle()");

        ModelAndView modelAndView = new ModelAndView();

        String view = "article/detail";

        modelAndView.setViewName(view);
        return modelAndView;
    }

    @RequestMapping("/write")
    public ModelAndView getWritePage(){

        logger.info("getWritePage()");

        ModelAndView modelAndView = new ModelAndView();

        String view = "article/write";

        modelAndView.setViewName(view);
        return modelAndView;
    }

}
