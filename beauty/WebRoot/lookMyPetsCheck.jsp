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
<style>
	a
	{
		text-decoration:none;
		font-size:20px;
	}
</style>

  </head>
  
  <body>
   <%
    	String customName = (String)session.getAttribute("customid");
    	String petName = new String(request.getParameter("cusName").getBytes("ISO-8859-1"),"UTF-8");
    	String petSex = new String(request.getParameter("cusTelephone").getBytes("ISO-8859-1"),"UTF-8");
    	String petAge = new String(request.getParameter("cusAddress").getBytes("ISO-8859-1"),"UTF-8");
    	String petFit = new String(request.getParameter("cusCertain").getBytes("ISO-8859-1"),"UTF-8");
    	Connection con = null;
    	Statement st=null;
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
   			String url = "jdbc:mysql://localhost:3306/beautysystem?useUnicode=true&characterEncoding=gbk";
   			con=DriverManager.getConnection(url,"root","123456");
   			st=con.createStatement();
   			String sql = "select petName,petSex,petAge,petFit from cusbeauty where customName='"+customName+"'";
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
