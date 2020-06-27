<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'inSearch.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body background="images/welcome.jpeg">
   	<center style="margin-top:30px;">
   		<h1>查询</h1>
   		<form action="InSearch/firstCheck.jsp" method="get">
   		输入要查询美妆的种类：<input type="text" name="firstC" ></input>
   		<input type="submit" value="查询"></input>
   		</form>
   		<br><br>
   		<form action="InSearch/Second.jsp">
   		输入要查询美妆的价格：<input type="text" name="secondC"></input><input type="submit" value="查询"></input>
   		</form>
   		<br><br>
   		<form action="InSearch/Thrid.jsp">
   		输入要查询美妆的种草人数：<input type="text" name="thridC"></input><input type="submit" value="查询"></input>
   		</form>
   	</center>
  </body>
</html>
