<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<title>注册</title>
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
		<form action="<%=request.getContextPath()%>/user/register" method="post">
			<div class="row1">
				<h1>REGISTER</h1>
					<span>账号：</span><input type="text" name="userName" value="<c:if test='${user!=null}'>${user.userName }</c:if>">
					<c:if test="${userNameError!=null }">
						<br>
						<font style="color: yellow;">${userNameError }</font>
					</c:if>
					<c:if test="${existError!=null }">
						<br>
						<font style="color: yellow;">${existError.message }</font>
					</c:if>
					<br>
					<span>邮箱：</span><input type="text" name="email" value="<c:if test='${user!=null}'>${user.email }</c:if>">					
					<c:if test="${emailError!=null }">
						<br>
						<font style="color: yellow;">${emailError }</font>
					</c:if>
					<br>
					<span>密码：</span><input type="password" name="password" value="">
					<c:if test="${passwordError!=null }">
						<br>
						<font style="color: yellow;">${passwordError }</font>
					</c:if>
					<br>
					<span>重复密码：</span><input type="password" name="rePassword" value="">
					<c:if test="${rePasswordError!=null }">
						<br>
						<font style="color: yellow;">${rePasswordError }</font>
					</c:if>
					<c:if test="${reEqualsError!=null }">
						<br>
						<font style="color: yellow;">${reEqualsError }</font>
					</c:if>
			</div>
			<div class="row2">
				<a href="<%=request.getContextPath()%>/loginPage">Login</a>
				<input type="submit" value="Confirm" >
			</div>
		</form>
	</div>
	<div class="footer">
		<p>Copyright © 2016 Myway. All Rights Reserved</p>
	</div>
</body>
</html>