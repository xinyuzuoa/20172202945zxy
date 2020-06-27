<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="jdbc.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>领养</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  <%
  	String states="已种草";
    String customName=(String)session.getAttribute("customName");
    String Nums=request.getParameter("petNum");
    int Num=Integer.parseInt(Nums);
    out.print(customName);
    String sql="update cusbeauty set customName='"+customName+"'  where petNum='"+Num+"'";
    stmt.executeUpdate(sql);
    String sql2="update cusbeauty set state='"+states+"'  where petNum='"+Num+"'";
    stmt.executeUpdate(sql2);    
    response.sendRedirect("lookMyPets.jsp");
   %>
  </body>
</html>
