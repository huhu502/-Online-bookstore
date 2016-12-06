package com.briup.estore.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.briup.estore.bean.Customer;

/**
 * 跳转到登陆页面
 */
public class ToLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ToLoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * 用户是否登陆
	 * 用户是否记住密码  cookie
	 *   1） 登陆   -》
	 *   2） 登陆   -》 登陆框  （用户名密码记住）
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Customer customer = 
				(Customer) session.getAttribute("customer");
		String url = "/WEB-INF/jsp/login.jsp";
		//该用户已经登录
		if(customer != null){
			url = "/index.jsp";
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
