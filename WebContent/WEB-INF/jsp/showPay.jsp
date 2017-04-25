<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>收银台</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="<%=request.getContextPath()%>/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/css/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<%=request.getContextPath()%>/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#" style="font-size:20px">收银台</a>
	    </div>
	  </div>
	</nav>
    <div class="container-fluid">
      <div class="row">
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		  <c:if test="${flag }">
	          <h2 class="sub-header">正在支付订单编号为${oId }的${typeName }订单,订单总金额为${price }元</h2>
	          <h3>订单类型：${typeName }</h3>
	          <h3>订单金额：${price }元</h3>
	          <h3>预订人：${user.userName }</h3>
	          <form class="form-horizontal" role="form" id="form" action="<%=request.getContextPath()%>/mockPay/confirm/${type}/${oId}" method="post">
				  
				  <div class="form-group">
				    <label for="account" class="col-sm-2 control-label" style="font-size:20px;text-align:left">支付账户</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control" id="account" name="account">
				    </div>
				  </div>
		          
		          <div class="form-group">
				    <label for="password" class="col-sm-2 control-label" style="font-size:20px;text-align:left">支付密码</label>
				    <div class="col-sm-8">
				      <input type="password" class="form-control" id="password" name="password">
				    </div>
				  </div>
			 </form>
			 
			<div class="btn-group" role="group" aria-label="...">
				<button type="button" onclick="$('#form').submit();" class="btn btn-info" style="font-size:20px">支付</button>
			</div>
		  </c:if>
			
		  <c:if test="${!flag }">
            <h2 class="sub-header">${reason }</h2>
			<div class="btn-group" role="group" aria-label="...">
				<button type="button" onclick="window.location='<%=request.getContextPath()%>/index'" class="btn btn-info">返回主页</button>
			</div>
		  </c:if>
		 
			
		  
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="<%=request.getContextPath()%>/assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="<%=request.getContextPath()%>/dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="<%=request.getContextPath()%>/assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<%=request.getContextPath()%>/assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
