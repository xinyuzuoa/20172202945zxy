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
    
    <title>My JSP 'userself.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  <style type="text/css">
    body {
	padding: 0;
	margin: 0;
	background:lightblue;
	}
body,html{
	height: 100%;
	} 
#log_index{
	width:1024px;
	height: 100%;
	margin:0 auto;
}
.log_top{
	width:1024px;
	height:90px;
	background:url(img/flower.gif) no-repeat;
}
#log_middle{
	width:1024px;
	background:url(img/middle_bg.gif);
	height:442px;
	padding-top:140px;
	overflow:hidden;
}
#log_midcenter{
	width:1024px;
	height:300px;
}
.middle_1{
	float:left;
	width:90px;
	height:584px;
	padding-top:40px;
	
}

.middle_2{
	width:510px;
	float:left;
	height:292px;
	padding-left:167px;	
}
.middle_5{
	width:90px;
	height:584px;
	float:left;
}

#middle_3{
	width:90px;
	height:584px;
	float:right;
	padding-top:40px;
}
#food_table{
	padding-left:167px;
}
#food_table ul{
	width:510px;
	margin:0 auto;
	background:#F00;
	
}
#food_table ul  li{
	list-style:none;
	float:left;
	margin-right:5px;
}
#food_table a{
	display:block;
	width:90px;
	height:60px;
	background:url(img/table.gif) no-repeat;
	padding-left:35px;
	font-size:36px;
	text-decoration:none;
	color:#83230a;
}


/**/
.bg_1{
	width:1024px;
	height:90px;
	background:url(img/flower.gif) no-repeat;
}
#space{
	width:1024px;
	height:150px;
	
}
.bg_left{
	width:113px;
	height:300px;
	background:url(img/middle_left.gif) no-repeat left center; 
	float:left;
}
.bg_middle{
	width:813px;
	height:300px; 
	text-align:center;
	float:left
}
.index_all{
	width:1024px;
	margin:0 auto;
}
#index_center{
	width:1024px; 
	background:url(img/middle_bg.gif);
}
#index_centerleft{
	width:113px;
	height:300px;
	background:url(img/middle_left.gif) no-repeat left center;
	float:left;
}

#index_centerright{
	width:98px; 
	height:300px; 
	background:url(img/middle_left2.gif) no-repeat right center; 
	float:left 
}
#center_bottom{
	width:1000px; 
	height:100px;
	clear:both;
	display:table-cell; 
	text-align:center;
	padding-top:10px;
}
#center_bottom ul{
 	list-style:none;
 	text-align:center; 
}
#center_bottom ul li{
	float: left;
	background:url(img/table.gif);
	width: 88px; 
	height:60px; 
	margin-left:10px;
	text-align:center; 
	font-weight:bold;
}
#center_bottom a{
	text-decoration:none;
	color:#83230a;
	text-align:center; 
	font-weight:bold;
	font-size:30px; 
}
body {
	background-image:url(images/welcome.jpeg);
	color: #004779;
	font-family: 宋体;
	font-size: 12px;
	margin-left: 1px;
	margin-right: 1px;
	margin-top: 0;
}
form{
	padding: 0;
	margin:0;
}
form table td {
    padding-top: 5px;
}
td {
    font-family: 宋体;
    font-size: 12px;
}
img{
	border: none;
	vertical-align: middle;
}

.InputStyle{
	width: 300px;
}
.TextareaStyle{
	width: 300px;
	height:80px;
}




