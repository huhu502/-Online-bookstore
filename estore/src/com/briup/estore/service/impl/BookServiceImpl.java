package com.briup.estore.service.impl;

import java.util.List;

import com.briup.estore.bean.Book;
import com.briup.estore.common.exception.BookServiceException;
import com.briup.estore.dao.BookDao;
import com.briup.estore.service.IBookService;

public class BookServiceImpl implements IBookService {
	private BookDao bookDao = new BookDao();
	@Override
	public List<Book> listAllBooks() throws BookServiceException {
		return bookDao.findAll();
	}

	@Override
	public Book showDetail(long id) throws BookServiceException {
		Book book = bookDao.findById(id);
		if(book!=null){
			return book;
		}else{
			throw new BookServiceException("该书已经下架！");
		}
	}

}
