<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="jdbc.jsp" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>美妆模块</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<style>
	a
	{
		text-decoration:none;
		font-size:20px;
	}
</style>

  </head>
  
  <body bgcolor="lightblue">
    <form action="searchpet/lookSearchPet.jsp.jsp">
    	<table align="center" width="500">
    		<tr>
    			<td><a href="lookUnAdoptPetInform.jsp">美妆查询</a></td>
    			<td><a href="addUnAdoptPet.jsp">美妆添加</a></td>
    			<td><a href="updateUnAdoptPet.jsp">美妆修改</a></td>
    			<td>美妆删除</td>
    		</tr>
    	</table>
    	<br>
    	<hr>
    	<br>
    	<table align="center">
    		<table align="center" width="700" border="2">
			<tr>
				<th colspan="8"><h2>删除美妆信息</h2></th>
				</tr>
			<tr>
				<td>种类</td>
				<td>添加人</td>
				<td>名称</td>
				<td>产地</td>
				<td>价格</td>
				<td>功效</td>
				<td>图片</td>
				<td>种草人数</td>
				<td>删除</td>
			</tr>
			<%
			String state="已种草";
			int intPageSize;
     		int intRowCount;
     		int intPageCount;
     		int intPage;
     		String strPage;
     		int i;
     		intPageSize=10;
     		strPage=request.getParameter("page");
    		 if(strPage==null)
    		 {
    			intPage=1;
     		 }
     		 else
     		 {
     			intPage=java.lang.Integer.parseInt(strPage);
     			if(intPage<1)
     				intPage=1;
     		}
			String sql="select * from cusbeauty where state='"+state+"'";
			rs=stmt.executeQuery(sql);
			rs.last(); 
     		intRowCount=rs.getRow();
     		intPageCount=(intRowCount+intPageSize-1)/intPageSize;
     		if(intPage>intPageCount)
     			intPage=intPageCount;
     			if(intPageCount>0){
     				rs.absolute((intPage-1)*intPageSize+1);
     			i=0;
			while(i<intPageSize && !rs.isAfterLast())
				{ 
			 %>
			 <tr>
			 	<td><%=rs.getString("petCategory") %></td>
			 	<td><%=rs.getString("customName") %></td>
			 	<td><%=rs.getString("petName") %></td>
			 	<td><%=rs.getString("petSex") %></td>
			 	<td><%=rs.getString("petAge") %></td>
			 	<td><%=rs.getString("petFit") %></td>
			 	<td><img src=<%=rs.getString("petPic")%> border=0 height=90 width=110></td>
			 	<td><%=rs.getString("state") %></td>
	
			 </tr>
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
    		 	<a href="lookAdoptPetInform.jsp?page=<%=intPage-1 %>">上一页</a>
    		 	<%
    		
    			
    		 	}
    		 	%>
    		 	第<%=intPage %>页 共<%=intPageCount %>页
    		 	<%
    		 	if(intPage<intPageCount){
    		 %>
    		 <a href="lookAdoptPetInform.jsp?page=<%=intPage+1 %>">下一页</a>
    		 <%
    		 	}
    		rs.close();
    		stmt.close();
     		conn.close();
   		%>
    	</table>
    </form>
  </body>
</html>
