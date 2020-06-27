<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     
    <title> 注册</title>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
	<style>
	body{
	background-image:url(images/login1.jpeg)
	}
	tr{
    	display:block; /*将tr设置为块体元素*/
    	margin:20px;  /*设置tr间距为2px*/
    }
    .login_btn{display:block; background:#A2A4F5; color:#fff; font-size:15px; width:30%; line-height:50px; border-radius:3px; border:none; }
	</style>
<script language="javascript">    
	function isValid(form)    
	{
		if (form.id.value=="")    
		 {    
		 	alert("用户ID不能为空");    
			return false;    
		 }    
		if (form.name.value=="")    
	 	{    
	 		alert("用户名不能为空");    
	 		return false;    
 		}    
		if (form.psw.value!=form.psw2.value)    
		{    
			alert("两次输入的密码不同！");    
			return false;    
		}    
		else  if (form.psw.value=="")    
		{    
			alert("用户密码不能为空！");    
			return false;    
		}    
		else 
			return true;    
	}    
</script> 
</head>   
<body>  
  <center>  
   <br><br>
    <div class="materialContainer">  
	<div class="box">
 <!--  <h2 class="text-center"><font color="#b3b3ff">美妆管理系统</font> </h2>    -->	           
 	 <div class="title">用户注册</div>
 	 	   <!-- <form action="loginCheck.jsp"> --> 
 	 	  <form action="ResgisterServlet" method="post" onSubmit("return isValid(this);)> 
           <div class="input">
			<label for="regname">用户名</label>
			<input type="text" name="name" id="regname">
			<span class="spin"></span>
		</div>
		<div class="input">
			<label for="regpass">密码</label>
			<input type="password" name="psw" id="regpass">
			<span class="spin"></span>
		</div>
		<div class="input">
			<label for="reregpass">确认密码</label>
			<input type="password" name="psw2" id="reregpass">
			<span class="spin"></span>
		</div>

        <br>
        <div class="button login">
		<button type="submit">
			<span>注册</span>
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
