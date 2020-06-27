<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'flagcheck.jsp' starting page</title>
    
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
    	String flag = new String(request.getParameter("flag").getBytes("ISO-8859-1"),"UTF-8");
    	String customName=(String)session.getAttribute("customName");
    	String title = new String(request.getParameter("title").getBytes("ISO-8859-1"),"UTF-8");
    	String news = new String(request.getParameter("news").getBytes("ISO-8859-1"),"UTF-8");
    	SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	String time=format.format(new Date());
    	String newsPic = request.getParameter("pic");
    	newsPic="images/"+newsPic;
    	Connection con = null;
    	Statement st=null;
    	
        if (flag == "y"){
             response.sendRedirect("addhotpointCheck.jsp");
        }else
            try{
    		Class.forName("com.mysql.jdbc.Driver");
   			String url = "jdbc:mysql://localhost:3306/beautysystem?useUnicode=true&characterEncoding=gbk";
   			con=DriverManager.getConnection(url,"root","123456");
   			st=con.createStatement();
   			String sql= "insert into hotpoint values ('"+customName+"','"+time+"','"+title+"','"+news+"','"+newsPic+"','"+flag+"')";  	
   			st.executeUpdate(sql);
   			response.sendRedirect("wait.jsp");
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		st.close();
    		con.close();
    	}
             
    	


            
     %>
  </body>
</html>
