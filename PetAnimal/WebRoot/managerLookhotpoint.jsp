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
    
    <title>My JSP 'hotpoint.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

 	<style media="screen">
 
        * {
            margin: 0;
            padding: 0;
        }
         

        #header {
            padding: 10px 40px;
            width: 100%;
            height: 70px;
            float:left;
            overflow: hidden;
            width:600px;
            top: 0;
        }

        #footer {
            width: 100%;
            position: fixed;
            bottom: 0;
            padding: 10px 40px;
            background-color: rgb(160, 167, 160);
            text-align: center;
        }

        h3 {
            padding-left: 200px;
        }

        .content{
            
            width: 75%;
            float: left;
            background-color: rgba(85, 237, 233, 0.22);
            height: 700px;
            border-radius: 0 100px 100px 0;
        }

		.indexbtn{
			display:block; 
			background:#A2A4F5; 
			color:#fff; 
			font-size:15px; 
			width:30%; 
			line-height:50px; 
			border-radius:3px; 
			border:none; 
			margin:5px 20px;
		}
		a
		{
			text-decoration:none;
		}
		.item {
			float:left;
			align:center;
			margin:5px 20px;
			min-height: 60px;
			width: 95%;
			border: solid 1px;
			background-color: rgba(238, 238, 238, 0.51);
			margin-bottom: 20px;
			border-radius: 4px;
			border: #CCC;
			border: solid 1px #ccc;
		}
		.itemtxt {
			padding:10px;
		}
		
		.pageBreak{
			float:left;
			width:100%;
		}
        .in{
            padding: 60px 50px;
            padding-left: 270px;
        }

        .in input{
            width: 70%;
            height: 2em;
        }

        .l{
            margin: 20px 150px;
            padding: 0.5em;
            background-color: #4a4;
            border-radius: 1em 0 1em 0;
            list-style: none;
            text-align: center;
        }

        .l:hover{
            background-color: rgba(231, 251, 0, 0.9);
            cursor: pointer;
        }


        .instruction{
            
            width: 25%;
            height: 550px;
            float: left;
            background-color:#eee;
            border-radius: 100px 0 0 100px;
        }

        .instruction li{
            font-size: 1.5em;
            font-style: oblique;
            text-align: center;
            list-style: none;
            padding: 70px;
        }

        .instruction pre{
            padding: 10px 20px auto 20px;
            font-style:"宋体";
            font-size:18px;
            text-align: center;
            color:#663399;
        }

        .done{
            background-color: #eee;
            color: #aaa;
            text-decoration: line-through;
        }

        .done:hover{
            background-color: #eee;
            color: #aaa;
            text-decoration: line-through;
        }
        .nav {
        	margin-top: 20px;
        	height: 50px;
			line-height: 50px;
        }
        .nav div
		{
			margin-left:20px;
			width:120px;
			height: 50px;
			float:right;
			font-size: 25px;
			list-style-type:none;
		}
		.nav a
		{
			text-decoration: none;
			color: #152b3c;
			
		}
		.nav a:hover
		{
			border-radius:5%;
			color: white;
	}
    </style>
    <script src="./js/jquery-2.2.3.min.js" charset="utf-8"></script>
  </head>
  
  <body background="images/welcome.jpeg">
  <form action="deletehotpoint.jsp">
    <div class="content">
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
			String sql="select * from hotpoint";
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
			String news=rs.getString("news");
			 %>
			 <div class="item">
				<div class="itemtxt">
					发表人:
					<%=rs.getString("customName") %>
					<%="&nbsp;&nbsp;["+ rs.getString("time") + "]"%>
					<br> <br>
					<div class="worktitle" style="color: #000000;font-size: 20px;">
					标题：<%=rs.getString("title")%>
					</div>
					<br> 
					内容：<%=rs.getString("news")%><br> <br><br>
					<br>
					图片：<img src=<%=rs.getString("newsPic")%> border=0 height=90 width=110>
				</div>
				<a href="flag.jsp">审核通过</a> 
				<a href="deletehotpoint.jsp?customName=<%=rs.getString("customName")%>">删除</a>
				<br>
			</div>
				 				 	
			 <%
    			rs.next();
    			i++;
    			}
    		  }
    		 %>	
    	<hr>
    	<div class="pageBreak" align="center">
            <div align="center">
                <%
                  if(intPage>1)
                  {
                    %>
                &nbsp;<a href="hotpoint.jsp?page=1">首页</a>&nbsp;
                &nbsp;<a href="hotpoint.jsp?page=<%=intPage-1%>">上一页</a>&nbsp;
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
                &nbsp;<a href="hotpoint.jsp?page=<%=intPage-2%>"><%=intPage-2%></a>&nbsp;
                <%
                    }
                %>
                &nbsp;<a href="hotpoint.jsp?page=<%=intPage-1%>"><%=intPage-1%></a>&nbsp;
                <%
                  }
                %>
                &nbsp;<a href="hotpoint.jsp?page=<%=intPage%>" style="color: red"><%=intPage%></a>&nbsp;
                <%
                    if(intPage<intPageCount){
                %>
                &nbsp;<a href="hotpoint.jsp?page=<%=intPage+1%>"><%=intPage+1%></a>&nbsp;
                <%
                    if(intPage<intPageCount-1) {
                %>
                &nbsp;<a href="hotpoint.jsp?page=<%=intPage+2%>"><%=intPage+2%></a>&nbsp;
                ……&nbsp;
                <%
                            }
                %>
                &nbsp;<a href="hotpoint.jsp?page=<%=intPage+1%>">下一页</a>&nbsp;
                &nbsp;<a href="hotpoint.jsp?page=<%=intPageCount%>">尾页</a>&nbsp;
                <%
                    }
                %>
                &nbsp;共<%=intPageCount%>页
    		 <%
    		rs.close();
    		st.close();
     		con.close();
   		%>
   		</div>
    </div>
	</div>
	</form>
  </body>
</html>
