<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>麦味</title>
	<meta name="description" content="HTML Responsive Template for Tour Agency or Company Based on Twitter Bootstrap 3.x.x" />
	<meta name="keywords" content="tour package, holiday, hotel, vocation, booking, trip, travel, tourism, tourist" />
	<meta name="author" content="crenoveative">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<!-- Fav and Touch Icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=request.getContextPath()%>/images/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=request.getContextPath()%>/images/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=request.getContextPath()%>/images/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/images/ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/images/ico/favicon.png">

	<!-- CSS Plugins -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" media="screen">	
	<link href="<%=request.getContextPath()%>/css/animate.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/css/main.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/css/component.css" rel="stylesheet">
	
	<!-- CSS Font Icons -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/icons/ionicons/css/ionicons.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/icons/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/icons/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/icons/simple-line-icons/css/simple-line-icons.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/icons/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/icons/rivolicons/style.css">

	<!-- CSS Custom -->
	<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
</head>

<body class="">
	
	<!-- start Container Wrapper -->
	<div class="container-wrapper">
		
		<%@ include file="/common-header.jsp" %>
		
		<!-- start Main Wrapper -->
		<div class="main-wrapper">
			
			<div class="breadcrumb-wrapper bg-light-2">
				
				<div class="container">
				
					<ol class="breadcrumb-list booking-step">
						<li><span>详情</span></li>
						<li><span>付款</span></li>
						<li><span>确认</span></li>
					</ol>
					
				</div>
				
			</div>
			
			<div class="content-wrapper">
			
				<div class="container">
			
					<div class="row">
					
						<div class="col-sm-8 col-md-9">
	
							<div class="confirmation-wrapper">
							
								<div class="payment-success">
								
									<div class="icon">
										<i class="pe-7s-check text-success"></i>
									</div>
								
									<div class="content">
										
										<h2 class="heading uppercase mt-0 text-success">您的酒店已成功预订</h2>
										<p>您的订单编号为 <span class="text-primary font700">${hotelOrder.id }</span></p>
									
									</div>
									
								</div>
							
								<div class="confirmation-content">
								
									<div class="section-title text-left">
										<h4>订单详情</h4>
									</div>
								
									<ul class="book-sum-list">
										<li><span class="font600">订单编号: </span>${hotelOrder.id }</li>
										<li><span class="font600">预订日期: </span><fmt:formatDate value="${hotelOrder.date }"  pattern="yyyy-MM-dd"/></li>
										<li><span class="font600">房间数: </span>${hotelOrder.room }</li>
										<li><span class="font600">总价格: </span>￥${hotelOrder.price }</li>
										<li><span class="font600">联系电话: </span>${hotelOrder.memberPhone } </li>
									</ul>
									
								</div>
								
								
								<a href="<%=request.getContextPath()%>/mockPay/show/hotel/${hotelOrder.id }" class="btn btn-primary" target="_blank">马上支付</a>
							
							</div>
							
						</div>

						<div class="col-sm-4 col-md-3 mt-50-xs">

							<aside class="sidebar with-filter">
							
								<div class="sidebar-inner">
								
									<div class="sidebar-module">
										<h4 class="heading mt-0">需要帮助?</h4>
										<div class="sidebar-module-inner">
											<p class="mb-10">随时联系我们</p>
											<ul class="help-list">
												<li><span class="font600">客服电话</span>: 18813712345</li>
												<li><span class="font600">客服邮箱</span>: 123456@qq.com</li>
												<li><span class="font600">客服QQ</span>: 123456</li>
											</ul>
										</div>
									</div>
									
								</div>
								
							</aside>

						</div>

					</div>
				
				</div>
					
			</div>

		</div>
		<!-- end Main Wrapper -->

		<%@ include file="/common-footer.jsp" %>

	</div>  <!-- end Container Wrapper -->
 

 
<!-- start Back To Top -->
<div id="back-to-top">
   <a href="#"><i class="fa fa-angle-up"></i></a>
</div>
<!-- end Back To Top -->



<!-- JS -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.waypoints.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/SmoothScroll.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.slicknav.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.placeholder.min.js"></script>
<!--<script type="text/javascript" src="js/instagram.min.js"></script>-->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/spin.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.introLoader.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/select2.full.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.responsivegrid.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/ion.rangeSlider.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/readmore.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/slick.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/validator.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.raty.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/js/customs.js"></script>

</body>

</html>