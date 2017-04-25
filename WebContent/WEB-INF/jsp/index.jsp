<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<body style="overflow-x:hidden;">

	<div id="introLoader" class="introLoading"></div>
	<!-- start Container Wrapper -->
	<div class="container-wrapper">
		<%@ include file="/common-header.jsp" %>
		
		<!-- start Main Wrapper -->
		<div class="main-wrapper">
		
			<div class="flexslider-hero-slider">
				<div id="mainFlexSlider">
					<div class="flexslider">
						<ul class="slides">
							<li class="slide">
								<div class="flexslider-image-bg" style="background: url(<%=request.getContextPath()%>/images/hero-header/01.jpg) center center no-repeat; background-size:cover"></div>
							</li><!-- slide1 end -->

							<li class="slide">
								<div class="flexslider-image-bg" style="background: url(<%=request.getContextPath()%>/images/hero-header/02.jpg) center center no-repeat; background-size:cover"></div>
							</li><!-- slide2 end -->

							<li class="slide">
								<div class="flexslider-image-bg" style="background: url(<%=request.getContextPath()%>/images/hero-header/03.jpg) center center no-repeat; background-size:cover"></div>
							</li><!-- slide3 end -->

							<li class="slide">
								<div class="flexslider-image-bg" style="background: url(<%=request.getContextPath()%>/images/hero-header/04.jpg) center center no-repeat; background-size:cover"></div>
							</li><!-- slide4 end -->
							
							<li class="slide">
								<div class="flexslider-image-bg" style="background: url(<%=request.getContextPath()%>/images/hero-header/05.jpg) center center no-repeat; background-size:cover"></div>
							</li><!-- slide5 end -->
							
							
						</ul><!-- slides end -->

						<div class="flexslider-overlay"></div>
						
					</div><!-- flexslider end -->
				</div>
				
				<div class="main-search-holder">
						
					<div class="container">
	
						<div class="row">
					
							<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
							
								<h1 class="hero-title">旅游综合服务平台</h1>
								<p class="lead">想去哪，就去哪!</p>

							</div>
							
						</div>
						
						<div class="main-search-wrapper full-width">
							<div class="inner">
							
								<div class="column-item">
								
									<div class="form-group">
									
										<select id="type" class="form-control" data-placeholder="目的地">
											<option value="">选择搜索类型</option>
											<option value="tour">旅游</option>
											<option value="hotel">酒店</option>
											<option value="ticket">门票</option>
										</select>

									</div>
								
								</div>
								
								<div class="column-item" style="width:450px;">
								
									<div class="form-group">

										<input type="text" class="form-control" id="content" data-placeholder="搜索内容">
										
									</div>
								
								</div>
								
								<div class="column-item for-btn">
								
									<div class="form-group">
									
										<button id="search" class="btn btn-primary btn-block">搜索</button>
										
									</div>
								
								</div>
								
							</div>
							
						</div>

					</div>
				
				</div>
				
			</div>
			
			<div class="clear"></div>

		
			<div class="post-hero bg-light">
			
				<div class="container">
					
					<div class="row">
					
						<div class="col-sm-4">
							<div class="featured-count clearfix">
								<div class="icon"><i class="pe-7s-map-marker"></i></div>
								<div class="content">
									<h6>300+ 旅游景区</h6>
									<span>想去哪就去哪</span>
								</div>
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="featured-count clearfix">
								<div class="icon"> <i class="pe-7s-user"></i></div>
								<div class="content">
									<h6>500+ 旅游攻略</h6>
									<span>天下之大，尽在掌握</span>
								</div>
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="featured-count clearfix">
								<div class="icon"> <i class="pe-7s-smile"></i></div>
								<div class="content">
									<h6>20000+ 用户</h6>
									<span>驴友五湖四海</span>
								</div>
							</div>
						</div>
						
					</div>
					
				</div>
				
			</div>
			
			<section class="bg-light">
			
				<div class="container">
				
					<div class="row">
						
						<div class="col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							
							<div class="section-title">
							
								<h3>热门路线</h3>
								
							</div>
							
						</div>
					
					</div>
					
					<div class="GridLex-gap-30-wrappper package-grid-item-wrapper">
						
						<div class="GridLex-grid-noGutter-equalHeight">
						
							<c:forEach items="${showTourList}" var="tour">
								<div class="GridLex-col-4_sm-6_xs-12 mb-30">
									<div class="package-grid-item"> 
										<a href="<%=request.getContextPath()%>/tour/detail/${tour.id}">
											<div class="image">
												<img src="${fn:split(tour.picture,";")[0]}" />
												<div class="absolute-in-image">
													<div class="duration"><span>${fn:split(tour.during,",")[0]} 天 ${fn:split(tour.during,",")[1]} 夜</span></div>
												</div>
											</div>
											<div class="content clearfix">
												<h5>${tour.name }</h5>
												<div class="absolute-in-content">
													<span class="btn"><i class="fa fa-heart-o"></i></span>
													<div class="price">￥${tour.price }</div>
												</div>
											</div>
										</a>
									</div>
								</div>
							</c:forEach>
						</div>
					
					</div>
					
				</div>
				
			</section>
			
			<section class="bg-light">
			
				<div class="container">
				
					<div class="row">
						
						<div class="col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							
							<div class="section-title">
							
								<h3>优惠酒店</h3>
								
							</div>
							
						</div>
					
					</div>
					
					<div class="GridLex-gap-30-wrappper package-grid-item-wrapper">
						
						<div class="GridLex-grid-noGutter-equalHeight">
						
							<c:forEach items="${showHotelList}" var="hotel">
								<div class="GridLex-col-4_sm-6_xs-12 mb-30">
									<div class="package-grid-item"> 
										<a href="<%=request.getContextPath()%>/hotel/detail/${hotel.id}">
											<div class="image">
												<img src="${hotel.headerPicture}" />
											</div>
											<div class="content clearfix">
												<h5>${hotel.name }</h5>
												<div class="absolute-in-content">
													<span class="btn"><i class="fa fa-heart-o"></i></span>
													<div class="price">￥${hotel.price }</div>
												</div>
											</div>
										</a>
									</div>
								</div>
							</c:forEach>
						</div>
					
					</div>
					
				</div>
				
			</section>
			
			<section class="bg-light">
			
				<div class="container">
				
					<div class="row">
						
						<div class="col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							
							<div class="section-title">
							
								<h3>优美景点</h3>
								
							</div>
							
						</div>
					
					</div>
					
					<div class="GridLex-gap-30-wrappper package-grid-item-wrapper">
						
						<div class="GridLex-grid-noGutter-equalHeight">
						
							<c:forEach items="${showTicketList}" var="ticket">
								<div class="GridLex-col-4_sm-6_xs-12 mb-30">
									<div class="package-grid-item"> 
										<a href="<%=request.getContextPath()%>/ticket/detail/${ticket.id}">
											<div class="image">
												<img src="${ticket.headerPicture}" />
											</div>
											<div class="content clearfix">
												<h5>${ticket.name }</h5>
												<div class="absolute-in-content">
													<span class="btn"><i class="fa fa-heart-o"></i></span>
													<div class="price">￥${ticket.price }</div>
												</div>
											</div>
										</a>
									</div>
								</div>
							</c:forEach>
						</div>
					
					</div>
					
				</div>
				
			</section>
			
			<section class="overflow-hidden why-us-half-image-wrapper">
			
				<div class="GridLex-grid-noGutter-equalHeight">
						
					<div class="GridLex-col-6_sm-12">
						
						<div class="why-us-half-image-content">
						
							<div class="section-title text-left">
							
								<h3>为什么选择我们</h3>
								
							</div>
							
							<div class="featured-item">
							
								<h4>我们是旅行专家</h4>
								
								<div class="content clearfix">
								
									<div class="icon">
										<i class="pe-7s-users"></i>
									</div>
									
									<p>本网站提供国内外特价机票，酒店，旅游度假，景点门票产品一站式预订服务，更有驴友分享旅行日志，为您出行提供全方位攻略指南。</p>
									
								</div>
							</div>
							
							<div class="featured-item">
							
								<h4>我们提供品质住宿</h4>
								
								<div class="content clearfix">
								
									<div class="icon">
										<i class="pe-7s-home"></i>
									</div>
									
									<p>本网站提供预订的酒店，民宿多达468000家，覆盖全球大部分地区，酒店品质均可得到保证。</p>
									
								</div>
							</div>
							
							
							<div class="featured-item">
							
								<h4>我们提供便捷交通</h4>
								
								<div class="content clearfix">
								
									<div class="icon">
										<i class="pe-7s-car"></i>
									</div>
									
									<p>本网站有125000条航线可供选择，只需轻轻一点，即可打开通往新世界的大门。</p>
									
								</div>
							</div>
							
						</div>
						
					</div>
					
					<div class="GridLex-col-6_sm-12 image-bg">
						<div class="image-bg" style="background-image:url('images/image-01.jpg');"></div>
					</div>
				
				</div>
				
			</section>
			
			<section class="bg-light">
			
				<div class="container">
				
					<div class="row">
						
						<div class="col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							
							<div class="section-title">
							
								<h3>留言墙</h3>
								<p>用户对我们的评价</p>
							</div>
							
						</div>
					
					</div>
					
					<div class="testimonial-wrapper">
					
						<div class="row">
							
							<div class="col-xs-12 col-sm-12 col-md-6">
								<div class="testimonial-item clearfix">
									<div class="image">
										<img src="images/man/01.jpg" alt="Man" />
									</div>
									<div class="content">
										<h4>张三</h4>
										<h6>来自北京</h6>
										<p>今年10月在麦味预订的去往峨眉山三天两夜游玩，价格非常实惠，全家老小都玩得非常开心，导游也十分尽职尽责。</p>
									</div>
								</div>
							</div>
							
							<div class="col-xs-12 col-sm-12 col-md-6">
								<div class="testimonial-item clearfix">
									<div class="image">
										<img src="images/man/02.jpg" alt="Man" />
									</div>
									<div class="content">
										<h4>李四</h4>
										<h6>来自上海</h6>
										<p>在麦味上预订的酒店价格比门店价格低20%~30%左右，无论是出差办事还是自驾游玩，我都喜欢在麦味上订酒店。</p>
									</div>
								</div>
							</div>
							
						</div>
						
					</div>
					
				</div>
				
			</section>
			
			
			<div class="overflow-hidden">
			
				<div class="instagram-wrapper">
					<div id="instagram" class="instagram"></div>
				</div>
				
			</div>
			
		</div>
		<!-- end Main Wrapper -->
		<%@ include file="/common-footer.jsp" %>
	</div>  <!-- end Container Wrapper -->
 

 
	<!-- start Back To Top -->
	<div id="back-to-top">
		 <a href="<%=request.getContextPath()%>/#"><i class="fa fa-angle-up"></i></a>
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

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.flexslider-min.js"></script> 
<script>
$("#search").click(function(){
	if($("#type").val()==""){
		alert("请选择一个类型");
		return false;
	}
	if($("#content").val()==""){
		alert("请输入搜索内容");
		return false;
	}
	if($("#type").val()=="tour"){
		window.location.href="<%=request.getContextPath()%>/tour/result/grid?name="+$("#content").val();
	}
	if($("#type").val()=="hotel"){
		window.location.href="<%=request.getContextPath()%>/hotel/result/grid?name="+$("#content").val();
	}
	if($("#type").val()=="ticket"){
		window.location.href="<%=request.getContextPath()%>/ticket/result/grid?name="+$("#content").val();
	}
});
$(document).ready(function(){

	$('#mainFlexSlider').flexslider(
		{
			animation: 'fade',
			slideshow: true,
			pauseOnHover: false,  
			controlNav: false,
			directionNav: false,
			slideshowSpeed: 4000, 
		}
	);
});

</script> 

</body>
</html>