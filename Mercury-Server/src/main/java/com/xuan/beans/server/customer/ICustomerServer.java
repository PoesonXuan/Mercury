package com.xuan.beans.server.customer;

import com.xuan.batis.scan.mapper.pojo.Customer;

import java.util.List;

public interface ICustomerServer {

    List<Customer> getCustomers();
}
