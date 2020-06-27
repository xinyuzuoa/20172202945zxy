<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'searchCheck.jsp' starting page</title>
    
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
		body{
			background-image:url(images/top1.jpg)
		}
		table{
			background:white;
			margin-top:50px;
		}
	</style>
  </head>
  
  <body background="images/top1.jpg"">
    <%
    	String petName = new String(request.getParameter("petName").getBytes("ISO-8859-1"),"UTF-8");
    	Connection con = null;
    	Statement st=null;
    	if(petName.equals("")){
    		response.sendRedirect("search.jsp");
    	}
    	else{
    		try{
    			Class.forName("com.mysql.jdbc.Driver");
   				String url = "jdbc:mysql://localhost:3306/beautysystem?useUnicode=true&characterEncoding=utf-8";
   				con=DriverManager.getConnection(url,"root","123456");
   				st=con.createStatement();
   				String sql = "select * from cusbeauty where petName like '%"+petName+"%'";
   				ResultSet rs=st.executeQuery(sql);
   				//response.sendRedirect("lookMyPets.jsp");
   				while(rs.next()){
   				%>
   				<table align="center" width="700" border="2" class="table table-striped">
				<thead>
				<tr>
					<td>名称</td>
					<td>产地</td>
					<td>价格</td>	
					<td>功效</td>	
					<td>图片</td>	
					<td>种草人数</td>	
				</tr>
				</thead>
				<tbody>
   				<tr>
			 	<td><%=rs.getString("petName") %></td>
			 	<td><%=rs.getString("petSex") %></td>
			 	<td><%=rs.getString("petAge") %></td>	
			 	<td><%=rs.getString("petFit") %></td>
			 	<td><img src=<%=rs.getString("petPic")%> border=0 height=90 width=110></td>
			 	<td><%=rs.getString("state") %></td>	
   				</tr></tbody>
   				</table>
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
