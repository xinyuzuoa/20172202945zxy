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
    
    <title>游客</title>
    
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
	 	height:100%;
	 	background-size:100% 100%;
	}
	a:hover
	{
		text-decoration: none;
	}
	.nav
	{
		margin-top: 10px;
		height: 50px;
		line-height: 50px;
	}
	.nav div
	{
		margin-left:50px;
		width:200px;
		height: 50px;
		float: left;
		font-size: 20px;
		list-style-type:none;
	}
	.nav a
	{
		text-decoration: none;
		color: #152b3c; /*字体颜色*/
		padding:15px 60px;
	}
	.nav a:hover
	{
		border-radius:5%;
		color: hotpink;
	} 
	.kinds 
	{
		margin-bottom:20px;
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
	.topr a{
		text-decoration: none;
		color:black;
		font-size:20px;
		font-weight:700;
		
	}
		    * {
	       margin:0px;/**/
  	       padding:0px;/**/
        }
        #banner {
	       width:800px;/**/
	       height:350px;/**/
	       margin-left:25%;
	       margin-top:10px;
        }
        #banner .imga {
	       display:none;
        }
        #banner .img .active {
	       display:block;
        }
        #banner .title {
	       height:15px;/*设置整体页面的高度*/
	       background-color:rgba(0,123,225,0);/*轮播图循环框的颜色及透明度*/
	       border-radius:100px;/*轮播图循环框的圆角形状*/
	       margin-top:-35px;/*设置元素的上外边距*/
	       float:right;/*把图像向右浮动*/
	       margin-left:40%;/*设置循环框的左边距*/
	       margin-right:40%;/*设置循环框的右边距*/
	       padding:10px 5px 5px 10px;/*设置循环框的44个内边距*/
	       position:relative;/*相对于其正常位置进行定位*/
        } 
        #banner .title .disc {
	       list-style:none;/*把图像设置为列表中的列表项目标记*/
	       width:10px;/*定义循环框内点的宽度*/
	       height:10px;/**定义循环框内点的高度*/
	       background:white;/*循环框内点的颜色*/
	       border-radius:10px;/*轮播图循环框内点的圆角形状*/
	       float:left;/*把图像向左浮动*/
	       margin-right:10px;/*设置循环框的右边距*/
	       margin-bottom:0px;/*设置循环框的下边距*/
        }/**/
        #banner .title .active {
	       background:#8470FF;
        }		
	</style>
  </head>

<body>
<div style="height:100px;">
<div style="width:120px;float:left;padding-left:50px;">
	<iframe style="height:80px;" id="fancybox-frame" name="fancybox-frame1544429660395" frameborder="0" scrolling="no" hspace="0"  src="http://i.tianqi.com/index.php?c=code&a=getcode&id=38&h=60&w=610">
	</iframe>
</div>

<div class="topr" style="padding-right:40px;padding-top:10px;width:200px;float:right;margin-top:15px;">
<form action="searchCheck.jsp">
	<div><a href="login.jsp">登录</a>
		/
		<a href="SignUp.jsp">注册</a></div>
</form>
</div>
<div style="width:120px;float:right;margin-top:25px;margin-right:100px;">
			<a href="Map.jsp"><button type="submit" style="width:150px;"> 欢迎来访总部</button></a>
</div>

</div>
<hr>
   
 <form action="lookCusCheck.jsp">
 <!--  	<div class="nav">
  		<div>
  		<a href="Main.jsp" target="top.jsp">首页</a>  			
  		</div>
  		<div>
  			<a href="hotpoint.jsp">热门</a> 			
  		</div>
  		<div>
  			<a href="baike.jsp" >百科</a>  			
  		</div>
  		<div>
  			<a href="notice.jsp" >种草须知</a>  			
  		</div>
	</div>
 -->
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
					<p style="text-align:center;color:darkblue;">全部美妆</p>
					</a>
				</li>
				<li style="left:100px">
					<a href="dog.jsp"><img src="images/red.jpg" alt="">
					<p style="text-align:center;color:darkblue;">口红</p>
					</a>
					
				</li>
				<li>
					<a href="cat.jsp"><img src="images/eye.jpg" alt="">
					<p style="text-align:center;">眼影</p>
					</a>
				</li>
				<li>
					<a href="mouse.jsp"><img src="images/pink.PNG" alt="">
					<p style="text-align:center;color:darkblue;">粉底液</p>
					</a>
				</li>
				<li>
					<a href="pig.jsp"><img src="images/water.PNG" alt="">
					<p style="text-align:center;color:darkblue;">香水</p>
					</a>
				</li>
				<li>
					<a href="tortoise.jsp"><img src="images/cleanwater.jpg" alt="">
					<p style="text-align:center;color:darkblue;">卸妆水</p>
					</a>
				</li>
								<li>
					<a href="rabbit.jsp"><img src="images/bb.jpg" alt="">
					<p style="text-align:center;color:darkblue;">BB霜</p>
					</a>
				</li>
								<li>
					<a href="other.jsp"><img src="images/other.PNG" alt="">
					<p style="text-align:center;color:darkblue;">其他</p>
					</a>
				</li>
			</ul>
		
	</div>
    </form>
 <div style="padding-right:40px;padding-top:10px;width:450px;float:right;margin-top:15px;">
		<form action="searchCheck.jsp">
			<table >
  				<tr>
					<td>输入您想要查找的美妆:</td>
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
    <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.kxbdmarquee.js"></script>
  </body>
</html>
