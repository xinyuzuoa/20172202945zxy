<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="jdbc.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户资料表</title>
    
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	body{
		background-image:url(images/welcome.jpeg)
	}
		a
		{	
			text-decoration: none;
			font-size:20px;
		}
		tr 
		{
			height:40px;
		}
		a:hover
		{	
			text-decoration: none;
			font-size:20px;
		}
</style>

  </head>
  
  <body bgcolor="lightgreen">
  <form action="search/lookSearch.jsp">
  <div style="height:50px;">
  	<table align="right" height="50">
  		<tr>
			<td>输入姓名查询</td>
			<td>
			<input type="text" name="cusName"/>
			</td>
			<td colspan="2">			
  			<input name="sure" type="submit" value="确认">			
  			</td>
		</tr>
	</table>
	</div>
	<hr>
	<div style="height:50px;">
	 <table align="center" width="500">
  			<tr>
  				<td>
  					用户查询
  				</td>
  				<td>
  					<a href="addCus.jsp">用户添加</a>
  				</td>
  				<td>
  					<a href="updateCus.jsp">用户修改</a>
  					</td>
  				<td>
  					<a href="deleteCus.jsp">用户删除</a>
  				</td>
  				</tr>
  	</table>
  	</div>
		<br>
		<h2 align="center">查看用户信息</h2>
		<table align="center" width="700" border="2" class="table table-striped">
		<thead>	
		<tr>
				<td>编号</td>
				<td>登录名</td>
				<td>密码</td>
				<td>姓名</td>
				<td>电话</td>
				<td>地址</td>
				<td>身份证</td>
			</tr>
			</thead>
			<%
			int intPageSize;
     		int intRowCount;
     		int intPageCount;
     		int intPage;
     		String strPage;
     		int i;
     		intPageSize=10;
     		strPage=request.getParameter("page");
    		 if(strPage==null){
    		intPage=1;
     			}else{
     			intPage=java.lang.Integer.parseInt(strPage);
     			if(intPage<1)
     			intPage=1;
     			}
			String sql="select * from custom";
			rs=stmt.executeQuery(sql);
			rs.last(); 
     		intRowCount=rs.getRow();
     		intPageCount=(intRowCount+intPageSize-1)/intPageSize;
     		if(intPage>intPageCount)
     			intPage=intPageCount;
     			if(intPageCount>0){
     				rs.absolute((intPage-1)*intPageSize+1);
     			i=0;
			while(i<intPageSize && !rs.isAfterLast()){
			 %>
			 <tbody>
			 <tr>
			 	<td><%=rs.getString("cusNum") %></td>
			 	<td><%=rs.getString("customPasswd") %></td>
			 	<td><%=rs.getString("customName") %></td>
			 	<td><%=rs.getString("cusName") %></td>
			 	<td><%=rs.getString("cusTelephone") %></td>
			 	<td><%=rs.getString("cusAddress") %></td>
			 	<td><%=rs.getString("cusCertain") %></td>
			 </tr>
			 </tbody>
			 <%
    			rs.next();
    			i++;
    			}
    		  }
    		 %>
    	</table>
    	<hr>
    	<div align="center">
    		
    		<%
    			if(intPage>1){
    			 %>
    		 	<a href="lookCusInform.jsp?page=<%=intPage-1 %>">上一页</a>
    		 	<%
    		
    			
    		 	}
    		 	%>
    		 	第<%=intPage %>页 共<%=intPageCount %>页
    		 	<%
    		 	if(intPage<intPageCount){
    		 %>
    		 <a href="lookCusInform.jsp?page=<%=intPage+1 %>">下一页</a>
    		 <%
    		 	}
    		rs.close();
    		stmt.close();
     		conn.close();
   		%> 		
		<hr>
   		
		</table>
	</form>
  </body>
</html>
