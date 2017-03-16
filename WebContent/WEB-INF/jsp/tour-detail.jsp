<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		<div class="main-wrapper scrollspy-container">
		
			<!-- start end Page title -->
			<div class="page-title detail-page-title" style="background-image:url('${pictureList[0]}');">
				
				<div class="container">
				
					<div class="flex-row">
						
						<div class="flex-column flex-md-8 flex-sm-12">
							
							<h1 class="hero-title">${name }</h1>
							
							<ul class="list-col clearfix">
								
								<li class="duration-box">
									<div class="meta">
										<span class="block">${day }</span>
										天
									</div>
									<div class="meta">
										&amp;
									</div>
									<div class="meta">
										<span class="block">${night }</span>
										夜
									</div>
								</li>
								
								<li class="price-box">
									<div class="meta">
										<span class="block">￥${price }起</span>
										价格
									</div>
								</li>
								
							</ul>
							
						</div>
						
						<div class="flex-column flex-md-4 flex-align-bottom flex-sm-12 mt-20-sm">
							<div class="text-right text-left-sm">
								<a href="#section-5" class="anchor btn btn-primary">马上预订</a>
							</div>
						</div>
					
					</div>

				</div>
				
			</div>
			
			<div class="content-wrapper">
			
				<div class="container">
			
					<div class="row">
					
						<div class="col-md-9" role="main">

							<div class="detail-content-wrapper">
								
									<div id="section-0" class="detail-content">
										
										<div class="section-title text-left">
											<h4>简介</h4>
										</div>
											${introduction }
									</div>
									
									<div id="section-1" class="detail-content">
									
										<div class="section-title text-left">
											<h4>图片墙</h4>
										</div>
										<div class="slick-gallery-slideshow">
					
											<div class="slider gallery-slideshow">
												<c:forEach items="${pictureList }" var="picture">
													<div class="image"><img src="${picture }" alt="Image" /></div>
												</c:forEach>
											</div>											
										</div>

									</div>
									
									<div id="section-2" class="detail-content">
										
										<div class="section-title text-left">
											<h4>行程介绍</h4>
										</div>
										
										<div class="detail-item">
										
											<div class="row">
											
												<div class="col-sm-4 col-sm-3 mb-30">
												
													<ul class="list-info no-icon bb-dotted">
														<li><span class="font600">产品编号: </span>${productId }</li>
														<li><span class="font600">历时: </span>${day } 天 &amp; ${night } 夜</li>
														<li><span class="font600">行程套餐:</span> ${taocan}</li>
														<li><span class="font600">服务承诺: </span>认证商家 24小时退款保证 安全交易 铁定成团 如实描述</li>

													</ul>
												
												</div>
												
												<div class="col-sm-8 col-md-9">
												
													<div class="itinerary-wrapper">													
														<c:forEach items="${routeIncludeList }" var="item">
															<div class="itinerary-item intro-item">
																<h5>${item.key }</h5>
																<div class="intro-item-body">
																	<p>${item.value }</p>
																	
																</div>
															</div>
														</c:forEach>
														<div class="itinerary-day-label font600 uppercase"><span>Day</span></div>
														
														<div class="itinerary-item-wrapper">
															<c:forEach items="${routeContentList }" var="item" varStatus="status">
																<div class="panel-group bootstarp-toggle">
																
																	<div class="panel itinerary-item">
																		<div class="panel-heading">
																			<h5 class="panel-title">
																				<a data-toggle="collapse" data-parent="#" href="#bootstarp-toggle-one"><span class="absolute-day-number">${status.count }</span> ${item.key }</a>
																			</h5>
																		</div>
																		<div id="bootstarp-toggle-one" class="panel-collapse">
																			<div class="panel-body">
																			
																				<p>${item.value }</p>
																				
																			</div>
																		</div>
	
																	</div>
																</div>
															</c:forEach>
																<!-- end of panel -->

															</div>
														
														</div>
														
													</div>
													
												
											</div>
										
										</div>

									</div>
									
									<div id="section-5" class="detail-content">

										<div class="section-title text-left">
											<h4>选择出游日期</h4>
										</div>
										
										<div class="availabily-wrapper">
										
											<ul class="availabily-list">
												
												<li class="availabily-heading clearfix">
												
													<div class="date-from">
														出发
													</div>
													
													<div class="date-to">
														返程
													</div>
													
													<div class="status">
														剩余量
													</div>
													
													<div class="price">
														价格
													</div>
													
													<div class="action">
														&nbsp;
													</div>
												
												</li>
												<c:forEach items="${ priceList}" var="price">
													<li class="availabily-content <c:if test="${price.remain == 0 }">sold-out</c:if> clearfix">
														
														<div class="date-from">
															<span class="availabily-heading-label">start:</span>
															<span><fmt:formatDate value="${price.go }"  pattern="yyyy-MM-dd"/></span>
														</div>
														
														<div class="date-to">
															<span class="availabily-heading-label">end:</span>
															<span><fmt:formatDate value="${price.back }"  pattern="yyyy-MM-dd"/></span>
														</div>
														
														<div class="status">
															<span class="availabily-heading-label">status:</span>
															剩余量
															<span>${price.remain }</span>
														</div>
														
														<div class="price">
															<span class="availabily-heading-label">price:</span>
															<span>${price.price }元</span>
														</div>
														
														<div class="action">
															<a href="<%=request.getContextPath()%>/tour/pay/${price.id}" class="btn btn-primary btn-sm btn-inverse">马上预订</a>
														</div>
													</li>
												</c:forEach>
											</ul>
											
										</div>
									</div>
									
									<div class="detail-content">
									
										<div class="section-title text-left">
											<h4>相关推荐</h4>
										</div>
										
										<div class="GridLex-gap-20-wrappper package-grid-item-wrapper on-page-result-page alt-smaller">
						
											<div class="GridLex-grid-noGutter-equalHeight">
												<c:forEach items="${showTourList}" var="tour">
													<div class="GridLex-col-4_sm-4_xs-12 mb-20">
														<div class="package-grid-item"> 
															<a href="<%=request.getContextPath()%>/tour/detail/${tour.id}">
																<div class="image">
																	<img src="${fn:split(tour.picture,";")[0]}" alt="Tour Package" />
																	<div class="absolute-in-image">
																		<div class="duration"><span>${fn:split(tour.during,",")[0]} 天 ${fn:split(tour.during,",")[1]} 夜</span></div>
																	</div>
																</div>
																<div class="content clearfix">
																	<h6>${tour.name }</h6>
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
									
									<div id="section-6" class="detail-content">
									
										<div class="section-title text-left">
											<h4>预订须知</h4>
										</div>
										
										<div class="faq-alt-2-wrapper">
										
											<div class="panel-group bootstarp-accordion" id="accordion" role="tablist" aria-multiselectable="true">
												<c:forEach items="${noticeList}" var="item">
													<div class="panel">
														<div class="panel-heading" role="tab" id="headingOne">
															<h6 class="panel-title">
																<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> ${item.key }</a>
															</h6>
														</div>
														<div id="collapseOne" class="panel-collapse" role="tabpanel" aria-labelledby="headingOne">
															<div class="panel-body">
																<div class="faq-thread">
																	<p>${item.value }</p>
																</div>
															</div>
														</div>
													</div>
												</c:forEach>
												<!-- end of panel -->
											</div>
											<!-- end of #accordion -->
											
											
										</div>
										
									</div>	
									
									<div class="call-to-action">
									
										有问题? 拨打 +88888888
									
									</div>
										
								</div>
							
						</div>

						<div class="col-sm-3 hidden-sm hidden-xs">
						
							<div class="scrollspy-sidebar sidebar-detail" role="complementary">
							
								<ul class="scrollspy-sidenav">
								
									<li>
										<ul class="nav">
											<li><a href="#section-0" class="anchor">简介</a></li>
											<li><a href="#section-1" class="anchor">图片墙</a></li>
											<li><a href="#section-2" class="anchor">行程介绍</a></li>
											<li><a href="#section-5" class="anchor">出游日期</a></li>
											<li><a href="#section-6" class="anchor">预订须知</a></li>
										</ul>
									</li>

								</ul>
								
								<div style="width: 100%; height: 20px;"></div>
								
							</div>

						</div>

					</div>
				
				</div>
					
			</div>

		</div>
		<!-- end Main Wrapper -->

		<%@ include file="/common-footer.jsp" %>

	<!-- end Container Wrapper -->
 

 
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

<script>

/**
*  Sidebar Sticky
*/

!function ($) {

  $(function(){

    var $window = $(window)
    var $body   = $(document.body)

    var navHeight = $('.navbar').outerHeight(true) + 50

    $body.scrollspy({
      target: '.scrollspy-sidebar',
      offset: navHeight
    })

    $window.on('load', function () {
      $body.scrollspy('refresh')
    })

    $('.scrollspy-container [href=#]').click(function (e) {
      e.preventDefault()
    })

    // back to top
    setTimeout(function () {
      var $sideBar = $('.scrollspy-sidebar')

      $sideBar.affix({
        offset: {
          top: function () {
            var offsetTop      = $sideBar.offset().top
            var sideBarMargin  = parseInt($sideBar.children(0).css('margin-top'), 10)
            var navOuterHeight = $('.scrollspy-nav').height()

            return (this.top = offsetTop - navOuterHeight - sideBarMargin)
          }
        , bottom: function () {
            return (this.bottom = $('.scrollspy-footer').outerHeight(true))
          }
        }
      })
    }, 100)
		
  })

}(window.jQuery)

</script>

</body>

</html>