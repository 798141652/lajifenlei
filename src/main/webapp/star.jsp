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

<title>评分</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/star.css">
</head>

<body>
	<div class="head">
		<div class="title">给我们评分</div>
	</div>
	<div class="body">
		<div id="starBg" class="star_bg">
			<input type="radio" id="starScore1" class="score score_1" value="1"
				name="score"> <a href="#starScore1" class="star star_1"
				title="差"><label for="starScore1">差</label></a> <input type="radio"
				id="starScore2" class="score score_2" value="2" name="score">
				<a href="#starScore2" class="star star_2" title="较差"><label
				for="starScore2">较差</label></a> <input type="radio" id="starScore3"
				class="score score_3" value="3" name="score"> <a
				href="#starScore3" class="star star_3" title="普通"><label
				for="starScore3">普通</label></a> <input type="radio" id="starScore4"
				class="score score_4" value="4" name="score"> <a
				href="#starScore4" class="star star_4" title="较好"><label
				for="starScore4">较好</label></a> <input type="radio" id="starScore5"
				class="score score_5" value="5" name="score"> <a href="#5"
				class="star star_5" title="好"><label for="starScore5">好</label></a>
		</div>
	</div>
</body>

</html>
