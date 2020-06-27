<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="jdbc.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查看美妆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body background="images/top1.jpg">
  <%
  	String customName=(String)session.getAttribute("customName");
  	String petName = "Estee Laude";
   %>
  	
  	<table align="center" width="500">
		<div>
			<a href="Main.jsp"><img alt="" src="images/jiantou.png" style="height:30px;width:30px"></img></a>
		</div>	
		<hr>
		<br>
		<div>
		<table align="center" width="400">
			<tr>
				<th colspan="4"><h2>查看个人美妆</h2></th>
			</tr>
		</div>
		<br>
		 <div style="width:100px;float:right;">
  			<a href="updatePetinfo.jsp" style="text-decoration: none;">修改美妆信息</a>
  		</div>
			<% 
			String sql="select * from cusbeauty where petName='"+petName+"'";
			rs=stmt.executeQuery(sql);
			if(!rs.wasNull()){
			while(rs.next()){
			 %>
			 <tr>
			 	<td>名称：</td>
			 	<td><%=rs.getString("petName") %></td>
			 </tr>
			 <tr>
			 	<td>产地：</td>
			 	<td><%=rs.getString("petSex") %></td>
			 </tr>
			 <tr>
			 	<td>价格：</td>
			 	<td><%=rs.getString("petAge") %></td>
			 </tr>
			 <tr>
			 	<td>功效：</td>
			 	<td><%=rs.getString("petFit") %></td>
			 </tr>
			 <tr>
			 	<td>照片：</td>
			 	<td><img src=<%=rs.getString("petPic")%> border=0 height=90 width=110></td>
			 </tr>
			 <%
    			}
    			%>
    	</table>

  		<%
    		}else{
    			%>
    			<table  align="center">
    				<td>
  						<a href="addPets.jsp">您还没有添加美妆，是否添加</a>
  					</td>
  				</table>
    			
    			<%
    		}
    		 %>
    	
    	<%
    		rs.close();
    		stmt.close();
     		conn.close();
   		%>
		<hr>
		</table>
  </body>
</html>
