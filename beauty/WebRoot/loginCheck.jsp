<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>数据处理页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  	<jsp:useBean id="role1" class="bean.rolebean" scope="application"/>
  </head>
  
  <body>

    <%
     String userName;
     String password;
     String role;
         
     Connection con=null;
     Statement st=null;
     ResultSet rs=null;
    if(request.getParameter("userName").equals("")||request.getParameter("password").equals("")||request.getParameter("role").equals(""))
    {
    	response.sendRedirect("login.jsp");
    	userName="";
    	password="";
    	role="";
    }
    else
    {
    	userName=new String(request.getParameter("userName").getBytes("ISO-8859-1"),"UTF-8");
   	 	password=new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");
   	 	role= new String(request.getParameter("role").getBytes("ISO-8859-1"),"UTF-8");
	}
   	 if(role.equals("manager")){
    		try{
    		Class.forName("com.mysql.jdbc.Driver");
    		String url="jdbc:mysql://localhost:3306/beautysystem?useUnicode=true&characterEncoding=gbk";
    		con=DriverManager.getConnection(url,"root","123456");
    		st=con.createStatement();
    		String query="select * from manager where userName='"+userName+"'";
    		rs=st.executeQuery(query);
    		if(rs.next()){
    			String query2="select * from manager where userPasswd='"+password+"'";
    			rs=st.executeQuery(query2);
    			if(rs.next()){
    				response.sendRedirect("managePage.jsp");
    				String name=rs.getString("userName");
    				session.setAttribute("name",name);
    				role1.setName(name);
    				session.setAttribute("managerid", userName);
    			}else{
    				response.sendRedirect("login.jsp");
    			}
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		if(rs!=null)
    			rs.close();
    		if(st!=null)
    			st.close();
    		if(con!=null)
    			con.close();
    	}
    		 
    	}
	else if(role.equals("custom")){
    		try{
    		Class.forName("com.mysql.jdbc.Driver");
    		String url="jdbc:mysql://localhost:3306/beautysystem?useUnicode=true&characterEncoding=gbk";
    		con=DriverManager.getConnection(url,"root","123456");
    		st=con.createStatement();
    		String query="select * from user where customName='"+userName+"'";
    		rs=st.executeQuery(query);
    		if(rs.next()){
    			String query2="select * from user where customPasswd='"+password+"'";
    			rs=st.executeQuery(query2);
    		if(rs.next()){	
    				response.sendRedirect("top2.jsp");
    				session.setAttribute("customName", userName);
    		}else{
    			response.sendRedirect("login.jsp");
    		}	
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		if(rs!=null)
    			rs.close();
    		if(st!=null)
    			st.close();
    		if(con!=null)
    			con.close();
    	}
    		 
    	}
    else{
    	try{
     %>
     <%="用户名或密码不正确" %>
     	<%
     }catch(Exception e){
     		e.printStackTrace();
     }finally{
     		if(rs!=null)
    			rs.close();
    		if(st!=null)
    			st.close();
    		if(con!=null)
    			con.close();
     }
}
     %>   

  </body>
</html>
