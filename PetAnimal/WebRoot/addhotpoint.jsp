<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hotpointCheck.jsp' starting page</title>
    
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
            background-color:#fce5cd;
            overflow: hidden;
            position: fixed;
            top: 0;
        }

        

        h3 {
            padding-left: 200px;
        }

        .content{
            margin-top: 90px;
            width: 100%;
            float: left;
            background-color: rgba(85, 237, 233, 0.22);
            height: 550px;
            border-radius: 0 100px 100px 0;
        }
		tr{
    		display:block; /*将tr设置为块体元素*/
    		margin:10px;  /*设置tr间距为2px*/
    	}
	</style>
  </head>
  
  <body>

    <header id="header">
<%
String uname=(String)session.getAttribute("uname");
if(session.getAttribute("uname")==null){
	out.print("<h1>"+"嘿！今天你精致了嘛？"+"</h1>");
    out.print("<h3>———变美之路从现在开始！</h3>");
}
else{
	out.print("<h1>"+session.getAttribute("uname")+"嘿！今天你精致了嘛？"+"</h1>");
    out.print("<h3>———变美之路从现在开始！</h3>");
}
        
        %>
    </header>
  	
    <div class="content">
    	<form action="flagcheck.jsp" method="post">
    	<br>
    	<hr>
    	<br>
    	<div align="center">
			<div style="bottom-margin:10px;"><h2>说出你的故事</h2></div>
			<br>
  			标题:
  			<input type="text" name="title" size="38"/>
  			<br>
  			<br>
  			内容:
  			<textarea name="news" rows="8" cols="40"></textarea>
  			<p>
		              审核：
		    <input type="text" name="flag"/>
  		<div>
  			<br>
  			<input style="display:block;background:#A2A4F5;color:#fff;font-size:15px; width:25%; line-height:30px; border-radius:3px;" 
  			name="pic" type="file" value="上传图片">
			<br>
			
  			<input style="display:block;background:#A2A4F5;color:#fff;font-size:15px; width:25%; line-height:30px; border-radius:3px;" 
  			name="sure" type="submit" value="分享">
			<br>
  			<input style="display:block;background:#A2A4F5;color:#fff;font-size:15px; width:25%; line-height:30px; border-radius:3px;" 
  			name="clear" type="reset" value="取消">
		</div>
		</div>
    </form>
    </div>
  </body>
</html>
