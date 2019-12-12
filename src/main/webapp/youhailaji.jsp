<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css">
<meta charset="utf-8">
<title>垃圾百科</title>
</head>

<body>
	<div class="head">
	  <p class="title" >分类百科</p>
	  	<div class="selectcity">
			<button class="but">选择城市</button>
				<div class="city">
				<a href="">北京</a>
				<a href="">上海</a>
				</div>
		</div>
	</div>	
	<div class="body">
		<div class="selecttype">
			<a class="img1" target="_self" href="kehuishouwu.jsp">
					<img src="image/kehuishouwu.png" alt="可回收物" width="200" height="250">
			  <span class="desc">可回收物</span>
			</a>
			<a class="img2" target="_self" href="shilaji.jsp">
					<img src="image/shilaji.png" alt="湿垃圾" width="200" height="250">
			  <span class="desc">湿垃圾</span>
			</a>
			<a class="img3" target="_self" href="ganlaji.jsp">
					<img src="image/ganlaji.png" alt="干垃圾" width="200" height="250">
			  <span class="desc">干垃圾</span>
			</a>
			<a class="img4" target="_self" href="youhailaji.jsp" style="border-bottom: 4px solid #EA4531;">
					<img src="image/youhailaji.png" alt="有害垃圾" width="200" height="250">
			  <span class="desc">有害垃圾</span>
			</a>
		</div>
		
		<div class="content" style="background-color:  #f8c0ba;">
			<p><strong>有害垃圾</strong>&nbsp;指废电池、废灯管、废药品、废油漆及其容器等对人体健康或者自然环境造成直接或者潜在危害的生活废弃物。</p>
			<p>
				<strong>投放要求</strong>
				<ul>
					<li>分类投放有害垃圾时，应注意轻放。 </li>
					<li>废灯管等易破损的有害垃圾应连带包装或包裹后投放; </li>
					<li>废弃药品宜连带包装一并投放;杀虫剂等压力罐装容器，应排空内容物后投放; </li>
					<li>在公共场所产生有害垃圾且未发现对应收集容器时，应携带至有害垃圾投放点妥善投放。  </li>
				</ul>
			</p>
		</div>
		<table class="example">
			<tr><td>废电池</td></tr>
			<tr><td>废日光管</td></tr>
			<tr><td>废水银温度计</td></tr>
			<tr><td>过期药品</td></tr>
			<tr><td>充电电池</td></tr>
			<tr><td>镉镍电池</td></tr>
			<tr><td>铅酸电池</td></tr>
			<tr><td>蓄电池</td></tr>
			<tr><td>纽扣电池</td></tr>
			<tr><td>日光灯管</td></tr>
			<tr><td>卤素灯</td></tr>
			<tr><td>药物胶囊</td></tr>
			<tr><td>药片</td></tr>
			<tr><td>药品内包装</td></tr>
			<tr><td>使用过的医用纱布棉签</td></tr>
<!--			<tr><td>废油漆桶</td></tr>-->
<!--			<tr><td>染发剂壳</td></tr>-->
<!--			<tr><td>过期的指甲油</td></tr>-->
<!--			<tr><td>洗甲水</td></tr>-->
<!--			<tr><td>废矿物油及其包装物</td></tr>-->
<!--			<tr><td>水银温度计</td></tr>-->
<!--			<tr><td>水银血压计</td></tr>-->
<!--			<tr><td>老鼠药</td></tr>-->
<!--			<tr><td>杀虫喷雾罐</td></tr>-->
<!--			<tr><td>x光片等感光胶片</td></tr>-->
<!--			<tr><td>相片底片</td></tr>-->
			
		</table>
		
	</div>
</body>
</html>
