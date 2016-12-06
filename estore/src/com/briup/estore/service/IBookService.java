package com.briup.estore.service;

import java.util.List;

import com.briup.estore.bean.Book;
import com.briup.estore.common.exception.BookServiceException;

/**
 * 书的业务逻辑接口
 * */
public interface IBookService {
	/**
	 * 查看所有的书
	 * */
	List<Book> listAllBooks() throws BookServiceException ;
	
	/**
	 * 查看某一本书的详细信息
	 * */
	Book showDetail(long id) throws BookServiceException;
}
