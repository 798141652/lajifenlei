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
<link href="css/style.css" rel="stylesheet" type="text/css">
<meta charset="utf-8">
<title>垃圾百科</title>
</head>

<body>
	<div class="head">
		<p class="title">分类百科</p>
		<c:choose>
			<c:when test="${user.username ==null}">
				<a href="reg.jsp">注册</a>
				<a href="login.jsp">登录</a>
			</c:when>
			<c:otherwise>
				<c:out value="${user.username}"></c:out>, 欢迎您!
	       </c:otherwise>
		</c:choose>
		<div class="selectcity">
			<button class="but">选择城市</button>
			<div class="city">
				<a>北京</a> <a>上海</a>
			</div>
		</div>
	</div>
	<div class="body">
		<div class="selecttype">
			<a class="img1"
				href="garbagetype/garbagetype_queryGarbageType?garbagetype.garbagetypeName=可回收物">
				<img src="image/kehuishouwu.png" alt="可回收物" width="200" height="250">
				<span class="desc">可回收物</span>
			</a> <a class="img2"
				href="garbagetype/garbagetype_queryGarbageType?garbagetype.garbagetypeName=湿垃圾">
				<img src="image/shilaji.png" alt="湿垃圾" width="200" height="250">
				<span class="desc">湿垃圾</span>
			</a> <a class="img3"
				href="garbagetype/garbagetype_queryGarbageType?garbagetype.garbagetypeName=干垃圾">
				<img src="image/ganlaji.png" alt="干垃圾" width="200" height="250">
				<span class="desc">干垃圾</span>
			</a> <a class="img4"
				href="garbagetype/garbagetype_queryGarbageType?garbagetype.garbagetypeName=有害垃圾">
				<img src="image/youhailaji.png" alt="有害垃圾" width="200" height="250">
				<span class="desc">有害垃圾</span>
			</a>
		</div>



		<div id="title">
			<c:choose>
				<c:when test="${garbagetype.garbagetypeName ==null}"></c:when>
			</c:choose>
			<p id="type">
				<strong> <c:out value="${garbagetype.garbagetypeName}"></c:out></strong>&nbsp;
				<c:out value="${garbagetype.introduce}"></c:out>
			</p>
			<p>
				<strong>投放要求</strong>
				<c:out value="${garbagetype.requirement}"></c:out>
			</p>
		</div>

		<div class="content">
			<table>
				<c:forEach var="garbage" items="${garbageList }" varStatus="status">
					<tr>
						<td><c:out value="${garbage.garbageName }"></c:out></td>
					</tr>
				</c:forEach>

			</table>
		</div>
	</div>

	<div class="footer">
	</div>
</body>
<script src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
    $('.footer').load("common.jsp");
</script>
</html>
