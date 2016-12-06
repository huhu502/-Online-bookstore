<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>杰普电子商务门户</title>
<LINK href="css/main.css" rel=stylesheet>
<script language="JavaScript" src="js/main.js"></script>
</head>
<body
	onLoad="MM_preloadImages('images/index_on.gif','images/reg_on.gif','images/order_on.gif','../images/top/topxmas/jp_on.gif','../images/top/topxmas/download_on.gif','../images/top/topxmas/bbs_on.gif','../images/top/topxmas/designwz_on.gif')"
	topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
	
	<jsp:include page="head.jsp"></jsp:include>
	
	<!--文件体开始-->
	<table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
		<tr>
			<td height=25 valign=middle><img src="images/Forum_nav.gif"
				align="middle"> <a href=index.jsp>杰普电子商务门户</a> → 产品明细</td>
		</tr>
	</table>
	<br>

	<table width="100%" cellpadding=3 cellspacing=1 align=center class=tableborder1>
		<tr>
			<td valign=middle align=center height=25 background="images/bg2.gif"
				colspan="2"><p>
					<font color="#ffffff"><b>${requestScope.book.name }</b></font></td>
		</tr>
		
		<tr>
			<td class=tablebody1 valign=middle align=center width="20%">【
				价&nbsp; 格 】</td>
			<td class=tablebody1 valign=middle width="80%">&nbsp;&nbsp;${requestScope.book.price }</td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="">【出 版 社】</td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;${requestScope.book.publisur }</td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="">【
				书&nbsp; 号 】</td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;${requestScope.book.id }</td>
		</tr>
		<tr>
			<td class=tablebody1 align=center width="" valign="top">【
				简&nbsp; 介 】</td>
			<td class=tablebody1 valign=middle width="">
				${book.description }			
	
			</td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width=""></td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<img
				border="0" src="images/product/zcover2.gif" width="127" height="180"></td>
		</tr>
		<tr>
			<td class=tablebody2 valign=middle align=center colspan="2"><a
				href="shopcart.html"> <img border="0" src="images/buycar.gif"
					width="92" height="21"></a></td>
		</tr>
	</table>

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
