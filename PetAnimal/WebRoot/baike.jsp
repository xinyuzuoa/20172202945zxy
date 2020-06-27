<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'baike.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	  <link rel="stylesheet" href="css/bootstrap.min.css">
 
	<script type="text/javascript" src="js/mzp-packed.js"></script>
	
   <!--<link href="css/zzsc.css" type="text/css" rel="stylesheet">-->
    <link href="css/magiczoomplus.css" type="text/css" rel="stylesheet">
	
      
<style type="text/css">
	body{
		background-size:100% 100%;
		font:"宋体";
		font-size:18px;
		font-weight: bold;
	}
	#Tab{
		margin:0 auto;
		width:1000px;
		height:500px;
		border:1px solid while;
	}
	.nav
	{
		height: 100px;
		line-height: 50px;
	}
	.nav div
	{
		margin-left:50px;
		width:250px;
		height: 50px;
		float: left;
		font-size: 20px;
		list-style-type:none;
	}
	.nav a
	{
		text-decoration: none;
		color: #152b3c;
		padding:15px 60px;
	}
	.nav a:hover
	{
		border-radius:5%;
		color: hotpink;
	} 
	.Menubox{
		height:80px;
		border-bottom:1px solid rgba(135, 189, 247, 0.78);
		background:;
	}
	.Menubox ul{
		margin-top:15px;
		margin-bottom:7px;
		margin-left:200px;
		margin-right: 20px;
		padding:0;
		position:absolute;
		text-align: center;
	}
	.Menubox ul li{
		float:left;
		background:rgba(135, 189, 247, 0.78);
		line-height:50px;
		display:block;
		cursor:pointer;
		width:80px;
		text-align:center;
		color:#20124d;
		font-weight:bold;
		border-top:1px solid rgba(135, 189, 247, 0.78);
		border-left:1px solid rgba(135, 189, 247, 0.78);
		border-right:1px solid rgba(135, 189, 247, 0.78);
	}
	.Menubox ul li.hover{
		background:#93c47d;
		border-bottom:1px solid #fff;
		color:rgba(135, 189, 247, 0.78);
	}
	.Contentbox{
		clear:both;
		margin-top:0px;
		border-top:none;
		padding-top:8px;
		height:100%;
		background-color:rgba(0,0,0,.075);

	}

	.fontinfo{
   		font-family:微软雅黑;
    	width:800px; 
		margin: 0 auto;  
		font-size:  15Px;
    	font-weight: bold;
    	line-height:200%
	}
</style>
<script>
<!--
function setTab(name,cursel,n){
for(i=1;i<=n;i++){
var menu=document.getElementById(name+i);
var con=document.getElementById("con_"+name+"_"+i);
menu.className=i==cursel?"hover":"";
con.style.display=i==cursel?"block":"none";
}
}
//-->
</script>
  </head>
  
  <body background="images/top1.jpg">
  <br>
  <div class="nav" align="center">
 
  		<div>
  			<a href="Main.jsp" target="_self">首页</a>  			
  		</div>
  		<div>
  			<a href="hotpoint.jsp">热门</a> 			
  		</div>
  		<div style="font-size:25px;color:#293DCE">
  			<a>百科</a>  			
  		</div>
  		<div>
  			<a href="notice.jsp" >种草须知</a>  			
  		</div>
  		

	</div>
<hr>
<br>
<div id="Tab">
<div class="Menubox" align="center">
<ul>
<li id="menu1" onmouseover="setTab('menu',1,7)" class="hover">口红</li>
<li id="menu2" onmouseover="setTab('menu',2,7)" >眼影</li>
<li id="menu3" onmouseover="setTab('menu',3,7)" >粉底液</li>
<li id="menu4" onmouseover="setTab('menu',4,7)" >香水</li>
<li id="menu5" onmouseover="setTab('menu',5,7)" >卸妆水</li>
<li id="menu6" onmouseover="setTab('menu',6,7)" >BB霜</li>
<li id="menu7" onmouseover="setTab('menu',7,7)" >其他</li>
</ul>
</div>
<div class="Contentbox">
    <div id="con_menu_1" class="hover">       
         <hr>
         <div align="center" >
			<div class="t2">
		      <a href="images/red1.jpg" id="zoom" class="MagicZoom MagicThumb"><img src="images/red1.jpg" id="main_img" class="main_img" style="width:200px; height:200px;" /></a>
		    </div>
		</div>
		
  		<hr>
  		<br>
         <div class="fontinfo">
       <h3>口红</h3>
       &nbsp;&nbsp;&nbsp;&nbsp;口红是一类唇用美容化妆品，其主要功能是赋予嘴唇以色调，强调或改变两唇的轮廓，显示出更有生气和活力。<br>
       &nbsp;&nbsp;&nbsp;&nbsp;口红的色调与女性的发型、指甲油色调和服装变化密切相关，变得更具有潮流色彩。特别是近年来各种珠光粉和处理颜料的使用，使口红的色调更加多样化，质感更加舒适。与其他美容化妆品的发展趋势相似，它继续保持美容为主，兼顾保湿、滋养和防晒功能。
