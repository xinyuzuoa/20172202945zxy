<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="jdbc.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户修改</title>
    
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	body{
		background-image:url(images/welcome.jpeg)
	}
	table tr
	{
		height:40px;
	}
	a
	{
		text-decoration:none;
		font-size:20px;
	}
	td input
	{
		width:400px;
	}
	a:hover
	{
		text-decoration:none;
		font-size:20px;
	}
	.table
	{
		width:0%;
		margin:0 auto;
	}
</style>

  </head>
  
  <body>
  	<form action="updateUnAdoptPetCheck.jsp">
  		<table align="center" width="500">
    		<tr>
    			<td><a href="lookUnAdoptPetInform.jsp">美妆查询</a></td>
    			<td><a href="addUnAdoptPet.jsp">美妆添加</a></td>
    			<td>美妆修改</td>
    			<td><a href="deleteUnAdoptPet.jsp">美妆删除</a></td>
    		</tr>
    	</table> 	  		
  		<br>
  		<br>
  	<h2 align="center">修改美妆信息</h2>
		<table align="center" width="700" border="2" class="table table-striped">			
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
			String sql="select * from cusbeauty";
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
							<td><input type="text" name="petNum" class="InputStyle"  value="<%=rs.getString("petNum")%>" readonly="readonly"/>*</td>
						</tr>
						 <tr>
							<td width="80px">种类</td>
							<td><input type="text" name="petCategory" class="InputStyle" value="<%=rs.getString("petCategory") %>"readonly="readonly"/> *</td>
						 </tr>
						<tr>
							<td>添加人</td>
							<td><input type="text" name="customName" class="InputStyle" value="<%=rs.getString("customName") %>" /> *</td>
						</tr>
						<tr>
							<td>名称</td>
							<td><input type="text" name="petName" class="InputStyle" value="<%=rs.getString("petName") %>" readonly="readonly"/> *</td>
						</tr>
						<tr>
							<td>产地</td>
							<td><input type="text" name="petSex" class="InputStyle" value="<%=rs.getString("petSex") %>" readonly="readonly"/> *</td>
						</tr>
						<tr>
							<td>价格</td>
							<td><input type="text" name="petAge" class="InputStyle"value="<%=rs.getString("petAge") %>"/> *</td>
						</tr>
                        
						 <tr>
							<td>功效</td>
							<td><input type="text" name="petFit" class="InputStyle" value="<%=rs.getString("petFit") %>"/> *</td>
						</tr>
						<tr>
							<td>种草人数</td>
							<td><input type="text" name="state" class="InputStyle" value="<%=rs.getString("state") %>"/> *</td>
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
    		 	<a href="updateUnAdoptPet.jsp?page=<%=intPage-1 %>">上一页</a>
    		 	<%
    		
    			
    		 	}
    		 	%>
    		 	第<%=intPage %>页 共<%=intPageCount %>页
    		 	<%
    		 	if(intPage<intPageCount){
    		 %>
    		 <a href="updateUnAdoptPet.jsp?page=<%=intPage+1 %>">下一页</a>
    		 <%
    		 	}
    		 %>
    		 <tr align="center">
  			<td>
  			<input style="display:block;background:#A2A4F5;color:#fff;font-size:15px; width:35%; line-height:30px; border-radius:3px;" 
  			name="sure" type="submit" value="确定">
  			<br>
  			<input style="display:block;background:#A2A4F5;color:#fff;font-size:15px; width:35%; line-height:30px; border-radius:3px;" name="clear" type="reset" value="取消">
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
