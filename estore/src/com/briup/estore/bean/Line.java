package com.briup.estore.bean;

import java.io.Serializable;

/**
 * 订单项 
 * 
 *   1 coffee 2 1.0 2.0
 * */
public class Line implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private Integer num;
	
	// 多个订单项属于一类书
	private Book book;
	// 多个订单项属于一个订单
	private Order order;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
}
