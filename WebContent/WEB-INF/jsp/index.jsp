<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="images/ico/favicon.png">

	<!-- CSS Plugins -->
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">	
	<link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/component.css" rel="stylesheet">
	
	<!-- CSS Font Icons -->
	<!-- CSS Font Icons -->
	<link rel="stylesheet" href="icons/ionicons/css/ionicons.css">
	<link rel="stylesheet" href="icons/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="icons/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
	<link rel="stylesheet" href="icons/simple-line-icons/css/simple-line-icons.css">
	<link rel="stylesheet" href="icons/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="icons/rivolicons/style.css">

	<!-- CSS Custom -->
	<link href="css/style.css" rel="stylesheet">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
</head>

<body style="overflow-x:hidden;">

	<div id="introLoader" class="introLoading"></div>
	
	<!-- BEGIN # MODAL LOGIN -->
	<div class="modal fade modal-login modal-border-transparent" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				
				<button type="button" class="btn btn-close close" data-dismiss="modal" aria-label="Close">
					<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				</button>
				
				<div class="clear"></div>
				
				<!-- Begin # DIV Form -->
				<div id="modal-login-form-wrapper">
					
					<!-- Begin # Login Form -->
					<form id="login-form">
					
						<div class="modal-body pb-5">
					
							<h4 class="text-center heading mt-10 mb-20">登录</h4>
						
							<button class="btn btn-facebook btn-block">微信登录</button>
							
							<div class="modal-seperator">
								<span>or</span>
							</div>
							
							<div class="form-group"> 
								<input id="login_username" class="form-control" placeholder="用户名" type="text"> 
							</div>
							<div class="form-group"> 
								<input id="login_password" class="form-control" placeholder="密码" type="password"> 
							</div>
			
							<div class="form-group">
								<div class="row gap-5">
									<div class="col-xs-6 col-sm-6 col-md-6">
										<div class="checkbox-block fa-checkbox"> 
											<input id="remember_me_checkbox" name="remember_me_checkbox" class="checkbox" value="First Choice" type="checkbox"> 
											<label class="" for="remember_me_checkbox">记住密码</label>
										</div>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6 text-right"> 
										<button id="login_lost_btn" type="button" class="btn btn-link">忘记密码?</button>
									</div>
								</div>
							</div>
						
						</div>
						
						<div class="modal-footer">
						
							<div class="row gap-10">
								<div class="col-xs-6 col-sm-6 mb-10">
									<button type="submit" class="btn btn-primary btn-block">登录</button>
								</div>
								<div class="col-xs-6 col-sm-6 mb-10">
									<button type="submit" class="btn btn-primary btn-block btn-inverse" data-dismiss="modal" aria-label="Close">取消</button>
								</div>
							</div>
							<div class="text-left">
								No account? 
								<button id="login_register_btn" type="button" class="btn btn-link">注册</button>
							</div>
							
						</div>
					</form>
					<!-- End # Login Form -->
								
					<!-- Begin | Lost Password Form -->
					<form id="lost-form" style="display:none;">
						<div class="modal-body pb-5">
						
							<h3 class="text-center heading mt-10 mb-20">Forgot password</h3>
							<div class="form-group mb-10"> 
								<input id="lost_email" class="form-control" type="text" placeholder="Enter Your Email">
							</div>
							
							<div class="text-center">
								<button id="lost_login_btn" type="button" class="btn btn-link">Sign-in</button> or 
								<button id="lost_register_btn" type="button" class="btn btn-link">Register</button>
							</div>
							
						</div>
						
						<div class="modal-footer mt-10">
							
							<div class="row gap-10">
								<div class="col-xs-6 col-sm-6">
									<button type="submit" class="btn btn-primary btn-block">Submit</button>
								</div>
								<div class="col-xs-6 col-sm-6">
									<button type="submit" class="btn btn-primary btn-inverse btn-block" data-dismiss="modal" aria-label="Close">Cancel</button>
								</div>
							</div>
							
						</div>
						
					</form>
					<!-- End | Lost Password Form -->
								
					<!-- Begin | Register Form -->
					<form id="register-form" style="display:none;">
					
						<div class="modal-body pb-5">
						
							<h3 class="text-center heading mt-10 mb-20">Register</h3>
							
							<button class="btn btn-facebook btn-block">Register with Facebook</button>
							
							<div class="modal-seperator">
								<span>or</span>
							</div>
							
							<div class="form-group"> 
								<input id="register_username" class="form-control" type="text" placeholder="Username"> 
							</div>
							
							<div class="form-group"> 
								<input id="register_email" class="form-control" type="email" placeholder="Email">
							</div>
							
							<div class="form-group"> 
								<input id="register_password" class="form-control" type="password" placeholder="Password">
							</div>
							
							<div class="form-group"> 
								<input id="register_password_confirm" class="form-control" type="password" placeholder="Confirm Password">
							</div>

						</div>
							
						<div class="modal-footer mt-10">
						
							<div class="row gap-10">
								<div class="col-xs-6 col-sm-6 mb-10">
									<button type="submit" class="btn btn-primary btn-block">Register</button>
								</div>
								<div class="col-xs-6 col-sm-6 mb-10">
									<button type="submit" class="btn btn-primary btn-inverse btn-block" data-dismiss="modal" aria-label="Close">Cancel</button>
								</div>
							</div>
							
							<div class="text-left">
									Already have account? <button id="register_login_btn" type="button" class="btn btn-link">Sign-in</button>
							</div>
							
						</div>
							
					</form>
					<!-- End | Register Form -->
								
				</div>
				<!-- End # DIV Form -->
								
			</div>
		</div>
	</div>
	<!-- END # MODAL LOGIN -->
	
	<!-- start Container Wrapper -->
	<div class="container-wrapper">

