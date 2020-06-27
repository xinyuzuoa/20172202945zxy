<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="jdbc.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'updatePetinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<style type="text/css">
	table
	{
		width:350px;
	}
	table tr
	{	
		height:30px;
	}
	td input
	{	
		width:200px;
	}
	a
	{
		text-decoration:none;
	}
</style>

  </head>
  
  <body background="images/top1.jpg">
  <br>
  <hr>
  <center>
  
<form  action="updatePetinfoCheck.jsp">
          

				<%
				    String customName=(String)session.getAttribute("customName");
				    String petName = "Estee Laude";
					String sql = "select * from cusbeauty where petName='"+petName+"'";
					rs = stmt.executeQuery(sql);
				%>
					<h2>美妆信息</h2>
				<%
					while (rs.next()) {
				%>
				 <table>
						<tr>
							<td width="120px">编号</td>
							<td><input type="text" name="id" class="InputStyle" value="<%=rs.getString("petNum") %>"readonly="readonly"/> *</td>
						 </tr>
						 <tr>
							<td width="120px">名称</td>
							<td><input type="text" name="name" class="InputStyle" value="<%=rs.getString("petName") %>" readonly="readonly"/> *</td>
						 </tr>
							<tr>
							<td>产地</td>
							<td><input type="text" name="sex" class="InputStyle" value="<%=rs.getString("petSex") %>" readonly="readonly"/> *</td>
						</tr>
						<tr>
							<td>价格</td>
							<td><input type="text" name="age" class="InputStyle"value="<%=rs.getString("petAge") %>"/> *</td>
						</tr>
                        <tr>
							<td>功效</td>
							<td><input type="text" name="fit" class="InputStyle" value="<%=rs.getString("petFit") %>"/> *</td>
						</tr>
						 <tr>
							<td>照片</td>
							<td><img src=<%=rs.getString("petPic") %> border=0 height=90 width=110></td>
						</tr>
				</table>				
						<div>
      					<input name="sure" type="submit" style="display:block; background:#A2A4F5; color:#fff; font-size:15px; width:30%; line-height:30px; border-radius:3px; border:none;" value="修改">
     					 <br>
     					 <input name="clear" type="reset" style="display:block; background:#A2A4F5; color:#fff; font-size:15px; width:30%; line-height:30px; border-radius:3px; border:none;" value="取消">
     					 <hr>
    				  </div>
				<%
					}
					rs.close();
					stmt.close();
					conn.close();
				%>

</form>
</center>
  </body>
</html>
