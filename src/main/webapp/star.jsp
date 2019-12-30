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
	<div class="wrapper">
		<div class="header">
			<a href="personal.jsp" class="back-to-personal"></a> 给我们评分
		</div>
		<div class="content">
			<form id="star" action="star/star_addStar" method="post">
				<div class="stars">
					<img src="image/empty.png" alt=""> <img src="image/empty.png"
						alt=""> <img src="image/empty.png" alt=""> <img
						src="image/empty.png" alt=""> <img src="image/empty.png"
						alt="">
				</div>
				<div class="word" id="word"></div>
				<input id="starcontent" type="hidden" name="star.starNum" value="" />
				<button class="submitMyCom" id="submitMyCom">提交</button>
			</form>
		</div>
		
	 <div class="tips-box">
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

	<script src="js/jquery-3.3.1.js"></script>
	<script>
		var words = [ "满意", "一般满意", "还不错", "很满意", "非常满意" ];
		var divstars = document.getElementsByClassName("stars")[0];
		var divword = document.getElementsByClassName("word")[0];
		var star = -1;
		divstars.addEventListener('touchmove', function(e) {
			console.log('start');
			if (e.target.tagName === "IMG") {
				e.target.src = "image/shining.png";
				var prev = e.target.previousElementSibling;
				while (prev) {
					prev.src = "image/shining.png";
					prev = prev.previousElementSibling;
				}
				var next = e.target.nextElementSibling;
				while (next) {
					next.src = "image/empty.png";
					next = next.nextElementSibling;
				}
				//文字
				var index = Array.from(divstars.children).indexOf(e.target);
				divword.innerHTML = words[index];
			}
	
		})
		console.log(divword.innerHTML);
		divstars.onclick = function(e) {
			if (e.target.tagName === "IMG") {
				star = Array.from(divstars.children).indexOf(e.target);
			}
		}
		divstars.touchend = function() {
			divword.innerHTML = words[star] || "";
			for (var i = 0; i < divstars.length; i++) {
				if (i <= star) {
					divstars.children[i].src = "image/shining.png";
				} else {
					divstars.children[i].src = "image/empty.png";
				}
			}
		}
		
		    //点击提交按钮，提交成功后显示弹框；
		    $('.submitMyCom').click(function () {
		   $('.tips-box').css({
		      'display':'block'
		   })
		   return false;
		})
		//点击确定或遮罩层，提示框消失
		$('.mask').click(function () {
		   $('.tips-box').css({
		      'display':'none'
		   })
		})
		$('#sure').click(function () {
		   $('.tips-box').css({
		      'display':'none'
		   })
		})
		
	
	</script>
</body>

</html>
