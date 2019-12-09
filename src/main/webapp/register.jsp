<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>注册页面</title>
    
	<link rel="stylesheet" type="text/css" href="css/login.css">
  </head>
  
  <body>
  <h1 align="center">用户注册页面</h1>
  <hr>
   <div align="center">
		<s:form action="register" method="post">
		<s:textfield name="username" label="用户名"></s:textfield>
		<s:password name="userpassword" label="密码"></s:password>
		<s:password name="confirmpass" label="确认密码"></s:password>
		<s:submit value="验证密码" method="confirm"></s:submit>
		<s:textfield name="email" label="邮箱"></s:textfield>
		<s:textfield name="phonenum" label="手机号"></s:textfield>
		<s:submit value="注册"></s:submit>
	</s:form>
   </div>
  </body>
</html>