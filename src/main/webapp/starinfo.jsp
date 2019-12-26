<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'starinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Refresh" content="2;url=personal.jsp">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <link rel="stylesheet" href="css/style.css">
  </head>
  
  <body>
      <div class="head">
		<p class="title">评分</p>
		<c:choose>
			<c:when test="${user.username ==null}">
				<a href="register.jsp">注册</a>
				<a href="login.jsp">登录</a>
			</c:when>
			<c:otherwise>
				<c:out value="${user.username}"></c:out>, 欢迎您!
	       </c:otherwise>
		</c:choose>
	</div>
	<div class="body">
	评分成功
	</div>
	<div class="footer"></div>
  </body>
</html>
