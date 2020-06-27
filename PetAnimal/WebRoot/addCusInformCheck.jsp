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
    
    <title>添加用户数据</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
    <%
    	int cusid;
    	if(session.getAttribute("cusid")==null)
    		cusid=0;
    	else
    	{    	
    		cusid=Integer.parseInt(session.getAttribute("cusid").toString());
    		session.setAttribute("cusid", cusid+1);
    	}
    	String customName = (String)session.getAttribute("customName");
    	String customPasswd = (String)session.getAttribute("customPasswd");
    	String cusName = new String(request.getParameter("cusName").getBytes("ISO-8859-1"),"UTF-8");
    	String cusTelephone = new String(request.getParameter("cusTelephone").getBytes("ISO-8859-1"),"UTF-8");
    	String cusAddress = new String(request.getParameter("cusAddress").getBytes("ISO-8859-1"),"UTF-8");
    	String cusCertain = new String(request.getParameter("cusCertain").getBytes("ISO-8859-1"),"UTF-8");
    	Connection con = null;
    	Statement st=null;
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
   			String url = "jdbc:mysql://localhost:3306/beautysystem?useUnicode=true&characterEncoding=gbk";
   			con=DriverManager.getConnection(url,"root","123456");
   			st=con.createStatement();
   			String sql = "insert into custom values ('"+customName+"','"+customPasswd+"','"+cusName+"','"+cusTelephone+"','"+cusAddress+"','"+cusid+"','"+cusCertain+"')";
   			st.executeUpdate(sql);
   			response.sendRedirect("Main.jsp");
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		st.close();
    		con.close();
    	}
     %>
  </body>
</html>
