<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>登录页面</title>
	<link rel="stylesheet" type="text/css" href="css/login.css">
  </head>
  
  <body>
  <h1 align="center">用户登录页面</h1>
  <hr>
   <div align="center">
   <form action="login.action" method="post">
   <table  cellspacing=5 border=5 bordercolor=#ffaa00>
   <tr><th colspan="3" align="center" bgcolor=#ffaa00>用户登录</th></tr>
   <tr>
   <th rowspan="3" background="images/2.jpg" style="width=90ph"></th>
   <td>用户名：</td><td><input type="text" class="message" name="username"></td></tr>
   <tr><td>密码：</td><td><input  type="password" class="message" name="userpassword"></td></tr>
   <tr>
	   <td colspan="2" align="center">
	   	   <input type="button" value="注册" onclick="window.location.href='register.jsp'">
		   <input type="submit" value="登录">
		   <input type="reset" value="重置">
	   </td>
   </tr>
   </table>
   </form>
   </div>
  </body>
</html>
