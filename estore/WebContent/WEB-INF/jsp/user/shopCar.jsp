<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>杰普电子商务门户</title>
<LINK href="css/main.css" rel=stylesheet>
<script language="JavaScript" src="js/main.js"></script>
</head>

<body
	onLoad="MM_preloadImages('images/index_on.gif','images/reg_on.gif','images/order_on.gif','../images/top/topxmas/jp_on.gif','../images/top/topxmas/download_on.gif','../images/top/topxmas/bbs_on.gif','../images/top/topxmas/designwz_on.gif')"
	topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
	
	<%=basePath %>
	<jsp:include page="../head.jsp"></jsp:include>
	<!--文件体开始-->

	<table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
		<tr>
			<td height=25 valign=middle><img src="images/Forum_nav.gif"
				align="middle"> <a href=index.jsp>杰普电子商务门户</a> → <img
				border="0" src="images/dog.gif" width="19" height="18"> 购物清单</td>
		</tr>
	</table>
	<br>

	<table width="100%" cellpadding=3 cellspacing=1 align=center class=tableborder1>
		<tr>
			<td valign=middle align=center height=25 background="images/bg2.gif"
				width=""><font color="#ffffff"><b>序号</b></font></td>
			<td valign=middle align=center height=25 background="images/bg2.gif"
				width=""><font color="#ffffff"><b>产品名称</b></font></td>
			<td valign=middle align=center height=25 background="images/bg2.gif"
				width=""><font color="#ffffff"><b>价格</b></font></td>
			<td valign=middle align=center height=25 background="images/bg2.gif"
				width=""><font color="#ffffff"><b>数量</b></font></td>
			<td valign=middle align=center height=25 background="images/bg2.gif"
				width=""><font color="#ffffff"><b>合计</b></font></td>
			<td valign=middle align=center height=25 background="images/bg2.gif"
				width=""><font color="#ffffff"><b>操作</b></font></td>
		</tr>
	<c:forEach items="${sessionScope.shopCar.lines }" var="line" varStatus="state">
		<tr>
			<form method="post" action="updateProduct.action" name="f1">
				<input type="hidden" name="productid" value="2"> <input
					type="hidden" name="number" value="1">
				<td class=tablebody2 valign=middle align=center width="">${state.index+1 }</td>
				<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<a
					href="productDetail.jsp?productid=2">${line.book.name }</a></td>
				<td class=tablebody2 valign=middle align=center width="">${line.book.price }</td>
				<td class=tablebody1 valign=middle align=center width=""><input
					type="text" name="num" value="${line.num }" size="4"/></td>
				<td class=tablebody2 valign=middle align=left width="">&nbsp;&nbsp;￥${line.book.price*line.num }</td>
				<td class=tablebody1 valign=middle align=center width=""><input
					type="button" value="取消"
					onclick="javascript:window.location='removeProduct.action?productid=2';">
					<input type="submit" value="保存修改"></td>
			</form>
		</tr>
	</c:forEach>
	
		<tr>
			<td class=tablebody1 valign=middle align=center colspan="4"></td>
			<td class=tablebody1 valign=middle align=left width="">&nbsp;&nbsp;<font
				color="#ff0000"><b>￥${sessionScope.shopCar.total }</b></font></td>
			<td class=tablebody1 valign=middle align=center width=""></td>
		</tr>
		<tr>
			<td class=tablebody2 valign=middle align=center colspan="6"><input
				type="button" value="提交订单"
				onclick="javascript:window.location='user/confirmOrder';">
				<input type="button" value="继续购物"
				onclick="javascript:window.location='toIndex';"> <input
				type="button" value="清空购物车"
				onclick="javascript:window.location='user/clearShopCar';"></td>
		</tr>
	</table>
	<br>
	<!--文件尾开始-->
	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		align="center" height="28">
		<tr>
			<td height="17" background="images/bot_bg.gif"></td>
		</tr>
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		align="center">
		<tr>
			<td bgcolor="#f1f1f6" height="53" valign="center">
				<p align="center">
					Copyright &copy;2004 - 2013 <a href="http://www.briup.com.cn"><b><font
							face="Verdana,">briup</font></b><font color=#CC0000>.com.cn</font></b></a><br>
			</td>
		</tr>
	</table>
</body>
</html>
