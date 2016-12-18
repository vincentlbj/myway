<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<title>登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Student Login Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='//fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="<%=request.getContextPath()%>/css/login.css" rel='stylesheet' type='text/css' media="all"/>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
	<div class="content">
		<form action="<%=request.getContextPath()%>/user/login" method="post">
			<div class="row1">
				<h1>LOGIN</h1>
					<span>账号：</span><input type="text" name="userName" value="<c:if test='${user!=null}'>${user.userName }</c:if>" class="a">
					<c:if test="${userNameError!=null }">
						<br>
						<font style="color: yellow;">${userNameError }</font>
					</c:if>
					<br>
					<span>密码：</span><input type="password" name="password" value="<c:if test='${user!=null}'>${user.password }</c:if>" class="a">
					<c:if test="${passwordError!=null }">
						<br>
						<font style="color: yellow;">${passwordError }</font>
					</c:if>
					<c:if test="${loginError!=null }">
						<br>
						<font style="color: yellow;">${loginError.message }</font>
					</c:if>
			</div>
			<div class="row2">
				<a href="<%=request.getContextPath()%>/registerPage">Register</a>
				<input type="submit" value="Login">
			</div>
			<!-- 记录上一个页面 -->
			<input type="hidden" name="referer" value="${referer }">
		</form>
	</div>
	<div class="footer">
		<p>Copyright © 2016 Myway. All Rights Reserved</p>
	</div>
</body>
</html>