<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<style type="text/css">
		a
		{	
			text-decoration: none;
			font-size:20px;
		}
</style>
  </head>
  
  <body background="images/welcome.jpeg">
    <form action="addCusCheck.jsp">
    	<table align="center" width="500">
    		<tr>
    			<td><a href="lookCusInform.jsp">用户查询</a></td>
    			<td>用户添加</td>
    			<td><a href="updateCus.jsp">用户修改</a></td>
    			<td><a href="deleteCus.jsp">用户删除</a></td>
    		</tr>
    	</table>
    	<br>
    	<hr>
    	<br>
    	<table align="center">
    		<tr>
  				<th colspan="2" align="center"><h2>添加用户信息</h2></th>
  			</tr>
  			<tr>
  				<td>登录名</td>
  				<td><input type="text" name="customName"/></td>
  			</tr>
  			<tr>
  				<td>密码</td>
  				<td><input type="text" name="customPasswd"/></td>
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
