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
			height:40px;
		}
	</style>

  </head>
  
  <body background="images/welcome.jpeg">
   <%
  	String n=(String)session.getAttribute("managerid");
  	out.print(n+"您好！\n");
   %>
	<table>
  		<tr>
  			<td>
  				<img src="images/touxiang.jpg" width="180" height="200">
  			</td>
  		</tr>
  		
  		<tr>
  			<td>
  				<a href="lookCusInform.jsp" target="main">用户资料</a><hr>
  			</td>
  		</tr>
   		<tr>
  			<td>
  				<a href="lookUnAdoptPetInform.jsp" target="main">美妆资料</a><hr>
  			</td>
  		</tr> 
  		 
  		<tr>
  			<td>
  				<a href="managerLookhotpoint.jsp" target="main">热点管理</a><hr>
  			</td>
  		</tr>	
  		<hr>	
  		<tr>
  			<td>
  				<a href="inSearch.jsp" target="main">查询</a><hr>
  			</td>
  		</tr>  	
  			
  		<tr>
  			<td>
  				<a href="login.jsp" target="all">退出</a>
  			</td>
  		</tr>

  	</table>
    
</style>
  </body>
</html>
