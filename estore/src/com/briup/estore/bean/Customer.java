package com.briup.estore.bean;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

/**
 * 顾客类
 * @author licy
 * */
public class Customer implements Serializable,HttpSessionBindingListener {
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String name;
	private String password;
	private String zip; //邮编
	private String address;
	private String telephone;
	private String email;
	//一个顾客维护多个订单信息
	private Set<Order> orders = new HashSet<Order>();
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	
	
	@Override
	public void valueBound(HttpSessionBindingEvent event) {
		/*
		 * 当customer对象和session绑定会执行该方法，意味着登录
		 * 成功，将购物车对象放在session中
		 */
		HttpSession session = event.getSession();
		ShopCar shopCar = new ShopCar();
		session.setAttribute("shopCar", shopCar);
	}
	@Override
	public void valueUnbound(HttpSessionBindingEvent event) {
		
	}
}
