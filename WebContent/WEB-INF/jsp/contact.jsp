<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		
			<!-- start end Page title -->
			<div class="page-title" style="background-image:url('<%=request.getContextPath()%>/images/hero-header/breadcrumb.jpg');">
				
				<div class="container">
				
					<div class="row">
					
						<div class="col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-3">
						
							<h1 class="hero-title">联系我们</h1>
							
						</div>
						
					</div>

				</div>
				
			</div>
			<!-- end Page title -->
			
			<div class="content-wrapper">
	
				<div class="container">
					
					<div class="row">

						<div class="col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3 pb-20">
							
							<div class="section-title">
							
								<h3>我们的服务网店遍布全球</h3>
								
								<p>金牌服务，造就未来！</p>
								
							</div>
							
						</div>
					
					</div>
					
				</div>
		
				<div class="bg-light section pt-40 pb-20">
				
					<div class="container">

						<div class="map-contact">
							
							<div class="top-place-inner">
							
								<div id="map_5_list" class="list row gap-0">
									
									<div class="col-sm-4">
										<div class="maplocation map-top-destination-item" 
											data-name="Dubai, UAE"  
											data-lat=" 25.276987"
											data-cat="place1"
											data-lng="55.2708">
											
											<div class="top-place-item mb-30 maplink">
												<div class="icon"><img src="images/map-marker/01.png" alt="map" /></div>
												<div class="content">
													<h5 class="heading mt-0">我们在华农的办公室</h5>
													<ul class="address-list">
														<li><i class="fa fa-map-marker"></i> 华南农业大学华山学生公寓xx栋xx房</li>
														<li><i class="fa fa-phone"></i> + 971 4 436 4784</li>
														<li><i class="fa fa-envelope"></i> 4500123456@qq.com</li>
													</ul>
												</div>
											</div>
											<div class="infobox">
												<div class="infobox-inner">
													<div class="image">
														<img src="images/contact/dubai.jpg" alt="Images" />
													</div>
													<div class="content">
														<h6 class="heading">我们在华农的办公室</h6>
														<ul class="address-list">
														<li><i class="fa fa-map-marker"></i> 华南农业大学华山学生公寓xx栋xx房</li>
															<li><i class="fa fa-phone"></i> + 971 4 436 4784</li>
															<li><i class="fa fa-envelope"></i> 4500123456@qq.com</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-sm-4">
										<div class="maplocation map-top-destination-item" 
											data-name="Koh Sire"  
											data-lat="1.290270"
											data-cat="place2"
											data-lng="103.851959">
											
											<div class="top-place-item mb-30 maplink">
												<div class="icon"><img src="images/map-marker/02.png" alt="map" /></div>
												<div class="content">
													<h5 class="heading mt-0">我们在清华大学的办公室</h5>
													<ul class="address-list">
														<li><i class="fa fa-map-marker"></i> 清华大学</li>
														<li><i class="fa fa-phone"></i> +65-6375-8560 </li>
														<li><i class="fa fa-envelope"></i> 4500123456@qq.com</li>
													</ul>
												</div>
											</div>
											<div class="infobox">
												<div class="infobox-inner">
													<div class="image">
														<img src="images/contact/singapore.jpg" alt="Images" />
													</div>
													<div class="content">
														<h6 class="heading">我们在清华大学的办公室</h6>
														<ul class="address-list">
															<li><i class="fa fa-map-marker"></i> 清华大学</li>
															<li><i class="fa fa-phone"></i> +65-6375-8560 </li>
															<li><i class="fa fa-envelope"></i> 4500123456@qq.com</li>
														</ul>
													</div>
												</div>
											</div>
										</div>	
									</div>
									
									<div class="col-sm-4">
										<div class="maplocation map-top-destination-item" 
											data-name="Berline, Germany"  
											data-lat="52.518623"
											data-cat="place3"
											data-lng="13.376198">
											
											<div class="top-place-item mb-30 maplink">
												<div class="icon"><img src="images/map-marker/03.png" alt="map" /></div>
												<div class="content">
													<h5 class="heading mt-0">中山大学</h5>
													<ul class="address-list">
														<li><i class="fa fa-map-marker"></i> 中山大学</li>
														<li><i class="fa fa-phone"></i> +49(30)26050</li>
														<li><i class="fa fa-envelope"></i> 4500123456@qq.com</li>
													</ul>
												</div>
											</div>
											<div class="infobox">
												<div class="infobox-inner">
													<div class="image">
														<img src="images/contact/berlin.jpg" alt="Images" />
													</div>
													<div class="content">
														<h6 class="heading">中山大学</h6>
														<ul class="address-list">
															<li><i class="fa fa-map-marker"></i> 中山大学</li>
															<li><i class="fa fa-phone"></i> +49(30)26050</li>
															<li><i class="fa fa-envelope"></i> 4500123456@qq.com</li>
														</ul>
													</div>
												</div>
											</div>
										</div>	
									</div>

								</div>
					
							</div>
							
						</div>
					
					</div>
					
				</div>
				
				<div class="section pt-60 pb-0">
				
					<div class="container">
					
						<div class="row">

							<div class="col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
								
								<div class="section-title">
								
									<h3>保持联系</h3>
									
								</div>
								
							</div>
						
						</div>
						
						<form class="contact-form-wrapper" data-toggle="validator">
						
							<div class="row">
							
								<div class="col-sm-4">

									<h5 class="heading mt-5">有什么意见或者建议，随时联系我们</h5>
									
									<div class="boxed-social mb-30-xs clearfix">
										
										<a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a>
										<a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a>
										<a href="#" data-toggle="tooltip" data-placement="top" title="Google Plus"><i class="fa fa-google-plus"></i></a>
										<a href="#" data-toggle="tooltip" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a>
									
									</div>
								
								</div>
								
								<div class="col-sm-8">
								
									<div class="row">
									
										<div class="col-sm-6">
										
											<div class="form-group">
												<label for="inputName">你的名字 <span class="font10 text-danger">(必填)</span></label>
												<input id="inputName" type="text" class="form-control" data-error="Your name is required" required>
												<div class="help-block with-errors"></div>
											</div>
											
											<div class="form-group">
												<label for="inputEmail">你的邮箱 <span class="font10 text-danger">(必填)</span></label>
												<input id="inputEmail" type="email" class="form-control" data-error="Your email is required and must be a valid email address" required>
												<div class="help-block with-errors"></div>
											</div>
											
											<div class="form-group">
												<label>主题</label>
												<input type="text" class="form-control" />
											</div>
										
										</div>
										
										<div class="col-sm-6">
										
											<div class="form-group">
												<label for="inputMessage">内容 <span class="font10 text-danger">(必填)</span></label>
												<textarea id="inputMessage" class="form-control" rows="9" data-minlength="50" data-error="Your message is required and must not less than 50 characters" required></textarea>
												<div class="help-block with-errors"></div>
											</div>
										
										</div>
										
										<div class="col-sm-12 text-right text-left-sm">
											<button type="submit" class="btn btn-primary mt-5">发送消息</button>
										</div>
										
									</div>

								</div>
							
							</div>
						
						</form>
						
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
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jqPaginator.min.js"></script>
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
<script>
$(function () {

	var mycolor = "#ff0066";
	var mycolor2 = "#966E7E";
	var mybg_color = "#F7F7F7";

	var cluster_styles = [{
			url: 'images/m3.png',
			height: 30,
			width: 30,
			opt_textSize: 14,
			anchor: [3, 0],
			textColor: '#222222'
	}, {
			url: 'images/m4.png',
			height: 40,
			width: 40,
			opt_textSize: 17,
			opt_anchor: [6, 0],
			opt_textColor: '#222222'
	}, {
			url: 'images/m5.png',
			width: 50,
			height: 50,
			opt_textSize: 21,
			opt_anchor: [8, 0],
			opt_textColor: '#222222'
	}, {
			url: 'images/m5.png',
			width: 50,
			height: 50,
			opt_textSize: 21,
			opt_anchor: [8, 0],
			opt_textColor: '#222222'
	}];

	var my_cat_style ={
		place1: { icon: '<%=request.getContextPath()%>/images/map-marker/01-marker.png'},
		place2: { icon: '<%=request.getContextPath()%>/images/map-marker/02-marker.png'},
		place3: { icon: '<%=request.getContextPath()%>/images/map-marker/03-marker.png'},
	};

});
</script>

</body>

</html>