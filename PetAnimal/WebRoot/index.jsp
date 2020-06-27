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
	<link rel="stylesheet" href="css/reset.css">

<!--响应式框架-->
<link rel="stylesheet" type="text/css" href="css/bootstrap1.css">

<!--css3动画库-->
<link rel="stylesheet" href="css/animate.css">

<!--banner大图基础样式-->
<link rel="stylesheet" href="css/slick.css">

<!--页面滚动基础样式-->
<link rel="stylesheet" href="css/jquery.fullPage.css" />

<!--导航样式-->
<link rel="stylesheet" href="css/head.css" />

<!--图片和滚屏样式-->
<link rel="stylesheet" href="css/index.css">


	<style type="text/css">
	body
	{
	 	background-image:url(image/1.jpg);
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
		height: 80px;
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
		margin-bottom:10px;
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



	
	</style>

  </head>

<body>
<!-- 导航 -->
<header class="header"> 
<iframe style="height:80px;" id="fancybox-frame" name="fancybox-frame1544429660395" frameborder="0" scrolling="no" hspace="0"  src="http://i.tianqi.com/index.php?c=code&a=getcode&id=38&h=60&w=610">
	</iframe>
<div style="width:120px;float:right;margin-top:25px;margin-right:500px;">
	<a href="Map.jsp"><button type="submit" style="width:150px;"> 欢迎来访总部</button></a>
</div>
	<div class="container clearfix"> 
		<div class="fr nav"> 
		<form action="searchCheck.jsp">
			<ul class="navbar_nav" data-in="fadeInDown" data-out="fadeOutUp">
			
				<li><a href="login.jsp">登录</a></li>
				<li><a href="SignUp.jsp">注册</a></li>
			
			</ul>
		</form>	
			
		</div>
		<a href="javascript:void(0)" id="navToggle">
			<span></span>
		</a>
	</div>
</header>



<div id="index_main" class="index_main">

	<!--导航-->
	<div class="section section1">
		<div class="index_banner">
		
			<div class="item">
				<div class="items scaleBg" style="background-image: url(image/banner1.jpg);"></div>
				<div class="inner">
					<div class="block_txt">
						<h4> Beauty makeup,to be continued</h4>
						<h2>让<span>美持续</span>发生</h2>
						<h3>
						    <p>欢迎加入我们，让我们一起科学变美~</p>
							<div style="text-align:center;margin:50px 0; font:normal 30px/24px 'MicroSoft YaHei';">							
							<p>点击：<a href="index1.jsp" target="_blank">游客访问</a></p>
							</div>
						</h3>                            
					</div>
				</div>
			</div>
			<div class="item">
				<div class="items scaleBg" style="background-image: url(image/2.jpg);"></div>
				<div class="inner">
					<div class="block_txt">
						<h4> Become beautiful</h4>
						<h2>让<span>美好持续</span>发生</h2>
						<h3>
						    <p>我们有让美持续发生的愿望，更有让美持续发生的能力</p>
							<div style="text-align:center;margin:50px 0; font:normal 30px/24px 'MicroSoft YaHei';">
							<p>点击：<a href="index1.jsp" target="_blank">游客访问</a></p>
							</div>
						</h3>                            
					</div>
				</div>
			</div>
			<div class="item">
				<div class="items scaleBg" style="background-image: url(image/banner2.jpg);"></div>
				<div class="inner">
					<div class="block_txt">
						<h4> </h4>
						<h2><span>科学变美</span><br>就是适合自己</h2>
						<h3>
						    <p>| 暗黑系 ？|  萝莉风？  | 御姐风 ？ |  </p>
							<div style="text-align:center;margin:50px 0; font:normal 30px/24px 'MicroSoft YaHei';">							
							<p>点击：<a href="index1.jsp" target="_blank">游客访问</a></p>
							</div>
						</h3>                            
					</div>
				</div>
			</div>
			<div class="item">
				<div class="items scaleBg" style="background-image: url(image/banner3.jpg);"></div>
				<div class="inner">
					<div class="block_txt">
						<h4> </h4>
						<h2>找到寻求适合自己的美妆产品</h2>
						<h3>
						    <p>相互种草  | 共同交流</p>
							<div style="text-align:center;margin:50px 0; font:normal 30px/24px 'MicroSoft YaHei';">
							<p>点击：<a href="index1.jsp" target="_blank">游客访问</a></p>
							</div>
						</h3>                            
					</div>
				</div>
			</div>
			<div class="item">
				<div class="items scaleBg" style="background-image: url(image/1.jpg);"></div>
				<div class="inner">
					<div class="block_txt">
						<h4>  </h4>
						<h2>美妆推荐管理</h2>
						<h3>
						    <p>科学变美  |  互相帮助  |  共同进步</p>
							<div style="text-align:center;margin:50px 0; font:normal 30px/24px 'MicroSoft YaHei';">
							<p>点击：<a href="index1.jsp" target="_blank">游客访问</a></p>
							</div>
					    </h3>                            
					</div>
				</div>
			</div>            
		</div>
		<div class="left slick_txt">
			<div class="prev slick_arrow"></div>
		</div>
		<div class="right slick_txt">
			<div class="next slick_arrow"></div>
		</div>
		<div class="number">
			<div class="inner clearfix">
				<span class="active">01</span>
				<span >02</span>
				<span >03</span>
				<span >04</span>
				<span >05</span>
			</div>
		</div>
	</div>

<!--     <div class="section section2">
<div class="items scaleBg" style="background-image: url(images/top1.jpg);">
<div style="height:100px;">
</div>
<hr>
 <form action="lookCusCheck.jsp">
  	<div class="nav">
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
  		

	</div>  -->
	<!-- 定义网站banner -->
<!-- 	<div class="kinds">
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
    </div>
    <div style="padding-right:10px;padding-top:10px;width:450px;float:right;margin-top:15px;">
		<form action="searchCheck.jsp">
			<table >
  				<tr>
					<td>输入您想要查找的美妆进行查询:</td>
					<td>
						<input type="text" name="petName"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">		
  						<input name="sure" type="submit" value="确认">  				
  					</td>
				</tr>
			</table>
		</form>
	
	
</div>
	
	-->
    <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.kxbdmarquee.js"></script>
    
    
    
    <script src="js/jquery.min.js"></script>
<script src="js/jquery.fullPage.min.js"></script>
<script src="js/index_slick.js"></script>
<script src="js/index.js"></script>
    </div> 
  </body>
</html>
