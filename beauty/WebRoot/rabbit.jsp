<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>BB霜t</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<script type="text/javascript">
	function lingyang(numss)
	{								 			
		var c=confirm("您是否要种草它？");		
		if(c==true)
			window.location.href="Adopt.jsp?petNum="+numss;					
	}
</script>  
<style>
	a
	{	
		text-decoration: none;
	}
</style>
</head>
  <body background="images/top1.jpg">
  <form action="searchCheck.jsp"> 
  	<h2 align="center">BB霜类信息</h2>
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
				<td>点此种草</td></tr>
			</tr>
			</thead>
			<%
			
			Class.forName("com.mysql.jdbc.Driver");
   			String url = "jdbc:mysql://localhost:3306/beautysystem?useUnicode=true&characterEncoding=gbk";
   			Connection con=DriverManager.getConnection(url,"root","123456");
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
     			Statement st=con.createStatement(
				ResultSet.TYPE_SCROLL_SENSITIVE,
				ResultSet.CONCUR_READ_ONLY);
			String sql="select * from cusbeauty where petCategory = 'bb'";
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
			    <td><%=rs.getString("petNum")%></td>  
			 	<td><%=rs.getString("petName") %></td>
			 	<td><%=rs.getString("petSex") %></td>
			 	<td><%=rs.getString("petAge") %></td>	
			 	<td><%=rs.getString("petFit") %></td>
			 	<td><img src=<%=rs.getString("petPic")%> border=0 height=90 width=110></td>
			 	<td><%=rs.getString("state") %></td>		 				 	
			 	<td><input type="button" value="点此种草" onclick="lingyang(<%=rs.getString("petNum")%>)"></td>
			 	</tr>
			 	</tbody>
			 <%
    			rs.next();
    			i++;
    			}
    		  }
    		 %>
    	</table>
    	<div align="center">
    		
    		<hr>
            <div align="center">
                <%
                  if(intPage>1)
                  {
                    %>
                &nbsp;<a href="rabbit.jsp?page=1">首页</a>&nbsp;
                &nbsp;<a href="rabbit.jsp?page=<%=intPage-1%>">上一页</a>&nbsp;
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
                &nbsp;<a href="rabbit.jsp?page=<%=intPage-2%>"><%=intPage-2%></a>&nbsp;
                <%
                    }
                %>
                &nbsp;<a href="rabbit.jsp?page=<%=intPage-1%>"><%=intPage-1%></a>&nbsp;
                <%
                  }
                %>
                &nbsp;<a href="rabbit.jsp?page=<%=intPage%>" style="color: red"><%=intPage%></a>&nbsp;
                <%
                    if(intPage<intPageCount){
                %>
                &nbsp;<a href="rabbit.jsp?page=<%=intPage+1%>"><%=intPage+1%></a>&nbsp;
                <%
                    if(intPage<intPageCount-1) {
                %>
                &nbsp;<a href="rabbit.jsp?page=<%=intPage+2%>"><%=intPage+2%></a>&nbsp;
                ……&nbsp;
                <%
                            }
                %>
                &nbsp;<a href="rabbit.jsp?page=<%=intPage+1%>">下一页</a>&nbsp;
                &nbsp;<a href="rabbit.jsp?page=<%=intPageCount%>">尾页</a>&nbsp;
                <%
                    }
                %>
                &nbsp;共<%=intPageCount%>页
    		 <%
    		rs.close();
    		st.close();
     		con.close();
   		%>
   		输入彩妆姓名<input type="text" name="petName" size="20">
    	 <input type="submit" value="搜索" size="12"/>
		<hr>
   		
		</table>
	</form>
    
  </body>
</html>
