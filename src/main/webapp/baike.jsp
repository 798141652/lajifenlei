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
<link href="css/baike.css" rel="stylesheet" type="text/css">
<meta charset="utf-8">
<title>垃圾百科</title>
</head>

<body>
<div class="wrapper">
 <div class="header">分类百科</div>
	<div class="body">
		<div class="selecttype">
			<a class="img1"  data-index="0" 
				href="garbagetype/garbagetype_queryGarbageType?garbagetype.garbagetypeName=可回收物">
				<img src="image/kehuishouwu.png" alt="可回收物">
				<span class="desc">可回收物</span>
			</a>
			 <a class="img2" data-index="1" 
				href="garbagetype/garbagetype_queryGarbageType?garbagetype.garbagetypeName=湿垃圾">
				<img src="image/shilaji.png" alt="湿垃圾" >
				<span class="desc">湿垃圾</span>
			</a> 
			<a class="img3"  data-index="2" 
				href="garbagetype/garbagetype_queryGarbageType?garbagetype.garbagetypeName=干垃圾">
				<img src="image/ganlaji.png" alt="干垃圾">
				<span class="desc">干垃圾</span>
			</a> 
			<a class="img4" data-index="3" 
				href="garbagetype/garbagetype_queryGarbageType?garbagetype.garbagetypeName=有害垃圾">
				<img src="image/youhailaji.png" alt="有害垃圾" >
				<span class="desc">有害垃圾</span>
			</a>
		</div>
		<hr>



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
				<br>
				<c:out value="${garbagetype.requirement}"></c:out>
			</p>
		</div>

		<div class="content">
			<ul class="list">
				<c:forEach var="garbage" items="${garbageList }" varStatus="status">
					
						<li><c:out value="${garbage.garbageName }"></c:out></li>
					
				</c:forEach>

			</ul>
		</div>
	</div>

	<div class="footer">
	</div>
</div>
  
</body>
<script src="js/jquery-3.3.1.js"></script>
<script src="js/rem.js"></script>
<script type="text/javascript">
//加载底部
    $('.footer').load("common.jsp");
  /*//点击垃圾桶，背景颜色改变
  var colorList = ['#d5e3f6','#e2d3cf','#dbdad6','#f8c0ba'];
  var borderColorList = ['#173B6B','#6A483F','#2C2B27','#EA4531'];
  var selecttype = document.getElementsByClassName('selecttype')[0];
  var title = document.getElementById('title');
  var a = selecttype.getElementsByTagName('a');
  console.log(a);
  for(var i = 0; i< a.length; i++){


  	a[i].onclick = function(e){
  		var index = parseInt(this.dataset.index);
  		//console.log(colorList[index]);
  		title.style.backgroundColor = colorList[index];
  		var span = this.getElementsByTagName('span')[0];
  		//console.log(span.style.border);
  		var arr = $(this).siblings();
  		console.log(arr);
  	
  		for(var j = 0; j< arr.length;j++){
  		if(arr[j].style.borderBottom != 'none'){
  			arr[j].style.borderBottom = 'none';
  		}
  		
  		}
  		//arr.forEach(function(item){
  			//item.css('borderBottom','none');
  		//});
  		span.style.borderBottomborder = '2px';
  		span.style.borderBottomStyle = 'solid';
  		span.style.borderBottomColor =  borderColorList[index];
  		return false;
  	}
  }
 */
</script>
</html>
