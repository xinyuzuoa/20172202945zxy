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
    
    <title>处理宠物修改数据</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body background="images/welcome.jpeg">
    <%
    	String petNum = new String(request.getParameter("petNum").getBytes("ISO-8859-1"),"UTF-8");
        String petCategory = new String(request.getParameter("petCategory").getBytes("ISO-8859-1"),"UTF-8");
    	String customName = new String(request.getParameter("customName").getBytes("ISO-8859-1"),"UTF-8");
    	String petName = new String(request.getParameter("petName").getBytes("ISO-8859-1"),"UTF-8");
    	String petSex = new String(request.getParameter("petSex").getBytes("ISO-8859-1"),"UTF-8");
    	String Age = new String(request.getParameter("petAge").getBytes("ISO-8859-1"),"UTF-8");
    	int petAge = Integer.parseInt(Age);
    	String petFit = new String(request.getParameter("petFit").getBytes("ISO-8859-1"),"UTF-8");
    	//String state="未领养";
    	String petPic = request.getParameter("pic");
    	petPic="images/"+petPic;
    	Connection con = null;
    	Statement st=null;
    		try{
    			Class.forName("com.mysql.jdbc.Driver");
   				String url = "jdbc:mysql://localhost:3306/beautysystem?useUnicode=true&characterEncoding=gbk";
   				con=DriverManager.getConnection(url,"root","123456");
   				st=con.createStatement();
   				String sql = "update cusbeauty set petCategory='"+petCategory+"',customName='"+customName+"',petName='"+petName+"',petSex='"+petSex+"',petAge='"+petAge+"',petFit='"+petFit+"'  where petNum="+petNum+"";
   				st.executeUpdate(sql);
   				response.sendRedirect("../lookUnAdoptPetInform.jsp");
    		}catch(Exception e){
    			e.printStackTrace();
    		}finally{
    			st.close();
    			con.close();
    		}
    	
     %>
  </body>
</html>
