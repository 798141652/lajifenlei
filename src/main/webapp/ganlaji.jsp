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
			<a class="img1" target="_self" href="kehuishouwu.jsp" >
					<img src="image/kehuishouwu.png" alt="可回收物" width="200" height="250">
			  <span class="desc">可回收物</span>
			</a>
			<a class="img2" target="_self" href="shilaji.jsp">
					<img src="image/shilaji.png" alt="湿垃圾" width="200" height="250">
			  <span class="desc">湿垃圾</span>
			</a>
			<a class="img3" target="_self" href="ganlaji.jsp" style="border-bottom: 4px solid #2C2B27">
					<img src="image/ganlaji.png" alt="干垃圾" width="200" height="250">
			  <span class="desc">干垃圾</span>
			</a>
			<a class="img4" target="_self" href="youhailaji.jsp">
					<img src="image/youhailaji.png" alt="有害垃圾" width="200" height="250">
			  <span class="desc">有害垃圾</span>
			</a>
		</div>
		
		<div class="content" style="background-color:  #dbdad6;">
			<p><strong>干垃圾</strong>&nbsp;即其它垃圾，指除可回收物、有害垃圾、厨余垃圾（湿垃圾）以外的其它生活废弃物。</p>
			<p>
				<strong>投放要求</strong>
				<ul>
					<li>禁止混投。干垃圾应投入干垃圾收集容器，并保持周边环境整洁。 </li>
					<li>凡未列入本目录或成分复杂难以分辨类别的生活垃圾,投入干垃圾收集容器。 </li>
				</ul>
			</p>
		</div>
		<table class="example">
			<tr><td>餐巾纸</td></tr>
			<tr><td>卫生间用纸</td></tr>
			<tr><td>尿不湿</td></tr>
			<tr><td>猫砂</td></tr>
			<tr><td>狗尿垫</td></tr>
			<tr><td>污损纸张</td></tr>
			<tr><td>烟蒂</td></tr>
			<tr><td>干燥剂</td></tr>
			<tr><td>污损塑料</td></tr>
			<tr><td>尼龙制品</td></tr>
			<tr><td>编织袋</td></tr>
			<tr><td>防碎气泡膜</td></tr>
			<tr><td>大骨头</td></tr>
			<tr><td>硬贝壳</td></tr>
			<tr><td>椰子壳</td></tr>
			<tr><td>榴莲壳</td></tr>
			<tr><td>核桃壳</td></tr>
			<tr><td>玉米衣</td></tr>
			<tr><td>甘蔗皮</td></tr>
			<tr><td>榴莲核</td></tr>
			<tr><td>菠萝蜜核</td></tr>
<!--			<tr><td>毛发</td></tr>-->
<!--			<tr><td>灰土</td></tr>-->
<!--			<tr><td>炉渣</td></tr>-->
<!--			<tr><td>橡皮泥</td></tr>-->
<!--			<tr><td>太空沙</td></tr>-->
<!--			<tr><td>胶水</td></tr>-->
<!--			<tr><td>胶带</td></tr>-->
<!--			<tr><td>花盆</td></tr>-->
<!--			<tr><td>毛巾</td></tr>-->
<!--			<tr><td>一次性餐具</td></tr>-->
<!--			<tr><td>镜子</td></tr>-->
<!--			<tr><td>竹篮</td></tr>-->
<!--			<tr><td>牙签</td></tr>-->
<!--			<tr><td>竹筷</td></tr>-->
<!--			<tr><td>伞</td></tr>-->
<!--			<tr><td>笔</td></tr>-->
<!--			<tr><td>眼镜</td></tr>-->
<!--			<tr><td>打火机</td></tr>-->
		</table>
	</div>
</body>
</html>
