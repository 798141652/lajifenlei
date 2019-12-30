<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>关于我们</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/aboutUs.css">
	

  </head>
  
  <body>
   <div class="aboutUs">
   	<div class="header">
   	<a href="personal.jsp" class="back-to-personal"></a>
   	关于我们</div>
   	<div class="content">
   	<div class="img">
   		<img alt="" src="image/logo.png">
   		<p> version 1.0.1</p>
   	</div>
   	<div class="detail">
   		sorting APP是一款垃圾分类的app,用户可以通过搜索或者分类百科查询垃圾分类结果，游戏部分一方面可以带给用户娱乐，还可以学到更多的垃圾分类常识。
   	</div>
   	<div class="userInfo">
   		<a href="appinfo.jsp">用户协议与隐私</a>
   	</div>
   	
   	</div>
   </div> 
     
  </body>
</html>
