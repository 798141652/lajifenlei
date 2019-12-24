<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>

	<!doctype html>
<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/search.css" rel="stylesheet" type="text/css">
<meta charset="utf-8">
<title>垃圾百科</title>
</head>

<body>
	<div class="head">
		<span>垃圾分类app</span>
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
		<s:form action="garbage/garbage_queryGarbages" method="post">
			<div class="search">
				<div class="search_input">
					<lable>垃圾名称：</lable>
					<input type="text" name="keyWords" placeholder="请输入关键词">
					<s:submit class="find_button" value="查询"></s:submit>
				</div>
			</div>
		</s:form>


		<s:form>
			<table>
				<c:forEach var="garbage" items="${garbageList }" varStatus="status">
					<tr>
						<td><c:out value="${garbage.garbageName }"></c:out></td>
						<td><c:out value="${garbage.garbageType.garbagetypeName }"></c:out></td>
					</tr>
				</c:forEach>
			</table>
		</s:form>

	</div>
	<div class="footer">

		<div>
			<a href="index.jsp"> <img src="image/first.png" width="70px"
				height="70px"><span>首页</span>
			</a> <a href="baike.jsp"> <img src="image/sort.png" width="70px"
				height="70px"><span>百科</span>
			</a> <a href="personal.jsp"> <img src="image/set.png" width="70px"
				height="70px"><span>设置</span>
			</a>
		</div>
	</div>
</body>
</html>
