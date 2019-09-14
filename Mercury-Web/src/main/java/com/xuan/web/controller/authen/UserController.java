package com.xuan.web.controller.authen;

import com.alibaba.druid.util.StringUtils;
import com.xuan.common.utils.SendMailUtil;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@RequestMapping("/authen")
@Controller
public class UserController {
    private static final Logger logger = Logger.getLogger(UserController.class);


    @ResponseBody
    @RequestMapping("/mailValidate")
    public Map<String,Object> mailValidate(@RequestParam Map<String,Object> map, HttpServletRequest request){
        logger.info("into UserController.mailValidate()");
        if(map != null ){
            String mail = (String) map.get("register.post");
            logger.info("mail:"+mail);
            if(!StringUtils.isEmpty(mail)){
                Map<String,Object> mails = (Map<String, Object>) request.getSession().getAttribute("mails");
                if(mails == null ){
                    mails = new HashMap<String, Object>();
                }
                Object validateCode = SendMailUtil.getCode();
                mails.put(mail,validateCode);

                StringBuffer sb = new StringBuffer("默克系统验证码：");
                sb.append(validateCode);

                SendMailUtil.sendMail(mail, sb.toString());
                request.getSession().setAttribute("mails",mails);
            }
        }
        Map<String,Object> result = new HashMap<String, Object>();

        result.put("result","1");
        result.put("validateCode","validateCode");

        return result;
    }

    @RequestMapping("/loginPage")
    public ModelAndView toLoginPage(){
        logger.info("into UserController.toLoginPage()");
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("login");

        return modelAndView;
    }

    @RequestMapping("/registerPage")
    public ModelAndView toRegisterPage(){
        logger.info("into UserController.toLoginPage()");
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("register");

        return modelAndView;
    }

    @ResponseBody
    @RequestMapping("/register")
//    public Map<String,Object> toRegister(@ModelAttribute Map<String,Object> register){
    public Map<String,Object> toRegister(@RequestParam Map<String,Object> register){
        logger.info("into UserController.toRegister()");
        for (String key:register.keySet()) {
            Object o = register.get(key);
            logger.info("key:"+key+",value:"+o);
        }
        return register;
    }

    @ResponseBody
    @RequestMapping("/login")
//    public Map<String,Object> toLogin(@ModelAttribute Map<String,Object> login){
    public Map<String,Object> toLogin(@RequestParam Map<String,Object> login){
        logger.info("into UserController.toLogin()");

        for (String key:login.keySet()) {
            Object o = login.get(key);
            logger.info("key:"+key+",value:"+o);
        }
        return login;
    }

}
