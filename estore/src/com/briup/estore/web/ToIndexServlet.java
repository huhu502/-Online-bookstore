package com.briup.estore.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.briup.estore.bean.Book;
import com.briup.estore.common.exception.BookServiceException;
import com.briup.estore.service.IBookService;
import com.briup.estore.service.impl.BookServiceImpl;

/**
 * 跳转到首页
 * */
public class ToIndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ToIndexServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//调用service层代码，完成书籍信息查询
		IBookService bookService = new BookServiceImpl();
		String url = "/WEB-INF/jsp/index.jsp";
		try {
			List<Book> books = bookService.listAllBooks();
			request.setAttribute("books", books);
		} catch (BookServiceException e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
			url = "/WEB-INF/jsp/error.jsp";
		}
		RequestDispatcher dispatcher 
			= request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
