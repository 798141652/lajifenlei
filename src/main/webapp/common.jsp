<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<link href="css/common.css" rel="stylesheet" type="text/css">
<meta charset="utf-8">
</head>
<body>
<div class="footer">

		
			<a href="index.jsp"> 
				<img src="image/first.png">
				<span>首页</span>
			</a> 
			<a href="garbagetype/garbagetype_queryGarbageType?garbagetype.garbagetypeName=可回收物"> 
				<img src="image/game.png" >
				<span>游戏</span>
			</a>
			<a href="garbagetype/garbagetype_queryGarbageType?garbagetype.garbagetypeName=可回收物"> 
				<img src="image/sort.png" >
				<span>百科</span>
			</a>
			
			 <a href="personal.jsp"> <img src="image/set.png"><span>设置</span>
			</a>
	
	</div>
</body>
</html>