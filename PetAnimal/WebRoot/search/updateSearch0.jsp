<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="../jdbc.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户修改</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		body{
			background-image:url(images/welcome.jpeg)
		}
	</style>
  </head>
  
  <body bgcolor="lightblue">
  	<form action="search/updateSearch.jsp">
  		<br>
  		<hr>
  		<br>
  		    	<table align="center">
    		<table align="center" width="700" border="2">
			<tr>
				<th colspan="4">修改用户信息</th>
				</tr>
			
			<%
			String cusName = new String(request.getParameter("cusName").getBytes("ISO-8859-1"),"UTF-8");
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
			String sql="select * from custom where cusName='"+cusName+"'";
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
    		 	<a href="updateSearch0.jsp?page=<%=intPage-1 %>">上一页</a>
    		 	<%
    		
    			
    		 	}
    		 	%>
    		 	第<%=intPage %>页 共<%=intPageCount %>页
    		 	<%
    		 	if(intPage<intPageCount){
    		 %>
    		 <a href="updateSearch0.jsp?page=<%=intPage+1 %>">下一页</a>
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
