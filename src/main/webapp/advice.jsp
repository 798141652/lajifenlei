<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>意见反馈</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/advice.css">
	
  </head>
  
  <body>
     <div class="header">
   	<a href="personal.jsp" class="back-to-personal"></a>
   	意见反馈</div>
    <div class="body">
    	<form action="advice/advice_addAdvice" class="fm">
    	<span class="title">请选择你想反馈的问题</span>
    	<ul>
    		<li><input type="radio" name="advice.type" value="功能异常">功能异常：功能故障或不可用</li>
    		<li><input type="radio" name="advice.type" value="产品建议">产品建议：用得不爽，有建议</li>
    		<li><input type="radio" name="advice.type" value="其他">其他问题</li>
    	</ul>
 
    	<div class="des">请详细描述问题和意见</div>
    	<textarea name="advice.msg" rows="10" cols="40" placeholder="请输入不少于10个字的描述"></textarea>
    	<input type="submit" value="提交" class="submitMyCom">
    	</form>
    </div>
  </body>
  
</html>
