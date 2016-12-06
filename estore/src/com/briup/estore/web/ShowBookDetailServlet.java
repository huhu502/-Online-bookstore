package com.briup.estore.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.briup.estore.bean.Book;
import com.briup.estore.common.exception.BookServiceException;
import com.briup.estore.service.IBookService;
import com.briup.estore.service.impl.BookServiceImpl;

/**
 * 显示图书详细信息
 */
public class ShowBookDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ShowBookDetailServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		IBookService bookService = new BookServiceImpl();
		//获取前台传递过来的参数id
		long id = Long.parseLong( request.getParameter("id"));
		String url = "WEB-INF/jsp/detail.jsp";
		try {
			Book book = bookService.showDetail(id);
			request.setAttribute("book", book);
		} catch (BookServiceException e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
			url="WEB-INF/jsp/error.jsp";
		}
		//跳转
		request.getRequestDispatcher(url).forward(request, response);
		
		
	}

}
