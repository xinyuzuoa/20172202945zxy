<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="jdbc.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'lookClient.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	body{
		background-image:url(images/top1.jpg);
		width:100%;
		background-size:100% 100%;
	}
	.neirongbg {
		margin-left: auto;
		margin-right: auto;
		position: relative;
		min-height: 500px;
		width: 960px;
		background-size: 100%;
		border-radius: 10px;
	}
	.neirongbg2 {
		margin-left: auto;
		margin-right: auto;
		position: relative;
		min-height: 500px;
		width: 960px;
		
		background-size: 100%;
		border-radius: 10px;
	}
	.neirongtxt {
		padding: 50px;
		
	}
	a
	{
		text-decoration: none;
	}
	</style>
	</head>
  
  <body>
 
  <%
    String customName=(String)session.getAttribute("customName");
   %>
		<div>
			<a href="Main.jsp"><img alt="" src="images/jiantou.png" style="height:50px;width:50px"></img></a>
		</div>	
		<div>	
		<h2 style="text-align:center;text-weight:bold;color:gray">查看个人信息</h2>
		</div>
		 <div style="width:200px;float:right;font-size:18px;color:gray">
  			<a href="updateCusInform.jsp">修改个人信息</a>
  		</div>
			<% 
			String sql="select * from custom where customName='"+customName+"'";
			rs=stmt.executeQuery(sql);
			while(rs.next()){
			 %> 
			 <div class="neirong">
				<div class="neirongbg">
					<div class="neirongtxt">
						<h3>
							尊姓大名：<%=rs.getString("customName") %></h3><br>
						<h3>
							用户名：<%=rs.getString("cusName") %></h3><br>
						<h3>
							电话：<%=rs.getString("cusTelephone") %></h3><br>
						<h3>
							地址：<%=rs.getString("cusAddress") %></h3><br>
				
                        <h3>
							身份证信息：<%=rs.getString("cusCertain") %></h3><br>
				
					</div>
				</div>
			</div>
			 <%
    			}
    		 %>
    	 



    	<%
    		rs.close();
    		stmt.close();
     		conn.close();
   		%>
   		<!-- <tr>
			<td>输入姓名查询</td>
			<td>
			<input type="text" name="clientName"/>
			</td>
			<td colspan="2">
  				<input name="sure" type="submit" value="确认">
  				</td>
		</tr> -->

		
  </body>
</html>
