<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	onLoad="MM_preloadImages('images/index_on.gif','images/reg_on.gif','images/order_on.gif','images/top/topxmas/jp_on.gif','images/top/topxmas/download_on.gif','images/top/topxmas/bbs_on.gif','images/top/topxmas/designwz_on.gif')"
	topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
	
	<jsp:include page="../head.jsp"></jsp:include>
	
	<!--文件体开始-->

	<table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
		<tr>
			<td height=25 valign=middle><img src="images/Forum_nav.gif"
				align="middle"> <a href=index.jsp>杰普电子商务门户</a> → <img
				border="0" src="images/dog.gif" width="19" height="18">
				确认定单</td>
		</tr>
	</table>
	<br>

	<form name="order" method="post" action="saveOrder.action" />
	<table cellpadding="3" cellspacing="1" align="center"
		class="tableborder1" id="table1">
		<tr>
			<td valign="middle" colspan="2" align="center" height="25"
				background="images/bg2.gif"><font color="#ffffff"><b>用户信息</b></font><input
				type="button" value="修改"
				onclick="javascript:window.location='userinfo.jsp';"></td>
		</tr>
		<tr>
			<td width="40%" class="tablebody2" align="right"><b>用户名</b>：</td>
			<td width="60%" class="tablebody1">${sessionScope.customer.name }</td>
		</tr>
		<tr>
			<td class="tablebody2" align="right"><b>联系地址</b>：</td>
			<td class="tablebody1">${sessionScope.customer.address }</td>
		</tr>
		<tr>
			<td class="tablebody2" align="right"><b>邮编</b>：</td>
			<td class="tablebody1">${sessionScope.customer.zip }</td>
		</tr>
		<tr>
			<td class="tablebody2" align="right"><b>手机</b>：</td>
			<td class="tablebody1">${sessionScope.customer.telephone }</td>
		</tr>
	</table>
	<br>
	<br>
	<table cellpadding=3 cellspacing=1 align=center class=tableborder1
		id="table3">
		<tr>
			<td valign=middle align=center height=25
				background="images/bg2.gif" colspan="5"><font
				color="#ffffff"><b>商品购物清单</b></font><input type="button" value="修改"
				onclick="javascript:window.location='shopcart.jsp';"></td>
		</tr>
	<c:forEach items="${sessionScope.shopCar.lines }" var="line" varStatus="state">
		<tr>
			<td class=tablebody2 valign=middle align=center width="">${state.index+1 }</td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<a
				href="productDetail.jsp?productid=2" target="_blank">${line.book.name }</a></td>
			<td class=tablebody2 valign=middle align=center width="">价格：${line.book.price }</td>
			<td class=tablebody1 valign=middle align=center width="">数量：${line.num }</td>
			<td class=tablebody2 valign=middle align=left width="">小计：￥${line.book.price*line.num }</td>
		</tr>
	</c:forEach>
		<tr>
			<td class=tablebody1 valign=middle align=center colspan="4"></td>
			<td class=tablebody1 valign=middle align=left width="">合计：<font
				color="#ff0000"><b>￥${sessionScope.shopCar.total }</b></font></td>
		</tr>
	</table>
	<p align="center">
		请认真检查以上订单信息，确认无误后，点击 → <a
			onclick="javascript:document.order.submit();" style="cursor: hand"><img
			src="images/submit.gif"></a>
	</form>
	</p>

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
							face="Verdana,">briup</font></b><font color=#CC0000>.com.cn</font></b><br>
			</td>
		</tr>
	</table>
</body>
</html>
</body>
</html>
