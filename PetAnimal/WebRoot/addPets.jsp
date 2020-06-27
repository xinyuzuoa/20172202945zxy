<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>增加美妆信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

<style>
	tr{
    	display:block; /*将tr设置为块体元素*/
    	margin:10px;  /*设置tr间距为2px*/
    }
</style>
  </head>
  
  <body background="images/top1.jpg">
    <form action="addPetsCheck.jsp" method="post">
    	<div>
			<a href="Main.jsp"><img alt="" src="images/jiantou.png" style="height:30px;width:30px"></img></a>
		</div>	
    	<hr>
    	<br>
    	<table align="center">
    	
    		<tr>
  				<th colspan="2" align="center"><h2>添加美妆信息</h2></th>
  			</tr>
  			<tr>
  				<td>类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 别：</td>
  				<td>
  					<select name="category" >
  						<option value="eye">眼影</option>
  						<option value="red">口红</option>
  						<option value="pink">粉底液</option>
  						<option value="water">香水</option>
  						<option value="cleanwater">卸妆水</option>
  						<option value="bb">BB霜</option>
  						<option value="others">其他</option>
  					</select>
				</td>
  			</tr>
  			<tr>
  				<td>名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 称：</td>
  				<td><input type="text" name="petName"/></td>
  			</tr>

  			<tr>
  				<td>产&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 地：</td>
  				<td><input type="text" name="petSex"/></td>
  			</tr>
  			<tr>
  				<td>价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 格：</td>
  				<td><input type="text" name="petAge"/></td>
  			</tr>
  			<tr>
  				<td>功效：  </td>
  				<td><input type="text" name="petFit"/></td>
  			</tr>
  		</table>
  		<div align="center">
  			<br>
  			<input style="display:block;background:#A2A4F5;color:#fff;font-size:15px; width:25%; line-height:30px; border-radius:3px;" 
  			name="pic" type="file" value="上传图片">
			<br>
  			<input style="display:block;background:#A2A4F5;color:#fff;font-size:15px; width:25%; line-height:30px; border-radius:3px;" 
  			name="sure" type="submit" value="确定">
			<br>
  			<input style="display:block;background:#A2A4F5;color:#fff;font-size:15px; width:25%; line-height:30px; border-radius:3px;" name="clear" type="reset" value="取消">
		</div>

    </form>
  </body>
</html>
