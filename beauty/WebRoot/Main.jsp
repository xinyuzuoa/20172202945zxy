<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/style1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery2.min.js"></script>
	<script language="javascript">
		$(document).ready(function() {

			/* 	1st example	*/

			/// wrap inner content of each anchor with first layer and append background layer
			$("#menu1 li a").wrapInner( '<span class="out"></span>' ).append( '<span class="bg"></span>' );

			// loop each anchor and add copy of text content
			$("#menu1 li a").each(function() {
				$( '<span class="over">' +  $(this).text() + '</span>' ).appendTo( this );
			});

			$("#menu1 li a").hover(function() {
				// this function is fired when the mouse is moved over
				$(".out",	this).stop().animate({'top':	'40px'},	250); // move down - hide
				$(".over",	this).stop().animate({'top':	'0px'},		250); // move down - show
				$(".bg",	this).stop().animate({'top':	'0px'},		120); // move down - show

			}, function() {
				// this function is fired when the mouse is moved off
				$(".out",	this).stop().animate({'top':	'0px'},		250); // move up - show
				$(".over",	this).stop().animate({'top':	'-40px'},	250); // move up - hide
				$(".bg",	this).stop().animate({'top':	'-40px'},	120); // move up - hide
			});
					

			/*	2nd example	*/
			
			$("#menu2 li a").wrapInner( '<span class="out"></span>' );
			
			$("#menu2 li a").each(function() {
				$( '<span class="over">' +  $(this).text() + '</span>' ).appendTo( this );
			});

			$("#menu2 li a").hover(function() {
				$(".out",	this).stop().animate({'top':	'40px'},	300); // move down - hide
				$(".over",	this).stop().animate({'top':	'0px'},		300); // move down - show

			}, function() {
				$(".out",	this).stop().animate({'top':	'0px'},		300); // move up - show
				$(".over",	this).stop().animate({'top':	'-40px'},	300); // move up - hide
			});

		});

	</script>
	<style type="text/css">
	body
	{
	 	background-image:url(images/top1.jpg);
	 	width:100%;
	 	background-size:100% 100%;
	}
	a:hover
	{
		text-decoration: none;
	}
	.mine
	{
		margin-top: 5px;
		height: 18px;
		line-height: 18px;
	}
	.mine div
	{
		margin-left:5px;
		width:70px;
		height: 10px;
		float: left;
		font-size: 15px;
		list-style-type:none;
	}
	.mine a
	{
		text-decoration: none;
		color: #152b3c;
		
		
	}
	.mine a:hover
	{
		border-radius:5%;
		color: #ffc107;
	} 
	.main{
		
		background-size:100% 100%;
		height:500px;
	}
	.nav
	{
		height: 100px;
		line-height: 80px;
	}
	.nav div
	{
		margin-left:50px;
		width:250px;
		height: 50px;
		float: left;
		font-size: 30px;
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
	.kinds
	{
		margin-bottom:100px;
		height:300px;
	}
	.kinds ul li
	{
		width:200px;
		margin-right:50px;
		margin-left:50px;
	}
	.kinds ul li
	{
		list-style-type:none;
		float:left;
	}
	tr
	{
		height:30px;
	}
	hr {
    
	}
	</style>

  </head>

<body>
	<div style="height:100px;">
		<div style="width:120px;float:left;padding-left:50px;padding-top:10px;">
			<iframe style="height:80px;" id="fancybox-frame" name="fancybox-frame1544429660395" frameborder="0" scrolling="no" hspace="0"  src="http://i.tianqi.com/index.php?c=code&a=getcode&id=38&h=60&w=610">
			</iframe>
		</div>

		<div class="topr" style="float:right;margin-top:5px;">

			<div class="mine">
  				<div>
  					<a href="lookMyInform.jsp">个人信息</a> 			
  				</div>
  				<div>
  					<a href="addPets.jsp">添加美妆</a>			
  				</div>
  				<div>
  					<a href="lookMyPets.jsp">种草彩妆</a>  			
  				</div>
  				<div>
  					<a href="login.jsp">退出</a>  			
  				</div>
				<div>
					<%
  					String n=(String)session.getAttribute("customName");
  					out.print(n+"\n");
    				%>
   				</div>
   			</div>
		</div>
		<div style="width:120px;float:left;margin-top:25px;margin-left:300px;padding-top:10px;">
			<a href="Map.jsp"><button type="submit" style="width:150px;">欢迎来访总部</button></a>
		</div>
	  <div style="padding-right:40px;padding-top:10px;width:450px;float:right;margin-top:15px;margin-left:300px;">
		<form action="searchCheck.jsp">
			<table >
  				<tr>
					<td >输入您想要查找的美妆:</td>
					<td>
						<input type="text" name="petName"/>
					</td>
					<td colspan="2">		
  						<input name="sure" type="submit" value="确认">  				
  					</td>
				</tr>
			</table>
		</form>
	</div>       
	</div>

<div class="main">
 
 <form action="lookCusCheck.jsp">
 <div id="menu1" class="menu">
     <ul>
     <li><a href="hotpoint.jsp" >&nbsp;</a></li>
     <li><a href="hotpoint.jsp" > </a></li>
     <li><a href="Main.jsp" target="top.jsp">首页</a></li>
     <li><a href="hotpoint.jsp" >&nbsp;</a></li>
     <li><a href="hotpoint.jsp" >热点</a></li>
     <li><a href="hotpoint.jsp" >&nbsp;</a></li>
     <li><a href="baike.jsp" >百科</a></li>
     <li><a href="hotpoint.jsp" >&nbsp;</a></li>
     <li><a href="notice.jsp" >种草须知</a></li>
     <li><a href="hotpoint.jsp" >&nbsp;</a></li>
  	 <div class="cls"></div>
  	</ul>
 </div>
	<!-- 定义网站banner -->
	<div class="kinds">
		<ul>
				<li style="left:100px">
					<a href="all.jsp"><img src="images/all.jpg" alt="">
					<p style="text-align:center;color:black;">全部美妆</p>
					</a>
				</li>
				<li style="left:100px">
					<a href="dog.jsp"><img src="images/red.jpg" alt="">
					<p style="text-align:center;color:black;">口红</p>
					</a>
					
				</li>
				<li>
					<a href="cat.jsp"><img src="images/eye.jpg" alt="">
					<p style="text-align:center;color:black;">眼影</p>
					</a>
				</li>
				<li>
					<a href="mouse.jsp"><img src="images/pink.PNG" alt="">
					<p style="text-align:center;color:black;">粉底液</p>
					</a>
				</li>
				<li>
					<a href="pig.jsp"><img src="images/water.PNG" alt="">
					<p style="text-align:center;color:black;">香水</p>
					</a>
				</li>
				<li>
					<a href="tortoise.jsp"><img src="images/cleanwater.jpg" alt="">
					<p style="text-align:center;color:black;">卸妆水</p>
					</a>
				</li>
				<li>
					<a href="rabbit.jsp"><img src="images/bb.jpg" alt="">
					<p style="text-align:center;color:black;">BB霜</p>
					</a>
				</li>
				<li>
					<a href="other.jsp"><img src="images/other.PNG" alt="">
					<p style="text-align:center;color:black;">其他</p>
					</a>
				</li>
			</ul>		
	</div>
  </form>
<!-- 	<form action="searchCheck.jsp" >
			<table style="padding-right:10px;padding-top:10px;width:700px;float:right;margin-top:10px;">
  				<tr>
					<td>输入您想要查找的美妆进行查询:</td>
					<td>
						<input type="text" name="petName"/>
					</td>
					<td colspan="2">		
  						<input name="sure" type="submit" value="确认">  				
  					</td>
				</tr>
			</table>
		</form>
		 -->

</div>
    <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.kxbdmarquee.js"></script>
  </body>
</html>
