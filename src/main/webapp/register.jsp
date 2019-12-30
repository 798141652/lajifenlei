
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML >
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'login.jsp' starting page</title>


<link rel="stylesheet" type="text/css" href="css/personal.css">
<link rel="stylesheet" type="text/css" href="css/register.css">


<title>注册页面</title>

<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-fileupload.js"></script>
</head>
<body>
	<div class="common">
	<div class="header">
			<a href="personal.jsp" class="back-to-personal"></a> 注册
		</div>
		<div class="register">
			<form action="user/user_reg" method="post"
				enctype="multipart/form-data">

				<div class="col-md-4">
				 
					<div class="fileupload fileupload-new" data-provides="fileupload">
						<div class="fileupload-new thumbnail"
						>
							  <img src="<%=basePath%>upload/demoUpload.jpg" alt="" />
						</div>
						
						<div class="fileupload-preview fileupload-exists thumbnail"
							>
						</div>
						<div>
							<span class="btn btn-file btn-primary">
								<input type="file" name="userPhoto" /></span>
								 <a href="#"
								class="btn btn-danger fileupload-exists"
								data-dismiss="fileupload">取消</a>
						</div>
					</div>
				</div>

				<div class="name">
					<label for="username">用户名：</label> <input type="text" name="user.username" id="username"
						placeholder="请输入用户名" required>
				</div>
				<div class="pass">
					<label for="password">密&nbsp;码：</label> <input type="password" name="user.password"
						placeholder="请输入密码" id="password" required>
				</div>
				<input type="submit" value="提交" id="submit"> <input
					type="reset" value="重置" id="reset">
			</form>
		</div>
	</div>
	<script src="js/rem.js"></script>
</body>
</html>