<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="jdbc.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>美妆资料表</title>
    
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
	body{
		background-image:url(images/welcome.jpeg)
	}
	.table-striped{
		background:#c9daf8;
	}
	a
	{
		text-decoration:none;
		font-size:20px;
	}
	a:hover
	{
		text-decoration:none;
		font-size:20px;
	}
</style>
  </head>
  
  <body>
  <form action="searchpet/lookSearchPet.jsp">
  	<table align="right">
  		<tr>
			<td>输入姓名查询</td>
			<td>
			<input type="text" name="petName"/>
			</td>
			<td colspan="2">
			
  				<input name="sure" type="submit" value="确认">
  				
  				</td>
		</tr>
	</table>
  	<table align="center" width="500">
  		<tr>
  			<td>美妆查询</td>
  			<td>
  			<a href="addUnAdoptPet.jsp">美妆添加</a>
  			</td>
  			<td>
  			<a href="updateUnAdoptPet.jsp">美妆修改</a>
  			</td>
  			<td>
  			<a href="deleteUnAdoptPet.jsp">美妆删除</a>
  			</td>
  		</tr>
		<br>
		<br>
  	<h2 align="center">查看美妆信息</h2><br>
		<table align="center" width="700" border="2" class="table table-striped">
		<thead>	
			<tr>
				<td>种类</td>
				<td>添加人</td>
				<td>名称</td>
				<td>产地</td>
				<td>价格</td>
				<td>功效</td>
				<td>图片</td>
				<td>种草人数</td>
			</tr>
			</thead><br>
			<%
			int intPageSize;
     		int intRowCount;
     		int intPageCount;
     		int intPage;
     		String strPage;
     		int i;
     		intPageSize=8;
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
			 <tbody>
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
                  if(intPage>1)
                  {
                    %>
                &nbsp;<a href="lookUnAdoptPetInform.jsp?page=1">首页</a>&nbsp;
                &nbsp;<a href="lookUnAdoptPetInform.jsp?page=<%=intPage-1%>">上一页</a>&nbsp;
                <%
                    if(intPage >3)
                    {
                %>
                &nbsp;……
                <%
                    }
                %>
                <%
                    if(intPage >2)
                    {
                %>
                &nbsp;<a href="lookUnAdoptPetInform.jsp?page=<%=intPage-2%>"><%=intPage-2%></a>&nbsp;
                <%
                    }
                %>
                &nbsp;<a href="lookUnAdoptPetInform.jsp?page=<%=intPage-1%>"><%=intPage-1%></a>&nbsp;
                <%
                  }
                %>
                &nbsp;<a href="lookUnAdoptPetInform.jsp?page=<%=intPage%>" style="color: red"><%=intPage%></a>&nbsp;
                <%
                    if(intPage<intPageCount){
                %>
                &nbsp;<a href="lookUnAdoptPetInform.jsp?page=<%=intPage+1%>"><%=intPage+1%></a>&nbsp;
                <%
                    if(intPage<intPageCount-1) {
                %>
                &nbsp;<a href="lookUnAdoptPetInform.jsp?page=<%=intPage+2%>"><%=intPage+2%></a>&nbsp;
                ……&nbsp;
                <%
                            }
                %>
                &nbsp;<a href="lookUnAdoptPetInform.jsp?page=<%=intPage+1%>">下一页</a>&nbsp;
                &nbsp;<a href="lookUnAdoptPetInform.jsp?page=<%=intPageCount%>">尾页</a>&nbsp;
                <%
                    }
                %>
                &nbsp;共<%=intPageCount%>页
    		 <%
    		rs.close();
    		stmt.close();
     		conn.close();
   		%>
   		</div>
		</table>
	</form>
  </body>
</html>
