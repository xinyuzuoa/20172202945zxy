<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
body,html {
	background:lightblue;
	width: 100%;
	height: 100%;
	margin: 0;
	font-family: "微软雅黑";
	font-size: 14px;
}

#l-map {
	height: 450px;
	width: 100%;
	align: center;
}

#r-result {
	width: 100%;
}
</style>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=5LpND7SWnkP3kw1IX2angB7tzqWjbol9"></script>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<title>导航</title>
</head>
<body >
	<div id="l-map"></div>
<div id="r-result">
请输入您的位置:<input type="text" id="suggestId" size="20" value=""
style="width:150px;" />
</div>
<div id="searchResultPanel"
style="border:1px solid #C0C0C0;width:150px;height:auto; display:none;"></div>
<div id="r-result-end"></div>
<br> <br> <br> <br>
<br> <br> <br> <br>
	<script type="text/javascript">
// 百度地图API功能
function G(id) {
return document.getElementById(id);
}

var map = new BMap.Map("l-map");
map.centerAndZoom("yantai", 12); // 初始化地图,设置城市和地图级别。
map.enableScrollWheelZoom(); //启用滚轮放大缩小，默认禁用
map.enableContinuousZoom(); //启用地图惯性拖拽，默认禁用

var ac = new BMap.Autocomplete( //建立一个自动完成的对象
{
"input" : "suggestId",
"location" : map
});

ac.addEventListener("onhighlight", function(e) { //鼠标放在下拉列表上的事件
var str = "";
var _value = e.fromitem.value;
var value = "";
if (e.fromitem.index > -1) {
value = _value.province + _value.city + _value.district
+ _value.street + _value.business;
}
str = "FromItem<br />index = " + e.fromitem.index
+ "<br />value = " + value;

value = "";
if (e.toitem.index > -1) {
_value = e.toitem.value;
value = _value.province + _value.city + _value.district
+ _value.street + _value.business;
}
str += "<br />ToItem<br />index = " + e.toitem.index
+ "<br />value = " + value;
G("searchResultPanel").innerHTML = str;
});

var myValue;
ac.addEventListener("onconfirm", function(e) { //鼠标点击下拉列表后的事件
var _value = e.item.value;
myValue = _value.province + _value.city + _value.district
+ _value.street + _value.business;
G("searchResultPanel").innerHTML = "onconfirm<br />index = "
+ e.item.index + "<br />myValue = " + myValue;

setPlace();
});

function setPlace() {
map.clearOverlays(); //清除地图上所有覆盖物
function myFun() {
var pp = local.getResults().getPoi(0).point; //获取第一个智能搜索的结果
map.centerAndZoom(pp, 18);
map.addOverlay(new BMap.Marker(pp)); //添加标注
}
var local = new BMap.LocalSearch(map, { //智能搜索
onSearchComplete : myFun
});
var transit = new BMap.DrivingRoute(map, {
renderOptions : {
map : map,
panel : "r-result-end",
enableDragging : true, //起终点可进行拖拽
autoViewport : true
},
});
transit.search(myValue, "鲁东大学东门");
//local.search(myValue);
}

/*var transit = new BMap.DrivingRoute(map, {
renderOptions: {
map: map,
panel: "r-result-end",
enableDragging : true, //起终点可进行拖拽
autoViewport: true 
},  
});
transit.search("烟台大学西门","鲁东大学东门");*/
</script>
	
</body>
</html>