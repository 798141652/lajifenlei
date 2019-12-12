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
				<a>北京</a>
				<a>上海</a>
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
			<a class="img4" target="_self" href="youhailaji.jsp">
					<img src="image/youhailaji.png" alt="有害垃圾" width="200" height="250">
			  <span class="desc">有害垃圾</span>
			</a>
		</div>
	</div>
</body>
</html>
