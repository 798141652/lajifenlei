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
<link href="css/allgarbageinfo.css" rel="stylesheet" type="text/css">
<meta charset="utf-8">
<title>用户列表</title>
</head>

<body>
	<div class="wrapper">
		<div class="header">
			<a href="personal.jsp" class="back-to-personal"></a> 垃圾信息
		</div>
		<div class="body">
			<div id="title">
				<s:form>
					<ul>
						<c:forEach var="garbage" items="${garbageList }"
							varStatus="status">
							<li><span><c:out value="${garbage.garbageName }"></c:out></span>
								<span><c:out
										value="${garbage.garbageType.garbagetypeName }"></c:out></span>
							</li>
						</c:forEach>
					</ul>
				</s:form>
			</div>
		</div>
	</div>
	<script src="js/rem.js"></script>
</body>
</html>
