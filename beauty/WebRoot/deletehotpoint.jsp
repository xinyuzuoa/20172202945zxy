<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hotpointCheck.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>

  	
    <div class="content">
    	
    	<br>
    	<hr>
    	<br>
		<% 
    	String news = (String)session.getAttribute("news");
    	//String customName = (String)session.getAttribute("customName");
    	String customName = request.getParameter("customName");
    	out.println(news);
        out.println(customName);
    	Connection con = null;
    	Statement st=null;
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
   			String url = "jdbc:mysql://localhost:3306/beautysystem?useUnicode=true&characterEncoding=gbk";
   			con=DriverManager.getConnection(url,"root","123456");
   			st=con.createStatement();
   			//String sql = "delete from hotpoint where news='"+news+"'";
   			String sql = "delete from hotpoint where customName='"+customName+"'";
   			st.executeUpdate(sql);
   			response.sendRedirect("managerLookhotpoint.jsp");
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		st.close();
    		con.close();
    	}
    	%>
    </div>
  </body>
</html>
