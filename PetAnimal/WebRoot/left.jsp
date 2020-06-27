<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>left</title>
    
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

	<style>
	a
	{
		text-decoration: none;
	}
	tr
	{
		height:30px;
	}
	</style>

  </head>
  
  <body background="images/welcome.jpeg">
    <%
  	String n=(String)session.getAttribute("customName");
  	out.print(n+"您好！\n");
   %>
   <br>
  	<table>
  		<tr>
  			<td>
  				<img src="images/touxiang.jpg" width="150" height="180">
  			</td>
  		</tr>
  		<tr>
  			<td>
  				<a href="top.jsp" target="main">首页</a>
  			</td>
  		</tr>
  		<tr>
  			<td >
  				<a href="lookMyInform.jsp" target="main">个人信息</a>
  			</td>
  		</tr>
  		<tr>
  			<td>
  				<a href="addPets.jsp" target="main">添加美妆</a>
  			</td>
  		</tr>

  		<tr>
  			<td>
  				<a href="lookMyPets.jsp" target="main">我的美妆</a>
  			</td>
  		</tr>
  		
  		<tr>
  			<td color="black">
  				<a href="login.jsp" target="all">退出</a>
  			</td>
  		</tr>
  	</table>
    
  </body>
</html>
