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


  <!--<form action="register" method="post">
	   <table  cellspacing=5 border=5 bordercolor=#ffaa00>
	   <tr><th colspan="3" align="center" bgcolor=#ffaa00>用户注册</th></tr>
	   <tr>
	   <th rowspan="3" background="images/2.jpg" style="width=90ph"></th>
	   <td>用户名：</td><td><input type="text" class="message" name="username"></td></tr>
	   <tr><td>密码：</td><td><input  type="password" class="message" name="userpassword"></td></tr>
	   <tr><td>邮箱：</td><td><input  type="text" class="message" name="email"></td></tr>
	   <tr><td>手机号：</td><td><input  type="text" class="message" name="phonenum"></td></tr>
	   <tr><td colspan="2" align="center"><input type="submit" value="注册"> <input type="reset" value="重填"></td></tr>
	   </table>
	   </form>-->