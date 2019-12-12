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
			<a class="img1" target="_self" href="kehuishouwu.jsp" style="border-bottom: 4px solid #173B6B;">
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
			<a class="img4" target="_self" href="youhailaji.jsp">
					<img src="image/youhailaji.png" alt="有害垃圾" width="200" height="250">
			  <span class="desc">有害垃圾</span>
			</a>
		</div>
		
		<div class="content" style="background-color: #d5e3f6;">
			<p><strong>可回收物</strong>&nbsp;就是可以再生循环的垃圾。本身或材质可再利用的纸类、硬纸板、玻璃、塑料、金属、塑料包装，与这些材质有关的如：报纸、杂志、广告单及其它干净的纸类等皆可回收。</p>
			<p>
				<strong>投放要求</strong>
				<ul>
					<li>可回收物应轻投轻放，清洁干燥、避免污染;</li>
					<li>废纸尽量平整;</li>
					<li>立体包装物请清空内容物，清洁后压扁投放;</li>
					<li>有尖锐边角的，应包裹后投放。</li>
				</ul>
			</p>
		</div>
		<table class="example">
			<tr><td>报纸</td></tr>
			<tr><td>杂志</td></tr>
			<tr><td>图书</td></tr>
			<tr><td>各种包装纸</td></tr>
			<tr><td>办公用纸</td></tr>
			<tr><td>纸盒</td></tr>
			<tr><td>塑料袋</td></tr>
			<tr><td>一次性餐盒</td></tr>
			<tr><td>一次性餐具</td></tr>
			<tr><td>牙刷</td></tr>
			<tr><td>杯子</td></tr>
			<tr><td>塑料水瓶</td></tr>
			<tr><td>塑料玩具</td></tr>
			<tr><td>塑料文具</td></tr>
			<tr><td>塑料生活用品</td></tr>
			<tr><td>洗发液瓶</td></tr>
			<tr><td>洗手液瓶</td></tr>
<!--			<tr><td>洗衣液瓶</td></tr>-->
<!--			<tr><td>洗洁精瓶</td></tr>-->
<!--			<tr><td>玻璃饮料瓶</td></tr>-->
<!--			<tr><td>玻璃酒瓶</td></tr>-->
<!--			<tr><td>坏玻璃杯</td></tr>-->
<!--			<tr><td>碎玻璃窗</td></tr>-->
<!--			<tr><td>废玻璃板</td></tr>-->
<!--			<tr><td>镜子</td></tr>-->
<!--			<tr><td>镜片</td></tr>-->
<!--			<tr><td>易拉罐</td></tr>-->
<!--			<tr><td>金属罐头盒</td></tr>-->
<!--			<tr><td>金属装饰物</td></tr>-->
<!--			<tr><td>铝箔</td></tr>-->
<!--			<tr><td>铁片</td></tr>-->
<!--			<tr><td>铁钉</td></tr>-->
<!--			<tr><td>铁管</td></tr>-->
<!--			<tr><td>废钢丝</td></tr>-->
<!--			<tr><td>铜导线</td></tr>-->
<!--			<tr><td>废弃衣服</td></tr>-->
<!--			<tr><td>裤子</td></tr>-->
<!--			<tr><td>袜子</td></tr>-->
<!--			<tr><td>毛巾</td></tr>-->
<!--			<tr><td>书包</td></tr>-->
<!--			<tr><td>布鞋</td></tr>-->
<!--			<tr><td>床单</td></tr>-->
<!--			<tr><td>被褥</td></tr>-->
<!--			<tr><td>毛绒玩具</td></tr>-->

		</table>
		
	</div>
</body>
</html>
