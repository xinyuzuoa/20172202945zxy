<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="jdbc.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户修改</title>
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">

		body{
			background-image:url(images/welcome.jpeg)
		}

		a
		{	
			text-decoration: none;
			font-size:20px;
		}
		a:hover
		{	
			text-decoration: none;
			font-size:20px;
		}
		.table
		{
			width:0%;
			margin:0 auto;
		}
</style>
  </head>
  
  <body >
  	<form action="updateCusCheck.jsp">
  		<table align="center" width="500">
  			<tr>
  				<td>
  					<a href="lookCusInform.jsp">用户查询</a>
  				</td>
  				<td>
  					<a href="addCus.jsp">用户添加</a>
  				</td>
  				<td>用户修改</td>
  				<td>
  					<a href="deleteCus.jsp">用户删除</a>
  				</td>
  		</table>
  		<br>
  		<br>
	<table align="center">
    		<h2 align="center">修改用户信息</h2>
			<table class="table table-striped">

			<%
			int intPageSize;
     		int intRowCount;
     		int intPageCount;
     		int intPage;
     		String strPage;
     		int i;
     		intPageSize=1;
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
			 <thead>
			 <tr>
							<td>编号</td>
							<td><input type="text" name="cusNum" class="InputStyle"  value=" <%=rs.getString("cusNum")%>" readonly="readonly"/>*</td>
						</tr>
  					<tr>
							<td>登录名</td>
							<td><input type="text" name="customName" class="InputStyle"  value=" <%=rs.getString("customName")%>" readonly="readonly"/>*</td>
						</tr>
						 <tr>
							<td width="80px">密码</td>
							<td><input type="text" name="customPasswd" class="InputStyle" value="<%=rs.getString("customPasswd") %>"readonly="readonly"/> *</td>
						 </tr>
						<tr>
							<td>姓名</td>
							<td><input type="text" name="cusName" class="InputStyle" value="<%=rs.getString("cusName") %>" /> *</td>
						</tr>
						<tr>
							<td>电话</td>
							<td><input type="text" name="cusTelephone" class="InputStyle" value="<%=rs.getString("cusTelephone") %>" /> *</td>
						</tr>
						<tr>
							<td>地址</td>
							<td><input type="text" name="cusAddress" class="InputStyle" value="<%=rs.getString("cusAddress") %>" /> *</td>
						</tr>
						<tr>
							<td>身份证</td>
							<td><input type="text" name="cusCertain" class="InputStyle"value="<%=rs.getString("cusCertain") %>" readonly="readonly"/> *</td>
						</tr>

			 	</thead>
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
    		 	<a href="updateCus.jsp?page=<%=intPage-1 %>">上一页</a>
    		 	<%
    		
    			
    		 	}
    		 	%>
    		 	第<%=intPage %>页 共<%=intPageCount %>页
    		 	<%
    		 	if(intPage<intPageCount){
    		 %>
    		 <a href="updateCus.jsp?page=<%=intPage+1 %>">下一页</a>
    		 <%
    		 	}
    		 %>
    		 <tr align="center">
  				<td colspan="2">
  				<input name="sure" type="submit" value="确认">
  				&nbsp;&nbsp;&nbsp;&nbsp;
  				<input name="clear" type="reset" value="取消">
  				</td>
  			
  			</tr>
    		 <%
    		rs.close();
    		stmt.close();
     		conn.close();
   		%>
    	</table>
  	
  	</form>
    
  </body>
</html>