a:link, a:active, a:visited{
	font-size: 12px;
	color: #005791;
    text-decoration: none;
}
a:hover {
	font-size: 12px;
	color: #0000ff; text-decoration: underLine;
}
.FunctionButton{
	background-image: url(img/welcome.jpeg);
	background-repeat: repeat-x;
	float: left;
	height: 16px;
	font-size: 12px;
	border: 1px solid #84A5C6;
	margin: 0;
	margin-left: 8px;
	padding-left: 5px;
	padding-right: 5px;
	padding-top:3px;
}
.FunctionButtonInput{
	background-color: #FFFFFF;
	background-image: url(img/welcome.jpeg);
	background-repeat: repeat-x;
	float: left;
	height: 21px;
	font-size: 12px;
	border: 1px solid #84A5C6;
	margin: 0;
	margin-left: 8px;
	padding-left: 4px;
	padding-right: 4px;
	color: #005294;
	padding-top: 1px;
	cursor: pointer;
}
#TitleArea {
	background-image:url(images/welcome.jpeg);
	border-bottom: 7px solid #FFFFFF;
	height: 28px;
	width: 100%;
	padding-top: 11px;
	margin: 0;
}
#TitleArea #TitleArea_Head {
	background: url("img/title_bg_head.gif") no-repeat scroll 0 0 transparent;
	float: left;
	height: 28px;
	width: 5px;
	margin-left: 12px;
	display: inline;
}
#TitleArea #TitleArea_Title {
	background: url("img/title_bg.gif") repeat-x scroll 0 0 transparent;
    color: #004A7D;
    float: left;
    font-family: 宋体;
    font-size: 14px;
    font-weight: bold;
    height: 28px;
    padding-left: 3px;
    padding-right: 30px;
	padding-top: 0px;
}
#TitleArea #TitleArea_Title #TitleArea_Title_Content {
	margin-top: 8px;
	
}
#TitleArea #TitleArea_End {
	background: url("img/title_bg_end.gif") no-repeat scroll 0 0 transparent;
	float: left;
	height: 28px;
	width: 80px;
}
#QueryArea {
	border-bottom: 3px solid #ABD8F9;
	border-top: 1px solid #ABD8F9;
	padding: 1px;
	width: 100%;
	background-image: url(img/welcome.jpeg);;
	background-repeat: repeat;
}

#MainArea {
    background: url("img/inputPageHeadBg.gif") repeat-x scroll 0 0 transparent;
    border-top: 1px solid #FFFFFF;
    width: 100%;
}
#MainArea table.MainArea_Content {
	border: medium none;
    color: #004779;
    font-size: 12px;
    width: 100%;
}
#MainArea #TableTitle {
height: 25px;
}
#MainArea #TableTitle td {
	border-left: 1px solid #D2D2D2;
	border-right: 1px solid #FFFFFF;
	border-top: 1px solid #D2D2D2;
	height: 25px;
	background-image: url(img/welcome.jpeg);
	background-repeat: repeat-x;
}
#MainArea #TableData .TableDetail1 {
 background-color: #FFFFFF;
    height: 22px;
    vertical-align: bottom;
}
#MainArea #TableData .TableDetail1 td {
    border-top: 1px solid #D2D2D2;
    height: 24px;
    padding: 3px 3px 3px 5px;
    vertical-align: middle;
}
#MainArea #TableTail {
	border-bottom: 2px solid #A4CDEC;
	border-top: 2px solid #A4CDEC;
	height: 24px;
	width: 100%;
	padding-top: 4px;
	background-image: url(img/welcome.jpeg);
	background-repeat: repeat-x;
}
#PaginationBar {
	float: left;
	color: #005791;
    font-size: 12px;
    height: 25px;
	padding-top: 5px;
    padding-left: 10px;
    padding-right: 15px;
    width: 100%;
}
#PaginationBar #PaginationBar_info {
	float: left;
    padding-top: 5px;
}
#PaginationBar #PaginationBar_info span {
	margin-right: 10px;
}
#PaginationBar #PaginationBar_info #PaginationBar_PageSizeSelector {
	font-size: 12px; 
	padding: 0; 
	height: 18px; 
}
#PaginationBar #PaginationBar_PageSelectorArea {
	float: right;
	width: 470px;
}
#PaginationBar #PaginationBar_PageSelectorArea a {
	cursor: pointer;
}
#PaginationBar_PageSelectorArea #PaginationBar_TablePageNum {
	float: left;
}
#PaginationBar #PaginationBar_PageSelectorArea #PaginationBar_TablePageNum td {
	padding: 0px;
}
#PaginationBar #PaginationBar_PageSelectorArea td.PageSelectorNum {
	cursor: pointer;
	font-family: "宋体";
	padding: 0 3px;
	text-align: center;
	height: 14px;
	border: 1px solid #ADCEEF;
	background-color: #FFFFFF;
	background-image: url(img/welcome.jpeg);
	background-repeat: repeat-x;
}
#PaginationBar #PaginationBar_PageSelectorArea td.PageSelectorNum_Selected {
	cursor: text;
	color: #FF0000;
}
#PaginationBar_PageSelectorArea #PageSelector_PageNumInputArea {
	float: right;
	width: 105px;
	vertical-align: middle;
	padding-top: 0px;
	margin-left: 10px;
	margin-right: 20px;
}
#PaginationBar #PaginationBar_PageSelectorArea #PageSelector_PageNumInput {
	float: left;
	width: 33px;
	font-size: 12px;
	padding: 0px;
	margin-right: 5px;
	margin-top: 4px;
}
#PaginationBar_PageSelectorArea #PageSelector_PageNumInputArea #PageSelector_SubmitImage {
	float: left;
	margin-top: 4px;
}
#PaginationBar #PaginationBar_PageSelectorArea #PageSelector_PageNumInputArea span {
	float: left;
	margin-right: 5px;
	margin-top: 7px;
}
#DescriptionArea {
	float: left;
	margin: 12px;
	display: inline;
}

