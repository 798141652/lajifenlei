<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>意见反馈</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" href="css/style.css">
  </head>
  
  <body>
    <div class="head">
    	<div class="title">意见反馈</div>
    </div>
    <div class="body">
    	<form action="adviceinfo.jsp">
    	<span>请选择你想反馈的问题</span><br>
    	<input type="radio" name="problem-type" value="功能异常">功能异常：功能故障或不可用<br>
    	<input type="radio" name="problem-type" value="产品建议">产品建议：用得不爽，有建议<br>
    	<input type="radio" name="problem-type" value="其他">其他问题<br>
    	<span>请详细描述问题和意见</span>
    	<textarea name="advice" rows="30" cols="50" placeholder="请输入不少于10个字的描述"></textarea>
    	<button>提交</button>
    	</form>
    </div>
  </body>
</html>
