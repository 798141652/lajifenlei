<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'login.jsp' starting page</title>

<link rel="stylesheet" type="text/css" href="css/login.css">
</head>

<body>
	<div class="common">
		<div class="header">登录</div>

		<div class="login">
			<form action="user/user_login">
				<div class="name">
					<label for="username">用户名：</label> <input type="text" id="username"
						name="user.username" placeholder="请输入用户名" required>
				</div>
				<div class="pass">
					<label for="password">密&nbsp;码：</label> <input type="password"
						placeholder="请输入密码" id="password" name="user.password" required>
				</div>
				<input type="submit" value="登录" id="submit">
			</form>
		</div>
	</div>
	<script src="js/rem.js"></script>
</body>
</html>
