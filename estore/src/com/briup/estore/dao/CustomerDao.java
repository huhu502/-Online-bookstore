package com.briup.estore.dao;

import java.util.List;

import com.briup.estore.bean.Customer;

public class CustomerDao extends BaseDao<Customer> {
	/**
	 * 通过name查询
	 * */
	public Customer findByName(String name){
		String hql = "from Customer where name = ?";
		List<Customer> list = findbyHql(hql, name);
		return list.size()>0? list.get(0):null;
	}
}