<!-- 		<header id="header">
	  
			start Navbar (Header)
			<nav class="navbar navbar-primary navbar-fixed-top navbar-sticky-function">

				<div class="navbar-top">
				
					<div class="container">
						
						<div class="flex-row flex-align-middle">
							<div class="flex-shrink flex-columns">
								<a class="navbar-logo" href="index.html">
									<img src="images/logo-white.png" alt="Logo" />
								</a>
							</div>
							<div class="flex-columns">
								<div class="pull-right">
								
									<div class="navbar-mini">
										<ul class="clearfix">

											<li class="user-action">
												<a data-toggle="modal" href="#loginModal" class="btn">登录/注册</a>
											</li>

										</ul>
									</div>
						
								</div>
							</div>
						</div>

					</div>
					
				</div>
				
				<div class="navbar-bottom hidden-sm hidden-xs">
				
					<div class="container">
					
						<div class="row">
						
							<div class="col-sm-9">
								
								<div id="navbar" class="collapse navbar-collapse navbar-arrow">
									<ul class="nav navbar-nav" id="responsive-menu">
										<li><a href="index.html">主页</a>
										</li>
										<li><a href="result-grid.html">度假</a>
											<ul>
												<li><a href="result-list.html">Result - List</a></li>
												<li><a href="result-grid.html">Result - Grid</a></li>
												<li><a href="detail-page.html">Detail Page</a></li>
											</ul>
										</li>
										<li><a href="#">酒店</a>
										</li>
										<li><a href="#">交通出行</a>
										</li>
										<li><a href="#">驴友日记</a>
										</li>
										<li><a href="#">门票</a>
										</li>
										<li><a href="#">路况天气</a>
										</li>
										<li><a href="#">周边推荐</a>
										</li>
										<li><a href="#">个人中心</a>
										</li>
										<li><a href="#">联系我们</a></li>
										<li><a href="#">关于我们</a></li>
									</ul>
								</div>/.nav-collapse
								
							</div>
							
							<div class="col-sm-3">
							
								<div class="navbar-phone"><i class="fa fa-phone"></i> 联系我们: +66 28 878 5452</div>
							
							</div>

						</div>
						
					</div>
				
				</div>

				<div id="slicknav-mobile"></div>
				
			</nav>
			end Navbar (Header)

		</header>
		
		<div class="clear"></div> -->
		<%@ include file="/common-header.jsp" %>
		
		<!-- start Main Wrapper -->
		<div class="main-wrapper">
		
			<div class="flexslider-hero-slider">
				<div id="mainFlexSlider">
					<div class="flexslider">
						<ul class="slides">
							<li class="slide">
								<div class="flexslider-image-bg" style="background: url(images/hero-header/01.jpg) center center no-repeat; background-size:cover"></div>
							</li><!-- slide1 end -->

							<li class="slide">
								<div class="flexslider-image-bg" style="background: url(images/hero-header/02.jpg) center center no-repeat; background-size:cover"></div>
							</li><!-- slide2 end -->

							<li class="slide">
								<div class="flexslider-image-bg" style="background: url(images/hero-header/03.jpg) center center no-repeat; background-size:cover"></div>
							</li><!-- slide3 end -->

							<li class="slide">
								<div class="flexslider-image-bg" style="background: url(images/hero-header/04.jpg) center center no-repeat; background-size:cover"></div>
							</li><!-- slide4 end -->
							
							<li class="slide">
								<div class="flexslider-image-bg" style="background: url(images/hero-header/05.jpg) center center no-repeat; background-size:cover"></div>
							</li><!-- slide5 end -->
							
							
						</ul><!-- slides end -->

						<div class="flexslider-overlay"></div>
						
					</div><!-- flexslider end -->
				</div>
				
				<div class="main-search-holder">
						
					<div class="container">
	
						<div class="row">
					
							<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
							
								<h1 class="hero-title">My way</h1>
								<p class="lead">Go where you wanna go!</p>

							</div>
							
						</div>
						
						<div class="main-search-wrapper full-width">
						
							<div class="inner">
							
								<div class="column-item">
								
									<div class="form-group">
									
										<select name="destination" class="select2-multi form-control" data-placeholder="目的地" multiple>
											<option value="">Choose a Destination</option>
											<option value="0">Any Destination</option>
											<option value="Albania">Albania</option>
											<option value="Austria">Austria</option>
											<option value="Belgium">Belgium</option>
											<option value="Bosnia">Bosnia</option>
											<option value="Croatia">Croatia</option>
											<option value="Czech Republic">Czech Republic</option>
											<option value="Denmark">Denmark</option>
											<option value="Egypt">Egypt</option>
											<option value="England">England</option>
											<option value="Estonia">Estonia</option>
											<option value="Finland">Finland</option>
											<option value="France">France</option>
											<option value="Germany">Germany</option>
											<option value="Greece">Greece</option>
											<option value="Herzegovina">Herzegovina</option>
											<option value="Hungary">Hungary</option>
											<option value="Ireland">Ireland</option>
											<option value="Italy">Italy</option>
											<option value="Latvia">Latvia</option>
											<option value="Liechtenstein">Liechtenstein</option>
											<option value="Lithuania">Lithuania</option>
											<option value="Luxembourg">Luxembourg</option>
											<option value="Monaco">Monaco</option>
											<option value="Montenegro">Montenegro</option>
											<option value="Netherlands">Netherlands</option>
											<option value="Northern Ireland">Northern Ireland</option>
											<option value="Poland">Poland</option>
											<option value="Portugal">Portugal</option>
											<option value="Russia">Russia</option>
											<option value="Scotland">Scotland</option>
											<option value="Serbia">Serbia</option>
											<option value="Slovakia">Slovakia</option>
											<option value="Slovenia">Slovenia</option>
											<option value="Spain">Spain</option>
											<option value="Sweden">Sweden</option>
											<option value="Switzerland">Switzerland</option>
											<option value="Turkey">Turkey</option>
											<option value="Vatican City">Vatican City</option>
											<option value="Wales">Wales</option>
										</select>

									</div>
								
								</div>
								
								<div class="column-item">
								
									<div class="form-group">
									
										<select name="month" class="select2-multi form-control" data-placeholder="出发月份" multiple>
											<option value="">Choose a Departure Month</option>
											<option value="0">Any Departure Month</option>
											<option value="1">January</option>
											<option value="2">February</option>
											<option value="3">March</option>
											<option value="4">April</option>
											<option value="5">May</option>
											<option value="6">June</option>
											<option value="7">July</option>
											<option value="8">August</option>
											<option value="9">September</option>
											<option value="10">October</option>
											<option value="11">November</option>
											<option value="12">December</option>
										</select>
										
									</div>
								
								</div>
								
								<div class="column-item">
								
									<div class="form-group">

										<select name="year" class="select2-multi form-control" data-placeholder="出发年份" multiple>
											<option value="">Choose a Departure Year</option>
											<option value="0">Any Departure Year</option>
											<option value="2016">2016</option>
											<option value="2017">2017</option>
										</select>
										
									</div>
								
								</div>
								
								<div class="column-item for-btn">
								
									<div class="form-group">
									
										<a href="#" class="btn btn-primary btn-block">Search</a>
										
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
									<span>旅游五湖四海</span>
								</div>
							</div>
						</div>
						
					</div>
					
				</div>
				
			</div>

			<section>
			
				<div class="container">
				
					<div class="row">
						
						<div class="col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							
							<div class="section-title">
							
								<h3>热门路线</h3>
								
							</div>
							
						</div>
					
					</div>
					
					<div class="grid destination-grid-wrapper">
			
						<div class="grid-item" data-colspan="10" data-rowspan="10">
							<a href="result-grid.html" class="top-destination-image-bg" style="background-image:url('images/index/01.jpg');">
								<div class="relative">
									<h4>昆明</h4>
									<span>1500元以上</span>
								</div>
							</a>
						</div>
						
						<div class="grid-item" data-colspan="10" data-rowspan="4">
							<a href="result-grid.html" class="top-destination-image-bg" style="background-image:url('images/destination-grid/02.jpg');">
								<div class="relative">
									<h4>Croatia</h4>
									<span>Starting from $322</span>
								</div>
							</a>
						</div>
						
						<div class="grid-item" data-colspan="5" data-rowspan="6">
							<a href="result-grid.html" class="top-destination-image-bg" style="background-image:url('images/destination-grid/03.jpg');">
								<div class="relative">
									<h4>USA</h4>
									<span>Starting from $322</span>
								</div>
							</a>
						</div>
						
						<div class="grid-item" data-colspan="5" data-rowspan="6">
							<a href="result-grid.html" class="top-destination-image-bg" style="background-image:url('images/destination-grid/04.jpg');">
								<div class="relative">
									<h4>Emirates</h4>
									<span>Starting from $322</span>
								</div>
							</a>
						</div>
						
					</div>
					
				</div>
				
			</section>
			
			<section class="bg-light">
			
				<div class="container">
				
					<div class="row">
						
						<div class="col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							
							<div class="section-title">
							
								<h3>特惠门票</h3>
								
							</div>
							
						</div>
					
					</div>
					
					<div class="GridLex-gap-30-wrappper package-grid-item-wrapper">
						
						<div class="GridLex-grid-noGutter-equalHeight">
						
							<div class="GridLex-col-4_sm-6_xs-12 mb-30">
								<div class="package-grid-item"> 
									<a href="detail-page.html">
										<div class="image">
											<img src="images/tour-package/01.jpg" alt="Tour Package" />
											<div class="absolute-in-image">
												<div class="duration"><span>4 days 3 nights</span></div>
											</div>
										</div>
										<div class="content clearfix">
											<h5>Paris in Love</h5>
											<div class="rating-wrapper">
												<div class="raty-wrapper">
													<div class="star-rating-read-only" data-rating-score="4.0"></div> <span> / 7 review</span>
												</div>
											</div>
											<div class="absolute-in-content">
												<span class="btn"><i class="fa fa-heart-o"></i></span>
												<div class="price">$1422</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							
							<div class="GridLex-col-4_sm-6_xs-12 mb-30">
								<div class="package-grid-item"> 
									<a href="detail-page.html">
										<div class="image">
											<img src="images/tour-package/02.jpg" alt="Tour Package" />
											<div class="absolute-in-image">
												<div class="duration"><span>4 days 3 nights</span></div>
											</div>
										</div>
										<div class="content clearfix">
											<h5>Classic Europe</h5>
											<div class="rating-wrapper">
												<div class="raty-wrapper">
													<div class="star-rating-read-only" data-rating-score="3.5"></div> <span> / 7 review</span>
												</div>
											</div>
											<div class="absolute-in-content">
												<span class="btn"><i class="fa fa-heart-o"></i></span>
												<div class="price">$1422</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							
							<div class="GridLex-col-4_sm-6_xs-12 mb-30">
								<div class="package-grid-item"> 
									<a href="detail-page.html">
										<div class="image">
											<img src="images/tour-package/03.jpg" alt="Tour Package" />
											<div class="absolute-in-image">
												<div class="duration"><span>4 days 3 nights</span></div>
											</div>
										</div>
										<div class="content clearfix">
											<h5>Best of Egypt</h5>
											<div class="rating-wrapper">
												<div class="raty-wrapper">
													<div class="star-rating-read-only" data-rating-score="4.5"></div> <span> / 7 review</span>
												</div>
											</div>
											<div class="absolute-in-content">
												<span class="btn"><i class="fa fa-heart-o"></i></span>
												<div class="price">$1422</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							
							<div class="GridLex-col-4_sm-6_xs-12 mb-30">
								<div class="package-grid-item"> 
									<a href="detail-page.html">
										<div class="image">
											<img src="images/tour-package/04.jpg" alt="Tour Package" />
											<div class="absolute-in-image">
												<div class="duration"><span>4 days 3 nights</span></div>
											</div>
										</div>
										<div class="content clearfix">
											<h5>Adriatic Coastal Explorer</h5>
											<div class="rating-wrapper">
												<div class="raty-wrapper">
													<div class="star-rating-read-only" data-rating-score="5.0"></div> <span> / 7 review</span>
												</div>
											</div>
											<div class="absolute-in-content">
												<span class="btn"><i class="fa fa-heart-o"></i></span>
												<div class="price">$1422</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							
							<div class="GridLex-col-4_sm-6_xs-12 mb-30">
								<div class="package-grid-item"> 
									<a href="detail-page.html">
										<div class="image">
											<img src="images/tour-package/05.jpg" alt="Tour Package" />
											<div class="absolute-in-image">
												<div class="duration"><span>4 days 3 nights</span></div>
											</div>
										</div>
										<div class="content clearfix">
											<h5>Athens, Mykonos &amp; Santorini</h5>
											<div class="rating-wrapper">
												<div class="raty-wrapper">
													<div class="star-rating-read-only" data-rating-score="4.5"></div> <span> / 7 review</span>
												</div>
											</div>
											<div class="absolute-in-content">
												<span class="btn"><i class="fa fa-heart-o"></i></span>
												<div class="price">$1422</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							
							<div class="GridLex-col-4_sm-6_xs-12 mb-30">
								<div class="package-grid-item"> 
									<a href="detail-page.html">
										<div class="image">
											<img src="images/tour-package/06.jpg" alt="Tour Package" />
											<div class="absolute-in-image">
												<div class="duration"><span>4 days 3 nights</span></div>
											</div>
										</div>
										<div class="content clearfix">
											<h5>Honeymoon Time in Maldives</h5>
											<div class="rating-wrapper">
												<div class="raty-wrapper">
													<div class="star-rating-read-only" data-rating-score="4.5"></div> <span> / 7 review</span>
												</div>
											</div>
											<div class="absolute-in-content">
												<span class="btn"><i class="fa fa-heart-o"></i></span>
												<div class="price">$1422</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							
							<div class="GridLex-col-4_sm-6_xs-12 mb-30">
								<div class="package-grid-item"> 
									<a href="detail-page.html">
										<div class="image">
											<img src="images/tour-package/07.jpg" alt="Tour Package" />
											<div class="absolute-in-image">
												<div class="duration"><span>4 days 3 nights</span></div>
											</div>
										</div>
										<div class="content clearfix">
											<h5>Scandinavia Attractions</h5>
											<div class="rating-wrapper">
												<div class="raty-wrapper">
													<div class="star-rating-read-only" data-rating-score="5.0"></div> <span> / 7 review</span>
												</div>
											</div>
											<div class="absolute-in-content">
												<span class="btn"><i class="fa fa-heart-o"></i></span>
												<div class="price">$1422</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							
							<div class="GridLex-col-4_sm-6_xs-12 mb-30">
								<div class="package-grid-item"> 
									<a href="detail-page.html">
										<div class="image">
											<img src="images/tour-package/08.jpg" alt="Tour Package" />
											<div class="absolute-in-image">
												<div class="duration"><span>4 days 3 nights</span></div>
											</div>
										</div>
										<div class="content clearfix">
											<h5>Monaco in Love</h5>
											<div class="rating-wrapper">
												<div class="raty-wrapper">
													<div class="star-rating-read-only" data-rating-score="4.0"></div> <span> / 7 review</span>
												</div>
											</div>
											<div class="absolute-in-content">
												<span class="btn"><i class="fa fa-heart-o"></i></span>
												<div class="price">$1422</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							
							<div class="GridLex-col-4_sm-6_xs-12 mb-30">
								<div class="package-grid-item"> 
									<a href="detail-page.html">
										<div class="image">
											<img src="images/tour-package/09.jpg" alt="Tour Package" />
											<div class="absolute-in-image">
												<div class="duration"><span>4 days 3 nights</span></div>
											</div>
										</div>
										<div class="content clearfix">
											<h5>Highlights of Italy</h5>
											<div class="rating-wrapper">
												<div class="raty-wrapper">
													<div class="star-rating-read-only" data-rating-score="4.5"></div> <span> / 7 review</span>
												</div>
											</div>
											<div class="absolute-in-content">
												<span class="btn"><i class="fa fa-heart-o"></i></span>
												<div class="price">$1422</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							
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
								<p>我们是旅行专家</p>
								
							</div>
							
							<div class="featured-item">
							
								<h4>Experts On Tour</h4>
								
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

		<footer class="footer">
			
			<div class="container">
			
				<div class="main-footer">
				
					<div class="row">
				
						<div class="col-xs-12 col-sm-5 col-md-3">
						
							<div class="footer-logo">
								<img src="images/logo-white.png" alt="Logo" />
							</div>
							
							<p class="footer-address">324 Yarang Road, T.Chabangtigo, Muanng Pattani 9400 <br/> <i class="fa fa-phone"></i> +66 28 878 5452 <br/> <i class="fa fa-phone"></i> +66 2 547 2223 <br/> <i class="fa fa-envelope-o"></i> <a href="#">support@tourpacker.com</a></p>
							
							<div class="footer-social">
							
								<a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a>
								<a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a>
								<a href="#" data-toggle="tooltip" data-placement="top" title="Google Plus"><i class="fa fa-google-plus"></i></a>
								<a href="#" data-toggle="tooltip" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a>
							
							</div>
							
							<p class="copy-right">&#169; Copyright 2016 Tour Packer. All Rights Reserved</p>
							
						</div>
						
						<div class="col-xs-12 col-sm-7 col-md-9">

							<div class="row gap-10">
							
								<div class="col-xs-12 col-sm-4 col-md-3 col-md-offset-3 mt-30-xs">
								
									<h5 class="footer-title">About Tour Packer</h5>
									
									<ul class="footer-menu">
									
										<li><a href="static-page.html">Who we are</a></li>
										<li><a href="static-page.html">Careers</a></li>
										<li><a href="static-page.html">Company history</a></li>
										<li><a href="static-page.html">Legal</a></li>
										<li><a href="static-page.html">Partners</a></li>
										<li><a href="static-page.html">Privacy notice</a></li>
										
									</ul>
									
								</div>
								
								<div class="col-xs-12 col-sm-4 col-md-3 mt-30-xs">

									<h5 class="footer-title">Customer service</h5>
									
									<ul class="footer-menu">
									
										<li><a href="static-page.html">Payment</a></li>
										<li><a href="static-page.html">Feedback</a></li>
										<li><a href="static-page.html">Contact us</a></li>
										<li><a href="static-page.html">Travel advisories</a></li>
										<li><a href="static-page.html">FAQ</a></li>
										<li><a href="static-page.html">Site map</a></li>
										
									</ul>
									
								</div>
								
								<div class="col-xs-12 col-sm-4 col-md-3 mt-30-xs">

									<h5 class="footer-title">Others</h5>
									
									<ul class="footer-menu">
									
										<li><a href="static-page.html">Destinations</a></li>
										<li><a href="static-page.html">Blog</a></li>
										<li><a href="static-page.html">Pre Departure Planning</a></li>
										<li><a href="static-page.html">Visas</a></li>
										<li><a href="static-page.html">Insurance</a></li>
										<li><a href="static-page.html">Travel Guide</a></li>
										
									</ul>
									
								</div>
								
							</div>

						</div>
						
					</div>

				</div>
				
			</div>
			
		</footer>
		
	</div>  <!-- end Container Wrapper -->
 

 
	<!-- start Back To Top -->
	<div id="back-to-top">
		 <a href="#"><i class="fa fa-angle-up"></i></a>
	</div>
	<!-- end Back To Top -->



<!-- JS -->
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.waypoints.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/SmoothScroll.min.js"></script>
<script type="text/javascript" src="js/jquery.slicknav.min.js"></script>
<script type="text/javascript" src="js/jquery.placeholder.min.js"></script>
<!--<script type="text/javascript" src="js/instagram.min.js"></script>-->
<script type="text/javascript" src="js/spin.min.js"></script>
<script type="text/javascript" src="js/jquery.introLoader.min.js"></script>
<script type="text/javascript" src="js/select2.full.js"></script>
<script type="text/javascript" src="js/jquery.responsivegrid.js"></script>
<script type="text/javascript" src="js/ion.rangeSlider.min.js"></script>
<script type="text/javascript" src="js/readmore.min.js"></script>
<script type="text/javascript" src="js/slick.min.js"></script>
<script type="text/javascript" src="js/validator.min.js"></script>
<script type="text/javascript" src="js/jquery.raty.js"></script> 
<script type="text/javascript" src="js/customs.js"></script>

<script type="text/javascript" src="js/jquery.flexslider-min.js"></script> 
<script>
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