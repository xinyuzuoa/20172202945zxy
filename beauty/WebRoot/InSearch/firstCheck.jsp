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
    
    <title>in 1</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  
  <body background="images/welcome.jpeg">
    <%
    	String petCategory = new String(request.getParameter("firstC").getBytes("ISO-8859-1"),"UTF-8");
    	out.println("您查询的结果如下：");
    	Connection con = null;
    	Statement st=null;
    	if(petCategory.equals("")){
    		response.sendRedirect("inSearch.jsp");
    	}
    	else{
    		try{
    			Class.forName("com.mysql.jdbc.Driver");
   				String url = "jdbc:mysql://localhost:3306/beautysystem?useUnicode=true&characterEncoding=gbk";
   				con=DriverManager.getConnection(url,"root","123456");
   				st=con.createStatement();
   				String sql = "select * from cusbeauty where petCategory='"+petCategory+"'";
   				//out.print(st.executeQuery(sql));
   				ResultSet rs=st.executeQuery(sql);
   				while(rs.next()){
   				%>
   				<table align="center" width="700" border="2" class="table table-striped">
   				<thead>
					<tr>
			           <td>种类</td>
                       <td>美妆名</td>
                       <td>产地</td>
                       <td>价格</td>
                       <td>种草人数</td>
					</tr>
				</thead>
				<tbody>
   				<tr>
				<td><%=rs.getString("petCategory")%></td>
				<td><%=rs.getString("petName")%></td>
				<td><%=rs.getString("petSex")%></td>
				<td><%=rs.getString("petAge")%></td>
				<td><%=rs.getString("state")%></td>
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
