<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>注册页面</title>
    
	<link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  
  <body>
  <div class="head"><div class="title">注册</div></div>
  <hr>
   <div class="body">
	<s:form	action="user/user_reg" method="post" >
		<s:textfield name="user.username" key="用户名"></s:textfield>    
		<s:textfield name="user.password" key="密码"></s:textfield>
		<s:submit value="提交"></s:submit>
		<s:reset value="重填"></s:reset>
    </s:form>
   </div>
  </body>
</html>