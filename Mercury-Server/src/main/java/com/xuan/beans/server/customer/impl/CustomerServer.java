package com.xuan.beans.server.customer.impl;

import com.xuan.batis.scan.mapper.CustomerMapper;
import com.xuan.batis.scan.mapper.pojo.Customer;
import com.xuan.batis.scan.mapper.pojo.CustomerExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServer implements ICustomerServer {

    @Autowired
    private CustomerMapper customerMapper;

    public List<Customer> getCustomers(){
        CustomerExample example = new CustomerExample();
        List<Customer> customers = this.customerMapper.selectByExample(example);
        return customers;
    }
}
