package com.xuan.web.controller.index;

import com.xuan.batis.scan.mapper.pojo.Customer;
import com.xuan.beans.server.customer.ICustomerServer;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping("home")
@Controller
class IndexController  {

    private static final Logger logger = Logger.getLogger(IndexController.class);
    @Autowired
    private ICustomerServer customerServer;

    @RequestMapping("index")
    public String index(){


        return "index";
    }


    @ResponseBody
    @RequestMapping("data")
    public Map<String,Object> getData(){

        Map<String,Object> m = new HashMap<String,Object>();
        List<Customer> customers = customerServer.getCustomers();
        m.put("cs",customers);
        return  m;
    }
    @ResponseBody
    @RequestMapping("data2")
    public List<Customer> getData2(){

        List<Customer> customers = customerServer.getCustomers();

        return  customers;
    }
}
