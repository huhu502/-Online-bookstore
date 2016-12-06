package com.briup.estore.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.briup.estore.bean.Book;
import com.briup.estore.bean.ShopCar;
import com.briup.estore.common.exception.BookServiceException;
import com.briup.estore.service.IBookService;
import com.briup.estore.service.impl.BookServiceImpl;

/**
 * 添加购物车
 * */
public class AddShopCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddShopCarServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		IBookService bookService = new BookServiceImpl();
		long id = Long.parseLong(request.getParameter("id"));
		
		int num = 1;
		String numStr = request.getParameter("num");
		if(numStr!=null){
			num = Integer.parseInt(numStr);
		}
		
		HttpSession session = request.getSession();
		//获取session中的shopCar
		ShopCar shopCar =
				(ShopCar) session.getAttribute("shopCar");
		//通过id获取book
		String url = "/WEB-INF/jsp/user/shopCar.jsp";
		try {
			Book book = bookService.showDetail(id);
			shopCar.addCar(book, num);
		} catch (BookServiceException e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
			url ="/WEB-INF/jsp/error.jsp";
		}
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