口红配方、原料和工艺的进展推动着口红工业的发展
       <ol>
          <li>基本信息
              <ul type="disc">
                 <li>口红是唇用美容化妆品的一种。口红包括唇膏、唇棒、唇彩、唇釉等，它能让唇部红润有光泽，具有滋润、保护嘴唇的作用；</li>
                 <li>口红可以增加面部美感以及修正嘴唇轮廓，使得双唇更具生气和活力。</li>
              </ul>
          </li>
          <li>产品分类 
               <ul type="disc"><li>口红包括唇膏、唇棒、唇彩、唇釉等。</li></ul>
          </li>
              
          <li>产品功效
                <ul type="disc"> 
                     <li>替代眼影</li>
                     <li>替代胭脂</li>
                     <li>修饰轮廓</li>

                </ul>
          </li>
          <li>产品特性
              <ol>
                  <li>对口唇无刺激、无害和无微生物污染。</li>
                  <li>具有自然、清新愉快的味道和气味。</li>
                  <li>外观诱人，颜色鲜艳均匀；色调符合潮流，符合消费者的需要。</li>
                  <li>涂抹时平滑流畅，上色均匀，涂抹后颜色不会改变，不发生溶合，或漂移；有较好的附着力，不会脱落转印至其他物体表面（如玻璃杯）；能够保持相当的时间，但又不至于很难卸除。用后唇部皮肤感到舒适和润湿。</li>
                  <li>品质稳定，耐候性好。不会因油脂和蜡类原料氧化产生异味或“发汗”（sweat）等，也不会在制品表面出现粉膜（blooming）而失去光泽。</li>
              </ol>
         </li>
         <li>主要成分
             <ul type="disc">
                 <li>基底：油、蜡、软化剂，使口红能够凝固、持久。</li>
                 <li>蜡类：棕榈蜡、蜜蜡最常被使用的，棕榈蜡较不易熔化，还有鲸蜡等。</li>
                 <li>油酯类：蓖麻油、无水羊毛脂、可可脂、石蜡油、橄榄油，单硬脂酸甘油酯、肉豆蔻酸异丙酯等等。</li>
                 <li>软化剂：可增加颜色附著到唇上的能力，也可滋润，唇蜜含有较多的油，较少的蜡。</li>
                 <li>着色剂：含有颜料或染料，口红使用的颜料须为较细的颗粒，才能均匀附著于唇上。应用最多的可溶性着色染料是溴酸红染料。</li>
                 <li>香料和调味：香精可掩去上述成份的味道。</li>
            </ul>
       </li>
         <li>注意事项
             <ul type="disc">
                 <li>颜色可以慢慢加深，要注意面积，不要一次刷得太多太重。</li>
                 <li>要注意什么场合应该用什么颜色。</li>
                 <li>口红容易沾杯，要注意方法，也要注意清洁.</li>
             </ul>  
         </ol>
         </div>
    </div>
	<div id="con_menu_2" style="display:none">
         <hr>   
         <div align="center">
        <div id="showArea">
				<a href="images/eye.jpg" rel="zoom" rev="images/eye.jpg"></a>
				
			</div>
         <div class="t2">
  			<a href="images/eye.jpg" id="zoom" class="MagicZoom MagicThumb"><img src="images/eye.jpg" id="main_img" class="main_img" style="width:200px; height:200px;" /></a>
  		</div> 
  		</div>
  		<hr>
  		<br>       
         <div class="fontinfo">
         	<h3>眼影</h3> 

        &nbsp;&nbsp;&nbsp;&nbsp;眼影是彩妆的一种，用于涂抹在眼脸（即眼皮）和眼角上，产生阴影和色调反差。</br>
        &nbsp;&nbsp;&nbsp;&nbsp;眼影有粉末状、棒状、膏状、乳液状、铅笔状和亮片状。颜色十分多样，包括蓝、青、绿、棕、茶、褐、和紫色等，其他供调色有黑、白、红和黄色等。
         <ol>
          <li>基本信息
              <ul type="disc">
                 <li>眼影是加强眼部立体效果、修饰眼型以衬托眼部神采的化妆品，其色彩丰富，品种多样。亚洲人皮肤偏黄，搭配眼影色彩较为困难，因此我们应遵循平衡原则，平衡好脸部皮肤的色调、头发颜色和眼睛颜色之间的关系，使我们看上去容光焕发。</li>
                
              </ul>
          </li>
          
              
           <li>产品分类
                <ul type="disc"> 
                    
                       <li>眼影粉饼</br>&nbsp;&nbsp;&nbsp;&nbsp;多数是将各种色调的粉末在小浅盘上压制成型后，将多色调并装于一个小化妆盒内。眼影粉饼着色颜料含量较高，眼影粉为粉块状，其粉末细致、色彩丰富，分珠光眼影和哑光眼影。 </li>
                     <li>眼影膏</br>&nbsp;&nbsp;&nbsp;&nbsp; 是颜料粉体均匀分散于油脂和蜡基的混合物，或乳化体系的制品。可用手指或者特制海绵刷等工具涂擦。眼影膏化妆的持久性较好，多数为无水型，适用于干性皮肤。乳化型眼影膏适用于油性皮肤，但持久性比无水型差。</li>
                     <li>眼影条</br>&nbsp;&nbsp;&nbsp;&nbsp;成分与唇膏相似，主要是由颜料粉体和油脂及蜡基组成的分散体系。</li>
                     </dl>
                </ul>
          </li>
          <li>使用方法 
               <ul type="disc"><li>珠光眼影可起到特殊的装饰作用，通常用于局部点缀，哑光眼影较适合东方人的眼型，不显浮肿的眼睛。使用时，根据妆型设计及眼部晕染部位和眼型条件的不同，选用不同颜色的眼影粉，在定妆后，用眼影刷对眼睑进行晕染。眼影膏可以在涂完粉底后，定妆前直接用手指或眼影刷涂抹于眼部皮肤。</li></ul>
          </li>
         
         <li>注意事项
             <ul type="disc">
                 <li>在涂抹眼影之前，需要在眼皮打底，选择眼影盘中比较浅并接近自己肤色的一种颜色，涂抹在自己的整个眼窝上。可使用化妆刷或直接用手指涂抹。但是对于大部分人来说，尽可能使用化妆刷，这样可以让眼影分布的更加均匀。打底之后进行色彩叠加：首先选择自己喜欢的两到三种色彩，将较浅的一种颜色涂抹在自己的眼窝中，较深一点的颜色涂在眼尾的三角区内，再选择更深一点的色彩涂抹在自己的下眼睑和眼尾的部分。眼影更加注重的是眼尾的色彩晕染。</li>
               
             </ul>  
         </ol>    
         </div>
	</div>
	<div id="con_menu_3" style="display:none">
         <hr> 
         <div align="center">
  			<img src="images/pink.PNG" alt="">
  		</div>  		
  		<hr>
  		<br>         
         <div class="fontinfo">
         <h3>粉底液</h3> 
         &nbsp;&nbsp;&nbsp;&nbsp; 粉底液质地轻薄，易涂抹，少油腻感，是当今很流行的一种粉底化妆品，适合大多数肌肤，尤其是油性皮肤和夏季快速上妆修饰之用。</br>
         &nbsp;&nbsp;&nbsp;&nbsp;现代粉底将美容和皮肤护理结合起来，成为多功能产品，例如宣称中提到的抗衰老、抗皱、抗氧化、不含致敏物、不会刺激眼睛、有高SPF值等，由于使用皮肤护理组份，如透明质酸、神经酰胺、植物提取物、复合维生素ACE、类黄酮、多酚等，使产品也具有一定保湿护肤的作用。
          <ol>
          <li>基本信息
              <ul type="disc">
                 <li> 粉底液是面部美容化妆品当中的一种，呈现形态有粉体的水包油（O/W）形或者油包水形（W/O），是一种添加了粉料的乳液状化妆品，主要是利用粉质颜料与甘油和水的相容性好这一特点而制。</li>
                 <li>色调应为较浅的肉色或略带润湿外观的淡珠光色调，随着潮流变化和不同的民族习惯，半透明程度、颜色的深浅和类型、其他外观特性都有较大差异。</li>
                 <li>放置不用时，底部会有沉淀物，明显分为上下两层，使用时上下左右摇匀即可，这种配方得到的粉底液常为透明状，质轻柔软，与皮肤的服帖性好；但也有不足之处，遮瑕效果差，不能用于混合型肤质。</li>
              </ul>
          </li>
          <li>产品功效 
               <ul type="disc"><li>它在表面形成平滑的覆盖层，用以遮盖或掩饰一些面部瑕疵，如雀斑、粉刺、疤痕等，调整皮肤质地、颜色和光泽，起到均匀肤色的作用，使肤色看起来自然贴切，还拥有滑嫩的感觉，具有易涂抹，分布均匀，具有自然外观的特点。</li></ul>
          </li>
           <li>正确使用
             <ul type="disc">
                 <li>选择与肤色相近的粉底液，注意要适量，取少量均匀涂抹于面颊、鼻子、额头、下颚等部位，使用时可借助手指、海绵或者专用粉底刷，在全脸、耳朵及脖子上由内向外、由上往下，配合涂抹或者拍打的手法，获得均匀自然妆面。</li>
                 <li>用海绵均匀拍打整个面部提高粉底附着力。</li>
            </ul>
       </li>
         <li>良好的粉底液的要求
             <ul type="disc">
                 <li>遮盖力强,涂敷后能有力遮盖皮肤本色,而使皮肤呈粉底乳的颜色。</li>
                 <li>吸收性良好,能很好吸收皮肤分泌排出的皮脂、汗液,使妆容持久。</li>
                 <li>粘附性佳,涂敷后能紧贴皮肤,效果自然,不易脱妆。</li>
                 <li>滑爽性良,易于涂敷,且分布均匀,无拖滞感。此外还应有良好的保湿性能及润肤效果,低重金属含量,以保证使用效果及安全性。</li>
            </ul>
       </li>
         <li>注意事项
             <ul type="disc">
                 <li>粉底液含有的粉体原料较多，可能堵塞毛孔、汗腺。矿物型粉料和无机颜料如果质量差会使铅汞砷等有害物质超标，致使人体重金属中毒，所以要买正规厂家生产的粉底，并且要注意清洁。</li>
             </ul>  
         </ol>
         </div>
	</div>
	<div id="con_menu_4" style="display:none">
         <hr>  
          <div align="center">
  			<img src="images/water.PNG" alt="">
  		</div>  		
  		<hr>
  		<br>           
         <div class="fontinfo">
          <h3>香水</h3> 
         
          &nbsp;&nbsp;&nbsp;&nbsp; 香水是香精的酒精溶液，再加适量定香料等形成的混合物。</br>
          &nbsp;&nbsp;&nbsp;&nbsp;具有芬芳浓郁的香气，主要作用是喷洒于衣襟、手帕及发际等部位，散发怡人的香气，是重要的化妆品之一。
          <ol>
        
          <li>产品功效 
               <ul type="disc"><li>赋香，香水是赋予个人身体部位或衣物的香味，带给人享受愉快的感觉。盖臭，香水是要掩盖“体臭”的，要从头香、体香到基香都要完全压过“残存”的臭味，也就是既要蒸气压大的也要蒸气压中与低的香料，更要让人们闻起来舒服、清爽。</li></ul>
          </li>
              
          <li>产品分类
                <ul type="disc">
                     <li>按照香气浓度分类
                         <ol> 
                            <li>香精（PARFUM）赋香率大约为18-25%，持续的时间可达7-9小时之久，价格昂贵且容量小，通常都是7.5或15ml的包装，国内鲜少人使用。</li>
                            <li>香水（EAU DE PARFUM） 赋香率约为12-18%，持续的时间约3-4小时。价格也比一般香水（Eau de toilette简称E.D.T）略高。</li>
                            <li>淡香水（EAU DE TOILETTE） 泛指一般淡香水 赋香率约为7-12%，持续的时间约2-3小时。价格最便宜，也是最常见最被广泛使用的</li>
                            <li>古龙水（EAU DECOLOGNE ） 赋香率大约为3-7%，持续的时间大约为 1-2小时，价格是最为便宜，但因为不持久,已经很少见了喔。</li>
                            <li>清香水（也称清凉水）（EAU DEFRAICHE）在各个香水等级中香精含量最低，约1-3%。刮须水 和体香剂都属此等级。</li>
                            
                         </ol>
                     </li>
                     <li>按照香气特征分类</li>
                     <ol>
                         <li>柑橘型香气（Citrus）</li>
                         <li>清香型香气（Green）</li>
                         <li>单花香型（Single Floral）</li>
                         <li>馥奇（Fougere）</li>
                         <li>醛香花香型（Floral aldehyde）</li>
                         <li>等等</li>
                     </ol>
                </ul>
          </li>
          
         <li>试香</br>
          &nbsp; &nbsp; &nbsp; &nbsp;试香时，最好先将香水喷在手腕上或是试香纸上，等香水干了再闻。一般来说，从开瓶到试香大约三分钟，一种良好品质的香水均具有三段式香味，由前味、中味、后味表现出起承转的韵律感。
             <ul type="disc">
                 <li>前味：香水喷在肌肤上约十分钟左右后会有遮盖住的香味产生，最初会有香味和挥发性高的酒精稍稍混在一起的感觉。</li>
                 <li>中味：在前味之后而得来的十分钟左右香味，酒精味道消失，此时的香味是香水原本的味道。</li>
                 <li>后味：香水喷后约三十分钟后才会有的香味，是表现个性最好的香味。这种香味会混合个人肌肤以及体味所产生的综合味道。此外在试香水时，也可向空中喷洒香水，再用手拨接味道至鼻边闻，此时直接呈现中味及后味，为香水的主调。</li>
                 
            </ul>
       </li>
         <li>注意事项
             <ul type="disc">
                 <li>香水不要洒在易被太阳晒到的暴露部位。因为香水中的香料有些是从天然植物中提取的挥发油，这些挥发油中有的含有呋喃香豆精的成份，如香柠檬油等，若喷洒在面部以及易被太阳晒到的部位，日光中的短波紫外线就会与皮肤上喷洒的这些化学物质相结合，出现光化学反应，最后导致脸上出现皮肤炎症和点状黑斑。</li>
                 <li>香水不宜直接擦在脸上及过敏性皮肤上面。由于香水含有较多量的酒精，尤其是花露水，酒精含量更多些，刺激性较大，故脸部及易过敏的皮肤和婴儿皮肤都不宜直接擦在上面。</li>
                 <li>香水不宜总是直接洒在皮肤上，因为皮肤若长期受酒精的刺激可能会产生过敏现象。所以应变换使用方法，可根据情况，有时将香水洒在衣料上散发香味。</li>
                 <li>香水不宜过浓或洒得过多，不然会适得其反，还易导致嗅觉障碍症，于精神不利，另外也易给人一种孤傲浮华、孤芳自赏的感觉。</li>
                 <li>香水不宜涂在额上、腋下和鞋内等易出汗的部位。因为这些部位汗液多，易将香水冲淡，而且汗味和香味混合会产生怪异气味。</li>
                 <li>香水不宜喷洒在毛皮、黄金和珍珠等服饰品上，因为香水会使它们失去天然光泽。</li>
             </ul>  
         </ol>
         </div>
	</div>
	<div id="con_menu_5" style="display:none">
         <hr> 
          <div align="center">
  			<img src="images/cleanwater.jpg" alt="">
  		</div>  		
  		<hr>
  		<br>           
         <div class="fontinfo">
         <h3>卸妆水</h3> 
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 卸妆水是用于卸除淡妆的水剂化妆用品，通常配方中含有较多的表面活性剂、保湿剂和乙醇，增加对皮肤的清洁作用。
          <ol>
          <li>基本信息
              <ul type="disc">
                 <li> 肌肤上残留过多的化妆品和油脂污垢，不仅堵塞毛孔，更容易造成肤色暗淡，影响肌肤的健康。在晚上休息前要做好卸妆工作，才是对自己面部肌肤的最好的呵护。如果眼妆和唇妆比较重，比如涂抹了唇膏和眼线睫毛膏，要在全脸清洁前先用眼唇专用卸妆品卸除局部彩妆。</li>
                 <li> 卸妆水相比于其他卸妆产品的优点是更加清爽，但由于卸妆水中油分较少，且含有较多的表面活性剂和醇类，需要配合化妆棉一起使用.</li>
              </ul>
          </li>
          <li>产品功效 
               <ul type="disc"><li>卸除面部彩妆，也有一定保湿作用。</li></ul>
          </li>
              
          <li>产品分类
                <ul type="disc"> <li>卸妆水：一般为透明无色液体。</li>
                     <li>眼唇专用卸妆液：多为水油分层，使用前需混匀使用。</li>
                </ul>
          </li>
          <li>使用方法
              <ol>
                  <li>卸除面部彩妆
                       <ul><li>在化妆棉上倒入适量的卸妆水，在脸上轻轻的擦拭，直到卸妆棉上没有颜色为止，通常会使用多张卸妆棉配合使用。</li></ul>
                  </li>
                  <li>卸除眼妆
                       <ul><li>闭上眼睛，将已经润湿卸妆液化妆棉放在眼皮上五秒钟左右，向着睫毛生长的方向移动化妆棉轻轻擦拭即可卸除大部分眼部彩妆，然后将蘸有卸妆水的化妆棉对折或四折，用化妆棉的折角来擦拭边缘眼妆，用手指轻轻把眼皮提起使用棉签蘸取卸妆液进行擦拭将睫毛眼皮上残留的睫毛膏和眼线擦干净。</li></ul>
                  </li>
                  <li>卸除唇妆
                       <ul><li>把化妆棉夹在食指和无名指之间用来卸除唇妆，将化妆棉横向放置上下移动化妆棉，一边按压一边擦拭。竖着移动化妆棉，可以将嘴唇竖纹中的口红也擦干净.</li></ul>
                  </li>
                  <li>清洁面部
                       <ul><li>卸妆水的清洁力度较低可能清洁的不彻底，一般建议再使用洗面奶清洁。现在市面上已经出现可以不用二次清洁的卸妆水，见仁见智，如果不放心的话还是使用洗面奶再次清洁。</li></ul>
                  </li>
              </ol>
         </li>
         <li>主要成分
             <ul type="disc">
                 <li>水：约占90%，补充角质层水分，溶解其他组分。</li>
                 <li>醇类：带来清凉感，抑菌，溶解成分，如乙醇、异丙醇；</li>
                 <li>保湿剂：保持角质层水分，保持良好的使用感并溶解其他组分，；</li>
                 <li>柔软剂、润肤剂：使皮肤润滑保湿作用；</li>
                 <li>加溶剂：使原料成分加溶，HLB高的表面活性剂；</li>
                 <li>缓冲剂：调节产品的pH；</li>
                 <li>防腐剂：如羟苯甲酯、羟苯丙酯、苯氧乙醇等；</li>
                 <li>收敛剂、清凉剂，以及适量香精等。</li>
                 <li>与一般化妆水相比，配方中含有较多的表面活性剂、保湿剂和乙醇，增加对皮肤的清洁作用。</li>
                 <li>眼唇卸妆液属于多层化妆水的一种，其中油分、保湿剂、水分层，使用时须摇匀，其性质介于化妆水与乳液之间</li> 
            </ul>
       </li>
         <li>注意事项
             <ul type="disc">
                 <li>使用卸妆水卸妆要借助卸妆棉等辅助工具，干燥的卸妆棉会拉扯面部肌肤，造成肌肤屏障受损，引起面部肌肤问题，使用化妆棉时一定要注意充分润湿化妆棉，轻轻擦拭肌肤，避免过度拉扯；</li>
                 <li>眼唇部位卸妆尽量使用专用卸妆水。</li>
             </ul> 
          </li> 
         </ol>
         </div>
	</div>
	<div id="con_menu_6" style="display:none">
         <hr>      
         <div align="center">
  			<img src="images/bb.jpg" alt="">
  		</div>  		
  		<hr>
  		<br>        
         <div class="fontinfo">
        <h3>BB霜</h3> 
         &nbsp;&nbsp;&nbsp;&nbsp;BB霜是一种化妆用品，BB是Blemish Balm的缩写，意思是伤痕保养霜，最初是德国人为接受镭射治疗的病人设计的，后来经过韩国改良之后，使其兼具遮瑕、调整肤色、防晒、细致毛孔，裸妆效果。       
          <ol>
          <li>基本信息
              <ul type="disc">
                 <li>BB霜从本质上来说到底是一款彩妆产品，其中混有粉底液，因此使用后必须以专业卸妆产品进行卸妆，以免造成一系列皮肤问题。在强烈日光环境中，BB霜之前需要抹一层防晒产品，才能有效抵抗紫外线。</li>
                 <li>BB霜的颜色成分并不是化工色素而是天然成分，所以化妆后持久体现（演绎）妆面润泽自然，毫无浮妆，越来越紧紧贴合肌肤，缔造细腻自然，清新润透的妆面。</li>
                 <li>BB霜作为膏霜型产品无油光和油腻感，所以不再需要使用粉类产品来修饰。而且能有效遮盖皱纹和粗大毛孔，使肤质变得细致嫩滑。</li>
              </ul>
          </li>
          <li>产品功效 
              <ol>
                  <li>裸妆
                       <ul><li>使用后没有丝毫着妆的痕迹，却看起来比平日精致了许多，妆容自然清新，能令肌肤呈现出宛若天然的无瑕美感．健康而有活力。</li></ul>
                  </li>
                  <li>保护皮肤
                       <ul><li>保护皮肤不受外界环境的伤害。空气中的污染物会导致肌肤缺氧、晦暗粗糙、色斑，毛孔阻塞、起痘痘、皮肤干燥不适、疲惫、敏感等皮肤问题。保护皮肤不受外界环境的伤害，它的隔离功能。</li></ul>
                  </li>
                  <li>润肤
                       <ul><li>控油保湿，美白抗皱，调节皮脂分泌，渐渐改善皮肤问题。</li></ul>
                  </li>
                  <li>局部高光
                       <ul><li>珠光BB霜本身的使用还挺难的，需要掌握一定的技巧和方法，稍有不慎，一不小心会让脸看起来油光油亮的。稍稍的涂抹在眼眉下、眼下或T字部位，都可以起到很好的效果。</li></ul>
                  </li>
                  <li>混合眼妆
                       <ul><li>BB霜还可以和日常使用中的眼影膏进行混合使用，能够让旧眼影增添不少珠光色彩，并且更持久服贴。皮肤属于油性皮肤，眼部皮肤出油厉害可以考虑选用控油功效的BB霜，混合眼影膏使用这样会有很好的效果。但是，BB霜千万不能跟粉状彩妆混合，否则会糊成一团。</li></ul>
                  </li>
                  <li>腮红
                       <ul><li>将BB霜和膏状腮红抹在手上混合均匀，再涂抹于双颊，晕染。在都市生活中，腮红算的上是流行度较高的风格。</li></ul>
                  </li>
                  <li>唇彩
                       <ul><li>在化妆时，直接在唇部先涂上唇膏或唇蜜，然后用细刷沾取少量BB霜，轻轻地点在上嘴唇中间边缘的唇峰线和下唇中央部位即可。在选择洗刷时须选择黄狼尾刷毛的唇刷。</li></ul>
                  </li>
              </ol>
          </li>
         <li>使用方法
             <ul type="disc">
                 <li>按摩肌肤：为了让脸部没有涂抹BB霜的其余部分展现最自然的状态，可以对脸部进行适当的按摩，让肌肤呈现最健康的状态。</li>
                 <li>使用隔离霜：可以选择一款含有珍珠提亮效果的产品，先用手指轻轻点三次，然后晕开即可，提亮肤色。</li>
                 <li>全脸涂抹隔离霜：涂抹隔离霜至全脸，最后可以用海绵进行按压，同时可以带走多余油分。</li>
                 <li>涂抹BB霜：波浪形地涂抹BB霜，记得鼻翼两侧也要涂抹。海绵再次按压涂抹BB霜的区域，让BB霜更贴合皮肤不脱妆。</li>
                 <li>遮瑕：用眼部遮瑕产品点在眼周，用指腹轻轻按压并晕开。如果脸部有痘印也需要用遮瑕笔进行处理，为了打造无暇裸妆妆效果，遮瑕的步骤是不能忽略的。；</li>
                 <li>扫散粉：用大刷子蘸取散粉轻扫T区，这次的妆容重点都是在局部，没有浓重的妆感。；</li>
                
            </ul>
       </li> 
       <li>注意事项
             <ul type="disc">
                 <li>警惕化妆品中的光敏感物质，会让皮肤在阳光的曝晒下引起炎症反应。</li>
                 <li>某些人工合成化学物质，如色素和香料等会刺激皮肤引起瘙痒症、神经性皮炎。</li>
                 <li>含有重金属如铅、铬、钼、镉等的彩妆品会被皮肤吸收，在体内累积，引起中毒反应。</li>
                 <li>基础护肤品要选择适合自己复制的，滋润性过高的产品，其中的过多的油脂保湿剂可能会吸附空气中的灰尘，导致汗腺口和毛囊口被堵塞，造成细菌繁殖，引起毛囊炎、痤疮。</li>
                 <li>避免将眼线画在睫毛线以内过于靠近眼球表面的部位。由于这样可能会不小心伤害到眼睛，而且画眼线的工具或用品也可能因无意间接触到眼球表面而造成感染，尤其当工具没有清洗过的时候</li>
             </ul> 
          </li> 
         </ol>
         </div>
	</div>
	<div id="con_menu_7" style="display:none">
         <hr>          
         <div align="center">
  			<img src="images/other.PNG" alt="">
  		</div>  		
  		<hr>
  		<br>    
         <div class="fontinfo">
         <h3>彩妆</h3> 
            <ol>
          <li>基本信息
              <ul type="disc">
                 <li>彩妆主要指用于脸部、眼部、唇部的美容化妆品，包括粉底、蜜粉、口红、眼影、胭脂、睫毛膏等多种类型的产品，其主要作用是利用色彩变化，赋予皮肤色彩，修整肤色或加强眼、鼻部位的阴影，以增加立体感，从而使之更具魅力。同时，也可用于遮盖雀斑、伤痕、痣之类的皮肤缺陷。</li>
               </ul>
          </li>
          <li>使用方法 
              <ol>
                  <li>底妆
                       <ul><li>完美的妆容最关键的是底妆。在时间允许的情况下，可先将眉形处理，然后敷保湿面膜令皮肤更晶莹亮泽，选择跟肤色同色号的粉底液，再利用粉底刷在脸上均匀刷上粉底液，来回轻扫，避免留下刷痕，就像是在脸上打上无数的小“X” 的感觉，在粉底刷使用完之后可以再用海绵块轻轻按压一下全脸，这样能帮助粉底分布得更均匀，也让整体妆效更加自然通透；</li></ul>
                  </li>
                  <li>定妆
                       <ul><li>先用干粉粘取适量的蜜粉对折揉匀，用手指弹去多余的粉末，均匀地按压在肌肤上，再用大号化妆刷刷去多余的粉末，千万不可遗忘眼角、鼻翼和嘴角等这些油脂旺盛的区域。</li></ul>
                  </li>
                  <li> 眼线
                       <ul><li>外眼角拉长，用眼线刷，从眼角至眼尾将眼线逐步推匀，以使线条自然清晰；再用眼线刷晕开眼线，而这一步则是一定不能省去的，这个步骤能让眼线看起来自然而不会太死板。</li></ul>
                  </li>
                  <li>眼影
                       <ul><li>用中型的眼影刷沾取白色高光，从内眼角向外眼角大面积地扫满整个上眼皮，以强调线条结构。再用小型的眼影刷在眼线处，反复地轻扫几次咖啡色，但须控制咖啡色的面积，仅做小范围的使用，这样可以使整个眼部看上去更有立体感。晕染时，务必要注意层次的过渡，以避免涂抹不匀而造成的污浊感；</li></ul>
                  </li>
                  <li>睫毛膏
                       <ul><li>先按照最外梢- 再中间- 最后根部的顺序，分段式地夹睫毛，这样夹的睫毛既自然又卷翘，卷翘高时能达到80 度。</li></ul>
                  </li>
                  <li>下眼线
                       <ul><li>先选择易上色的黑色眼线勾画眼尾处，这样更能够强调眼睛的力度，于内眼睑上下眼线外2/3 处，然后用小型眼影刷轻轻晕开；但务必要注意眼线的深浅层次感，若是控制得越好则妆就会越漂亮；在眼尾处，可以画得稍微重一些。最后，另用白色眼影画于内眼睑和眼头处，这样，眼睛的轮廓就会变得更大，更明亮；</li></ul>
                  </li>
                  <li>修颜
                       <ul><li>在耳际到笑肌的三角区域部位、下颌角部位从后往前刷上深色系修颜粉或者比肤色深一号色的粉底液，用白色系的修颜从上至下扫亮鼻梁这条线——额头、下巴。从而在视觉上营造轮廓感，以提升脸型</li></ul>
                  </li>
                  <li> 腮红
                       <ul><li>在整个妆容里，眼影是视觉的重心。所以，腮红和唇色都要淡淡地处理。模特，通常选择的是粉红色腮红粉，由于他们是菱形脸，帮她刷的腮红则是圆型的腮红，并逐渐晕开，但是这样的只适合于菱形脸或者可爱型</li></ul>                  
                  </li>
                  <li>唇彩
                       <ul><li>选择淡淡的粉色亮片唇彩将其涂满即可，化出来的妆效非常地迷人</li></ul>                  
                  </li>
                  <li>成妆
                       <ul><li>以上程序步骤完成之后，稍等片刻即可达到整体成型的理想效果 。</li></ul>                  
                  </li>
              </ol>
          </li> 
         </ol>
         </div>
	</div>
</div>
</div>
  </body>
   <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.kxbdmarquee.js"></script>
</html>
