<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>搜索</title>
    
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

  </head>
  
  <body bgcolor="lightblue">
  <form action="searchCheck.jsp">
  	<table align="center" width="500">
			
  	<h2 align="center">查看美妆信息</h2>
		<table align="center" width="700" border="2" class="table table-striped">
		<thead>	
			<tr>
				<td>编号</td>
				<td>名称</td>
				<td>产地</td>
				<td>价格</td>
				<td>功效</td>	
				<td>图片</td>	
				<td>种草人数</td>		
			</tr>
			</thead>
			<%
			
			Class.forName("com.mysql.jdbc.Driver");
   			String url = "jdbc:mysql://localhost:3306/petsystem?useUnicode=true&characterEncoding=gbk";
   			Connection con=DriverManager.getConnection(url,"root","123456");
			int intPageSize;
     		int intRowCount;
     		int intPageCount;
     		int intPage;
     		String strPage;
     		int i;
     		intPageSize=2;
     		strPage=request.getParameter("page");
    		 if(strPage==null){
    		intPage=1;
     			}else{
     			intPage=java.lang.Integer.parseInt(strPage);
     			if(intPage<1)
     			intPage=1;
     			}
     			Statement st=con.createStatement(
				ResultSet.TYPE_SCROLL_SENSITIVE,
				ResultSet.CONCUR_READ_ONLY);
			String sql="select * from cusbeauty";
			ResultSet rs=st.executeQuery(sql);
			rs.last(); 
     		intRowCount=rs.getRow();
     		intPageCount=(intRowCount+intPageSize-1)/intPageSize;
     		if(intPage>intPageCount)
     			intPage=intPageCount;
     			if(intPageCount>0){
     				rs.absolute((intPage-1)*intPageSize+1);
     			i=0;int j=1;
     			
			while(i<intPageSize && !rs.isAfterLast()){
			 %>
			 <tbody>
			 <tr>
			 	<td><%=j++ %></td>
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
    		
    		<hr>
            <div align="center">
                <%
                  if(intPage>1)
                  {
                    %>
                &nbsp;<a href="search.jsp?page=1">首页</a>&nbsp;
                &nbsp;<a href="search.jsp?page=<%=intPage-1%>">上一页</a>&nbsp;
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
                &nbsp;<a href="search.jsp?page=<%=intPage-2%>"><%=intPage-2%></a>&nbsp;
                <%
                    }
                %>
                &nbsp;<a href="search.jsp?page=<%=intPage-1%>"><%=intPage-1%></a>&nbsp;
                <%
                  }
                %>
                &nbsp;<a href="search.jsp?page=<%=intPage%>" style="color: red"><%=intPage%></a>&nbsp;
                <%
                    if(intPage<intPageCount){
                %>
                &nbsp;<a href="search.jsp?page=<%=intPage+1%>"><%=intPage+1%></a>&nbsp;
                <%
                    if(intPage<intPageCount-1) {
                %>
                &nbsp;<a href="search.jsp?page=<%=intPage+2%>"><%=intPage+2%></a>&nbsp;
                ……&nbsp;
                <%
                            }
                %>
                &nbsp;<a href="search.jsp?page=<%=intPage+1%>">下一页</a>&nbsp;
                &nbsp;<a href="search.jsp?page=<%=intPageCount%>">尾页</a>&nbsp;
                <%
                    }
                %>
                &nbsp;共<%=intPageCount%>页
    		 <%
    		rs.close();
    		st.close();
     		con.close();
   		%>
   		输入美妆名称<input type="text" name="petName" size="20">
    	 <input type="submit" value="搜索" size="12"/>
		<hr>
   		
		</table>
	</form>


  </body>
</html>