/** --------------------- */

#MainArea form {
	padding-left: 50px;
}
#MainArea .ItemBlock_Title {
	color: #004A7D;
    font-family: 宋体;
    font-size: 13px;
    font-weight: bold;
    margin-bottom: 3px;
    margin-top: 10px;
    padding-left: 5px;
    text-align: left;
    width: 90%;
}

#MainArea .ItemBlockBorder {
    border: 1px solid #91C0E3;
    text-align: left;
    width: 90%;
}
#MainArea .ItemBlockBorder .ItemBlock {
    background: none repeat scroll 0 0 #FFFFFF;
    border: 3px solid #F3F8FC;
    padding: 10px;
    text-align: left;
}
#MainArea .ItemBlockBorder .ItemBlock .ItemBlock2 {
    margin-left: 50px;
	margin-right: 50px;
}
#MainArea .ItemBlockBorder .ItemBlock .mainForm {
   border: medium none;
   /* margin-left: 50px; */
	display: inline;
    width: 80%;
}
#MainArea #InputDetailBar {
  	float: left;
    margin: 10px;
    width: 80%;
	padding-left: 30%;
	display: inline;
}
#MainArea #InputDetailBar .FunctionButtonInput {
	margin-right: 15px;
}
#DescriptionArea2 {
	margin-left: 50px;
}
</style>
  </head>
  
  <body>
    
   <div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
				
					<img border="0" width="13" height="13" src="images/title_arrow.gif"/> 查看美妆资料
			
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>
<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
             <form action="searchpet/updateSearch.jsp" method="post">
		<!-- 本段标题（分段标题） -->
		<div class="ItemBlock_Title">
        	<img width="4" height="7" border="0" src="images/item_point.gif">美妆信息&nbsp;
        </div>
		<!-- 本段表单字段 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
				<div class="ItemBlock2">
       <table  >

				<%
				  	String petNum = new String(request.getParameter("petNum").getBytes("ISO-8859-1"),"UTF-8");
					Connection conn = null;
					Class.forName("com.mysql.jdbc.Driver");
					String url = "jdbc:mysql://localhost:3306/beautysystem?useUnicode=true&characterEncoding=gbk";
					conn = DriverManager.getConnection(url, "root", "123456");
					Statement stmt=conn.createStatement();
					String sql = "select * from cusbeauty where petNum='"+petNum+"'";
					ResultSet rs = stmt.executeQuery(sql);
					while (rs.next()) {
				%>
				
						 <tr>
							<td>编号</td>
							<td><input type="text" name="petNum" class="InputStyle"  value=" <%=rs.getString("petNum")%>" readonly="readonly"/>*</td>
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
							<td>图片</td>
							<td><td><input name="pic" type="file" value="<img src=<%=rs.getString("petPic")%> border=0 height=90 width=110>"> *</td>
						</tr>
						<tr>
							<td>种草人数</td>
							<td><input type="text" name="state" class="InputStyle" value="<%=rs.getString("state") %>"/> *</td>
						</tr>
						  <tr>
					
				<%
					}
					rs.close();
					stmt.close();
					conn.close();
				%>
	</table>
				</div>
				</div>
				</div>
				<tr align="center">
      				<td colspan="2">
      					<input name="sure" type="submit" value="修改">
      					<input name="clear" type="reset" value="取消">
      				</td>
      			</tr>
				</form>
				</div>
  </body>
</html>
