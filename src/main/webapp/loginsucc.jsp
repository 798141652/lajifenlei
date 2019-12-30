<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'adviceinfo.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Refresh" content="1;url=personal.jsp">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>

<body>
	<div class="header">
		登录
	</div>
	<div class="body">
		<div class="tips-box" style="display:block">
			<div class="mask"></div>
			<div class="tips">
				<p>登录成功！</p>
			</div>
		</div>
	</div>
	<!-- 
	<script src="js/jquery-3.3.1.js"></script>
	<script>
		//点击提交按钮，提交成功后显示弹框；
		$('.submitMyCom').click(function() {
			$('.tips-box').css({
				'display' : 'block'
			})
			return false;
		})
		//点击确定或遮罩层，提示框消失
		$('.mask').click(function() {
			$('.tips-box').css({
				'display' : 'none'
			})
		})
		$('#sure').click(function() {
			$('.tips-box').css({
				'display' : 'none'
			})
		})
	</script>
	 -->
</body>
</html>
