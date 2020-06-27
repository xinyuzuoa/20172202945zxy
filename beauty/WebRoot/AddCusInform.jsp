<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
	body{
			background-image:url(images/login1.jpeg)
		}
    table {
        border-radius: 10px;
    }
		</style>	
  </head>
  
  <body background="images/login1.jepg">
      <% 	 
   		String customName=(String)session.getAttribute("customName");
   		String customPasswd=(String)session.getAttribute("customPasswd");
   		out.print(customName);	
   		session.setAttribute("customName",customName);
   		session.setAttribute("customPasswd",customPasswd);
    	
     %>
    <form action="addCusInformServlet" method="post">
    	<br>
    	<hr>
    	<br><br><br><br><br>
    	<table align="center" width="20%" cellpadding="13" bgcolor="#e5e5ff" class="table" >
    		<tr>
  				<th colspan="2" align="center">添加个人信息</th>
  			</tr>
  			<tr>
  				<td>姓名</td>
  				<td><input type="text" name="cusName"/></td>
  			</tr>
  			<tr>
  				<td>电话</td>
  				<td><input type="text" name="cusTelephone"/></td>
  			</tr>
  			<tr>
  				<td>地址</td>
  				<td><input type="text" name="cusAddress"/></td>
  			</tr>
  			<tr>
  				<td>身份证号</td>
  				<td><input type="text" name="cusCertain"/></td>
  			</tr>
    		<tr align="center">
  				<td colspan="2">
  				<input name="sure" type="submit" value="确认">
  				&nbsp;&nbsp;&nbsp;&nbsp;
  				<input name="clear" type="reset" value="取消">
  				</td>  			
  			</tr>
    	</table>
    </form>
  </body>
</html>
