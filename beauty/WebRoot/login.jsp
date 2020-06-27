<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>美妆管理系统登录页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="iconfont/style.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">
<style>
	body{
	background:url(images/login1.jpeg) top left;
	}
	tr{
    	display:block; /*将tr设置为块体元素*/
    	margin:20px;  /*设置tr间距为2px*/
    }
    .login_btn{display:block; background:#A2A4F5; color:#fff; font-size:15px; width:30%; line-height:50px; border-radius:3px; border:none; }
</style>

</head>

<body style="width:100%; height:100%;">
<center>  
   <br><br>
    <div class="materialContainer">  
	<div class="box">
 	<h2 class="text-center"><font color="#b3b3ff">美妆管理系统</font> </h2>               
 	 <div class="title">用户登录</div>
 	 	   <!-- <form action="loginCheck.jsp"> --> 
 	 	   <form action="LoginServlet">
 	 	   <div class="input">
				 <label for="name">用户名</label>
     			 <input type="text" name="userName" id="name"  >
     			 <span class="spin"></span>
     	   </div>
     	    <div class="input">
				 <label for="pass">密码</label>
     			 <input type="password"  name="password" id="pass"  />
     			 <span class="spin"></span>
     	   </div>  
		<div class="checkbox mg-b25">
            <label><font color="#000066">您的身份：</font>&nbsp;&nbsp;
                <input type="radio" name="role" value="manager"><font color="#000066">管理员</font> 
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<input type="radio" name="role" value="custom"><font color="#000066">用 户</font>   		
             </label>
        </div>
        <br>
        <div class="button login">
		<button type="submit">
			<span>登录</span>
			<i class="fa fa-check"></i>
		</button>
		</div>
		
		</form> 
	</div></div>	 
 </center>   
<script src="js/jquery1.min.js"></script>
<script src="js/index1.js"></script>           
  </body>
</html>
