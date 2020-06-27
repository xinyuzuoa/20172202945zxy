<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>manager</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    
    <link rel="stylesheet" href="css/style2.css">

  </head>
  
  <body background="images/welcome.jpeg">
   
     
<div class="container">
  <div class="first-name">
    <span> <%
    	String managerName=(String)session.getAttribute("managerid");
    	out.print(managerName);
     %></span>
  </div>
  <div class="heart">
    <audio>
	  <source src="mp3/heartbeat.mp3"></source>
    </audio>
    <span> doudou </span>
    <div class="right-heart"></div>
    <div class="left-heart"></div>
  </div>
  <div class="last-name">
    <span> 你好 </span>
  </div>
    <br><br><br><br><br>
     
   	<h3>请保持谦虚谨慎的态度<br>
   	对每一位用户负责</h3>
</div>

  </body>
</html>
