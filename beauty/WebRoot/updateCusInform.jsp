<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="jdbc.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人信息修改</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  </head>
  
  <body background="images/top1.jpg">
  <%
  	String customName=(String)session.getAttribute("customName");
  	out.print(customName+"您好！");
   %>
  	<form action="updateCusInformCheck.jsp">
  		<table align="center" width="500">
  			<tr>
  				<td>
  					<a href="lookMyInform.jsp" style="text-decoration: none;">返回个人信息页面</a>
  				</td>
  				<td>修改个人信息</td>
  		</table>
  		<br>
  		<hr>
  		<br>
  		<table align="center">
    		<table align="center" width="700" border="2">
			<tr>
				<th colspan="4">修改用户信息</th>
				</tr>
			
			<%
			String sql="select * from custom where customName='"+customName+"'";
			rs=stmt.executeQuery(sql); 
			while(rs.next()){
			 %>
			 <tbody>
			 <tr>
			 		<td><%=rs.getString("cusName") %></td>
			 		<td>姓名</td>
  					<td><input type="text" name="cusName"/></td>
  				</tr>
  				
  				<tr>
  					<td><%=rs.getString("cusTelephone") %></td>
  					<td>电话</td>
  					<td><input type="text" name="cusTelephone"/></td>
  				</tr>
  				
  				<tr>
  					<td><%=rs.getString("cusAddress") %></td>
  					<td>地址</td>
  					<td><input type="text" name="cusAddress"/></td>
  				</tr>
  				
			 	</tbody>
			 	<%		 		 
    			} 	 
    			%>		  
    	</table>
    	<table align="center">
    	<tr>
  				<td colspan="2">
  				<input name="sure" type="submit" value="确认">
  				&nbsp;&nbsp;&nbsp;&nbsp;
  				<input name="clear" type="reset" value="取消">
  				</td>
  			</tr>
  			</table>
    	<hr>
    		 
  			<%
    		rs.close();
    		stmt.close();
     		conn.close();
   		%>
    	</table>
  	
  	</form>
    
  </body>
</html>
