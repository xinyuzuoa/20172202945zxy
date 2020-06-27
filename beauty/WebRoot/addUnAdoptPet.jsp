<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加美妆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

<style>
	a
	{
		text-decoration:none;
		font-size:20px;
	}
</style>
  </head>
  
  <body background="images/welcome.jpeg">
    <form action="addUnAdoptPetCheck.jsp">
    	<table align="center" width="500">
    		<tr>
    			<td><a href="lookUnAdoptPetInform.jsp">美妆查询</a></td>
    			<td>美妆添加</td>
    			<td><a href="updateUnAdoptPet.jsp">美妆修改</a></td>
    			<td><a href="deleteUnAdoptPet.jsp">美妆删除</a></td>
    		</tr>
    	</table>
    	
    	<br>
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
  						<option value="red">口红</option>
  						<option value="eye">眼影</option>
  						<option value="pnk">粉底液</option>
  						<option value="water">香水</option>
  						<option value="cleanwater">卸妆水</option>
  						<option value="bb">BB霜</option>
  						<option value="others">其他</option>
  					</select>
				</td>
  			</tr>
  			<tr>
  				<td>添加人</td>
  				<td><input type="text" name="customName"/></td>
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
  			<tr>
  				<td>种草状况：  </td>
  				<td><input type="text" name="state"/></td>
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
