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
<link href="css/alluserinfo.css" rel="stylesheet" type="text/css">
<meta charset="utf-8">
<title>用户列表</title>
</head>

<body>
	<div class="wrapper">
		<div class="header">
			<a href="personal.jsp" class="back-to-personal"></a> 用户信息
		</div>
		<div class="body">
			<div id="title">
				<s:form>
					<ul>
					<li>
						<span>用户头像</span>
						<span>用户昵称</span>
					</li>
						<s:iterator var="user" value="userList" status="status">
							<li>
							<img width="100px" height="100px" src="<%=basePath%><s:property value='photopath'/>">
							<span><s:property value='#user.username'/></span>
							</li>
						</s:iterator>
					</ul>
				</s:form>
			</div>
		</div>

		<div class="footer"></div>
	</div>
	<script src="js/rem.js"></script>
</body>
</html>
