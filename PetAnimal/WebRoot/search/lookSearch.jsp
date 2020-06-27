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
    
    <title>My JSP 'lookClientCheck.jsp' starting page</title>
    
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
		body{
			background-image:url(images/welcome.jpeg)
		}
	</style>

  </head>
  
  <body bgcolor="lightblue">
    <%
    	String cusName = new String(request.getParameter("cusName").getBytes("ISO-8859-1"),"UTF-8");
    	Connection con = null;
    	Statement st=null;
    	if(cusName.equals("")){
    		response.sendRedirect("lookCusInform.jsp");
    	}
    	else{
    		try{
    			Class.forName("com.mysql.jdbc.Driver");
   				String url = "jdbc:mysql://localhost:3306/beautysystem?useUnicode=true&characterEncoding=gbk";
   				con=DriverManager.getConnection(url,"root","123456");
   				st=con.createStatement();
   				String sql = "select * from custom where cusName like '%"+cusName+"%'";
   				//out.print(st.executeQuery(sql));
   				ResultSet rs=st.executeQuery(sql);
   				while(rs.next()){
   				%>
   				<table align="center" width="700" border="2" class="table table-striped">
   				<thead>
					<tr>
				<td>编号</td>
				<td>登录名</td>
				<td>密码</td>
				<td>姓名</td>
				<td>电话</td>
				<td>地址</td>
				<td>身份证</td>
					</tr>
				</thead>
				<tbody>
   				<tr>
   					<td><%=rs.getString("cusNum") %></td>
			 		<td><%=rs.getString("customPasswd") %></td>
			 		<td><%=rs.getString("customName") %></td>
			 		<td><%=rs.getString("cusName") %></td>
			 		<td><%=rs.getString("cusTelephone") %></td>
			 		<td><%=rs.getString("cusAddress") %></td>
			 		<td><%=rs.getString("cusCertain") %></td>
   				</tr></tbody>
   				</table>
   				<a href="search/updateSearch0.jsp?cusName=<%=rs.getString("cusName")%>">修改</a>
   				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   				<a href="search/deleteSearch.jsp?cusName=<%=rs.getString("cusName")%>">删除</a>
   				<%
   				}
    		}catch(Exception e){
    			e.printStackTrace();
    		}finally{
    			st.close();
    			con.close();
    		}
    	}
    	
     %>
  </body>
</html>
