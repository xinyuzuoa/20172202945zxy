<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'lookMyPetsCheck.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <%
    	String petName = new String(request.getParameter("cusName").getBytes("ISO-8859-1"),"UTF-8");
    	String petSex = new String(request.getParameter("petSex").getBytes("ISO-8859-1"),"UTF-8");
    	String petAge = new String(request.getParameter("petAge").getBytes("ISO-8859-1"),"UTF-8");
    	String petFit = new String(request.getParameter("petFit").getBytes("ISO-8859-1"),"UTF-8");
    	String state= new String(request.getParameter("state").getBytes("ISO-8859-1"),"UTF-8");
    	Connection con = null;
    	Statement st=null;
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
   			String url = "jdbc:mysql://localhost:3306/beautysystem?useUnicode=true&characterEncoding=gbk";
   			con=DriverManager.getConnection(url,"root","123456");
   			st=con.createStatement();
   			String sql = "select * from cusbeauty";
   			st.executeQuery(sql);
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		st.close();
    		con.close();
    	}
     %>
  </body>
</html>
