<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
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
				align="absmiddle"> <a href=index.jsp>杰普电子商务门户</a> → 用户登录</td>
		</tr>
	</table>
	<br>

	<form action="login" method=post name="login">
		<table  width="100%" cellpadding=3 cellspacing=1 align=center class=tableborder1>
			<tr>
				<td valign=middle colspan=2 align=center height=25
					background="images/bg2.gif"><font color="#ffffff"><b>输入您的用户名、密码登录</b></font></td>
			</tr>
			<tr>
				<td valign=middle class=tablebody1>请输入您的用户名</td>
				<td valign=middle class=tablebody1><INPUT name=name type=text>
					&nbsp; <a href="toRegister">没有注册？</a></td>
			</tr>
			<tr>
				<td valign=middle class=tablebody1>请输入您的密码</td>
				<td valign=middle class=tablebody1><INPUT name=password
					type=password> &nbsp;</td>
			</tr>
			<tr>
				<td class=tablebody2 valign=middle colspan=2 align=center>
				<button>登 录</button></td>
			</tr>
		</table>
	</form>
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


