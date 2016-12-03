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
		<c:if test="${formatErrors!=null}">
			<c:forEach items="${formatErrors}" var="error">
				${error.defaultMessage }
			</c:forEach>
		</c:if>
		<c:if test="${existError!=null}">
			${existError.message }
		</c:if>
		<form action="<%=request.getContextPath()%>/user/register" method="post">
			<div class="row1">
				<h1>REGISTER</h1>
					<input type="text" name="userName" value="USERNAME" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'USERNAME';}">
					<input type="text" name="email" value="EMAIL" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'EMAIL';}">
					<input type="password" name="password" value="PASSWORD" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'PASSWORD';}">
			</div>
			<div class="row2">
				<input type="submit" value="Confirm" >
			</div>
		</form>
	</div>
	<div class="footer">
		<p>Copyright © 2016 Myway. All Rights Reserved</p>
	</div>
</body>
</html>