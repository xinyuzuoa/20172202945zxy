<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'notice.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
body{   
	font:"宋体";
	font-size:18px;
	font-weight: bold;
    margin: 0px;
    padding: 0px;
    background-size:100% 100%;
}
	.nav
	{
		height: 100px;
		line-height: 50px;
	}
	.nav div
	{
		margin-left:50px;
		width:250px;
		height: 50px;
		float: left;
		font-size: 20px;
		list-style-type:none;
	}
	.nav a
	{
		text-decoration: none;
		color: #152b3c;
		padding:15px 60px;
	}
	.nav a:hover
	{
		border-radius:5%;
		color: hotpink;
	} 


.not{
    font-family:微软雅黑;
    width:1000px; 
	margin: 0 auto;  
	font-size:  15Px;
    font-weight: bold;
    }
</style>

  </head>
  
  <body background="images/top1.jpg">
  <div>
	<br>
  	<div class="nav" align="center">
  		<div>
  			<a href="Main.jsp" target="_self">首页</a>  			
  		</div>
  		<div>
  			<a href="hotpoint.jsp">热门</a> 			
  		</div>
  		<div >
  			<a href="baike.jsp" >百科</a>  			
  		</div>
  		<div style="font-size:23px;color:#293DCE">
  			<a>种草须知</a>  			
  		</div>
  		

	</div>
  		<hr>
  		<br>
  		<div align="center">
  			<img src="images/summer.jpeg" alt="">
  		</div> 
  		<br>
  		<hr>
  		<br> 
	   <div class="not">
                        在本系统中，来自用户的数千万条真实使用体验，汇成全球的使用类口碑库。能够直接聆听使用者真实的声音。真实的口碑。<br>
                        本系统可以成为连接使用者和优秀品牌的纽带。使用者体验到一个好品牌时。会在社区分享使用体验，可以为其他犹豫用户提供借鉴。<br>
                       使用者也可根据种草人数来判断一个商品的好坏，从而做出决断，当体验效果后，可以选择是否种草该商品，为其他用户提供借鉴。
 	   </div>
   </div>
   <br>
   <br>
  </body>
  <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.kxbdmarquee.js"></script>
</html>
