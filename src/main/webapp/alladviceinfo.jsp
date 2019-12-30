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
<link href="css/alladviceinfo.css" rel="stylesheet" type="text/css">
<meta charset="utf-8">
<title>用户列表</title>
</head>

<body>
	<div class="wrapper">
		<div class="header">
			<a href="personal.jsp" class="back-to-personal"></a> 用户反馈
		</div>
		<div class="body">
			<div id="title">
				<s:form>
					<ul>
						<li><span>用户名</span> <span>问题类型</span> <span>问题描述</span></li>
						<c:forEach var="advice" items="${advicelist }" varStatus="status">
							<li><span><c:out value="${advice.user.username }"></c:out></span>
								<span><c:out value="${advice.type }"></c:out></span> <span><c:out
										value="${advice.msg }"></c:out></span></li>
						</c:forEach>
					</ul>
				</s:form>
			</div>
		</div>
	</div>
	<script src="js/rem.js"></script>
</body>
</html>
