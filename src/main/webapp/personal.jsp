<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="head">
		<p class="title">设置</p>
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
        <ul class="list">
            <li><span class="icon advice"></span><a href="advice.jsp">意见反馈</a></li>
            <li><span class="icon star"></span><a href="star.jsp">给我们评分</a></li>
            <li><span class="icon aboutUs"></span><a href="aboutus.jsp">关于我们</a></li>
            <li><span class="icon user"></span><a href="appinfo.jsp">用户协议与隐私</a></li>
            <c:choose>
			<c:when test="${user.username ==null}">
			</c:when>
			<c:otherwise>
				<li><a href="user/user_logout">注销</a></li>
	       </c:otherwise>
		</c:choose>
        </ul>
    </div>
	<div class="footer"></div>
</body>
<script src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
    $('.footer').load("common.jsp");
</script>
</html>