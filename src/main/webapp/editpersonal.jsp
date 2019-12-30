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
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<base href="<%=basePath%>">
<title>Document</title>
<link rel="stylesheet" href="css/editpersonal.css">
<script src="js/jquery.min.js"></script>
<script src="js/rem.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-fileupload.js"></script>

</head>
<body>
	<div class="personal">
		<div class="header">
			<a href="personal.jsp" class="back-to-personal"></a> 修改个人资料
		</div>
		<div class="content">
			<s:form action="user/user_editUser" enctype="multipart/form-data">
				<s:hidden name="user.id" />

				<div class="old">
					<div class="tip">原头像</div>
					<div class="photo">
						<img style="max-width: 200px; max-height:150px; line-height: 2px;"
							src="<%=basePath%><s:property value='#session.user.photopath'/>">
					</div>
				</div>

		<div class="fileupload fileupload-new" data-provides="fileupload">
			<div class="new">
				<div class="tip">新头像</div>
				<div class="fileupload-preview fileupload-exists thumbnail"></div>
			</div>
			<div>
				<!--<span class="btn btn-file btn-primary"><span class="fileupload-new">浏览</span>
                                   <span class="fileupload-exists">浏览</span>-->
				<input type="file" name="userPhoto" />
				<button class="btn btn-danger fileupload-exists"
					data-dismiss="fileupload">取消</button>
			</div>

		</div>
		<!--  <div class="new photo"
					style="max-width: 200px; max-height:150px; line-height: 2px;">
				</div>-->

			<s:textfield name="user.username" key="用户名"></s:textfield>
			<s:password name="user.password" key="密码"></s:password>
			<s:submit value="提交" class="right"></s:submit>
		</s:form>
	</div>
</div>

</body>
<script src="js/jquery-3.3.1.js"></script>

</html>