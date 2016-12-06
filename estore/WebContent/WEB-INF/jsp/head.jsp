<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		id="table2">
		<tr>
			<td align="left" width="7%" background="images/top_bg.gif"><img
				src="images/logo.gif" width="165" height="60"></td>
			<td width="62%" background="images/top_bg.gif"></td>
			<td width="31%" background="images/top_bg.gif" align="right"><img
				src="images/top_r.gif" width="352" height="58" border="0"></td>
		</tr>
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td background="images/dh_bg.gif" align="left" height="12">
				<table width="100" border="0" cellspacing="0" cellpadding="0"
					align="center">
					<tr>
						<td width="5%"></td>
						<td width="10%"><a href="toIndex"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('Image1','','images/index_on.gif',1)">
								<img name="Image1" border="0" src="images/index.gif" width="90"
								height="36">
						</a></td>
						<td width="10%"><a href="user/userinfo.html"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('Image2','','images/reg_on.gif',1)">
								<img name="Image2" border="0" src="images/reg.gif" width="92"
								height="36">
						</a></td>
						<td width="10%"><a href="shopcart.html"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('Image4','','images/carts_on.gif',1)">
								<img name="Image4" border="0" src="images/cart.gif" width="92"
								height="36">
						</a></td>
						<td width="10%"><a href="user/order.html"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('Image5','','images/order_on.gif',1)">
								<img name="Image5" border="0" src="images/order.gif" width="92"
								height="36">
						</a></td>
						<td width="10%"><a href="index.html"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('Image6','','images/exit_on.gif',1)">
								<img name="Image6" border="0" src="images/exit.gif" width="92"
								height="36">
						</a></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<table cellspacing="1" cellpadding="3" align="center" border="0"
		width="98%">
		<tr>
			<td width="65%"><BR>
			<c:if test="${empty sessionScope.customer }">
			  <a href="toLogin">请登录</a> | 
			  没有账户？<a href="toRegister">注册</a> 
			</c:if>
			<c:if test="${!empty sessionScope.customer }">
			 	${sessionScope.customer.name }
			</c:if>
			 >> 欢迎访问 <b>杰普电子商务门户</b></td>
			<td width="35%" align="right"></td>
		</tr>
	</table>

    