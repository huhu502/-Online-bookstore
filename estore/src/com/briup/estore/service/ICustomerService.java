package com.briup.estore.service;

import com.briup.estore.bean.Customer;
import com.briup.estore.common.exception.CustomerServiceException;

/**
 * 顾客类业务逻辑接口
 * */
public interface ICustomerService {
	/**
	 * 登陆
	 * */
	Customer login(String name,String password) throws CustomerServiceException;
	
	/**
	 * 注册
	 * */
	void register(Customer customer) throws CustomerServiceException;
	
	/**
	 * 修改用户信息
	 * */
	Customer updateInfo(Customer customer) throws CustomerServiceException;
	
	
}
