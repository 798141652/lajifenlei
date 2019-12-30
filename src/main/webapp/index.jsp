<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
	<base href="<%=basePath%>">
	
	<title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<link href="css/search.css" rel="stylesheet" type="text/css">
	<meta charset="utf-8">
	<title>垃圾百科</title>
</head>
<body>
	<div class="wrapper">
		<div class="header">垃圾分类</div>
		<div class="content">
			<div class="search-box">
				<s:form action="garbage/garbage_queryGarbages" method="post">
					<input type="text" name="keyWords" placeholder="请输入垃圾名称"
						class="search">
					<input type="submit" value="搜索" class="find_button">
				</s:form>
			</div>

			<div class="result">
				<s:form>
					<!-- <table> -->
					<ul>
						<c:forEach var="garbage" items="${garbageList }"
							varStatus="status">
							<!--<tr>  -->
							<li><span><c:out value="${garbage.garbageName }"></c:out></span>
								<span><c:out
										value="${garbage.garbageType.garbagetypeName }"></c:out></span></li>
							<!--  
							<td><c:out value="${garbage.garbageName }"></c:out></td>
							<td><c:out value="${garbage.garbageType.garbagetypeName }"></c:out></td>
							-->
							<!--</tr>  -->
						</c:forEach>
					</ul>
					<!--  	</table>-->
				</s:form>
			</div>


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
