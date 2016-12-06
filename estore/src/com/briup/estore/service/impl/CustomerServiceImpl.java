package com.briup.estore.service.impl;

import com.briup.estore.bean.Customer;
import com.briup.estore.common.exception.CustomerServiceException;
import com.briup.estore.dao.CustomerDao;
import com.briup.estore.service.ICustomerService;

public class CustomerServiceImpl implements ICustomerService {
	private CustomerDao customerDao = new CustomerDao();
	
	@Override
	public Customer login(String name, String password)
			throws CustomerServiceException {
		Customer customer = customerDao.findByName(name);
		if(customer != null){
			if(password.equals(customer.getPassword())){
				return customer;
			}else{
				throw new CustomerServiceException("密码不存在");
			}
		}else{
			throw new CustomerServiceException("该用户名不存在");
		}
	}

	@Override
	public void register(Customer customer) throws CustomerServiceException {

	}

	@Override
	public Customer updateInfo(Customer customer)
			throws CustomerServiceException {
		return null;
	}

}
