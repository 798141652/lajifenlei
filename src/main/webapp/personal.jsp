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
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/personal.css">
  </head>

<body>
	<div class="personal">
		<div class="head">
			<c:choose>
				<c:when test="${session.user.username ==null}">
					<div>
						<a href="register.jsp">注册</a>/ <a href="login.jsp">登录</a>
					</div>
				</c:when>
				<c:otherwise>
					<div class="img">
						<img src="<%=basePath%><s:property value='#session.user.photopath'/>">
					</div>
					<p class="tips">
						<c:out value="${session.user.username}"></c:out>
						, 欢迎您!
					</p>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${session.user.username ==null}">
				</c:when>
				<c:otherwise>
					<li class="zhuxiao"><a href="user/user_logout">注销</a></li>
				</c:otherwise>
			</c:choose>
		</div>

		<div class="content">
			<ul class="list">
				<c:choose>
					<c:when test="${session.user.username =='admin'}">
							<li> <span class="text">垃圾信息</span>
							<a href="garbage/garbage_showGarbage"></a></li>
							<li> <span class="text">查看用户信息</span>
							<a href="user/user_queryUsers"></a></li>
							<li> <span class="text">查看用户评分</span>
							<a href="user/user_queryUsers"></a></li>
							<li> <span class="text">查看意见反馈</span>
							<a href="advice/advice_queryAllAdvice"></a></li>
					</c:when>
					<c:otherwise>

						<c:choose>
							<c:when test="${session.user.username ==null}">

							</c:when>
							<c:otherwise>
								<li><span class="icon user"></span> <span class="text">修改个人资料</span>
									<a href="user/user_showDetail?user.username=${session.user.username }"></a></li>
							</c:otherwise>
						</c:choose>

						<li><span class="icon advice"></span> <span class="text">意见反馈</span>
							<a href="advice.jsp"></a></li>
						<li><span class="icon star"></span> <span class="text">给我们评分</span>
							<a href="star.jsp"></a></li>
						<li><span class="icon aboutUs"></span> <span class="text">关于我们</span>
							<a href="aboutus.jsp"></a></li>

					</c:otherwise>
				</c:choose>
			</ul>
		</div>
		<div class="footer"></div>
	</div>

</body>
<script src="js/jquery-3.3.1.js"></script>
	<script src="js/rem.js"></script>

<script type="text/javascript">
	$('.footer').load("common.jsp");
</script>
</html>