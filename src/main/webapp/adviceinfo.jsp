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
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/advice.css">

</head>

<body>
	<div class="header">
		<a href="personal.jsp" class="back-to-personal"></a> 意见反馈
	</div>
	<div class="body">
		<div class="tips-box" style="display:block">
			<div class="mask"></div>
			<div class="tips">
				<div class="img">
					<img src="image/success.png" alt="">
				</div>
				<p>提交成功！</p>
				<a href="personal.jsp" id="sure">确定</a>
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
