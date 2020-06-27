<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="jdbc.jsp" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>修改信息检查页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
	  <%
	  	String spetNum=new String(request.getParameter("id").getBytes(
	  			"ISO-8859-1"), "UTF-8");
	  	//int petNum=Integer.parseInt(spetNum);
	  	String name = new String(request.getParameter("name").getBytes(
	  			"ISO-8859-1"), "UTF-8");
	  	String sex = new String(request.getParameter("sex").getBytes(
	  			"ISO-8859-1"), "UTF-8");
	  	String age = request.getParameter("age");
	  	String fit = new String(request.getParameter("fit").getBytes(
	  			"ISO-8859-1"), "UTF-8");
	  %> 
   <%
   try
   {
  	String sql="update cusbeauty set petName='"+name+"',petSex='"+sex+"',petAge='"+age+"',petFit='"+fit+"' where  petNum='"+spetNum+"'";
  	stmt.executeUpdate(sql); 
  	out.print(sql);
  	response.sendRedirect("lookMyPets.jsp");
  	}
  	catch(Exception e)
  	{
  		e.printStackTrace();
  	}
  	finally
  	{
		stmt.close();
		conn.close();
  	}
    %>

  </body>
</html>
