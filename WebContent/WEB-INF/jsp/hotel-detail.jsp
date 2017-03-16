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
	
	<style type="text/css">
		#allmap {width: 100%;height: 400px;overflow: hidden;margin:0;font-family:"微软雅黑";}
	</style>

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
			<div class="page-title detail-page-title" style="background-image:url('${hotel.headerPicture}');">
				
				<div class="container">
				
					<div class="flex-row">
						
						<div class="flex-column flex-md-8 flex-sm-12">
							
							<h1 class="hero-title">${hotel.name }</h1>
							
							<ul class="list-col clearfix">							
								<li class="price-box">
									<div class="meta">
										<span class="block"><span style="color: red;">地址：</span>${hotel.address }</span>									
									</div>
								</li>								
								<br>							
							</ul>
							
						</div>
						
						<div class="flex-column flex-md-4 flex-align-bottom flex-sm-12 mt-20-sm">
							<div class="text-right text-left-sm">
								<a href="<%=request.getContextPath()%>/hotel/pay/${hotel.id}" class="anchor btn btn-primary">马上预订</a>
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
											${hotel.introduction }
									</div>
									
									<div id="section-1" class="detail-content">
									
										<div class="section-title text-left">
											<h4>酒店设施</h4>
										</div>
										
										<div class="faq-alt-2-wrapper">
										
											<div class="panel-group bootstarp-accordion" id="accordion" role="tablist" aria-multiselectable="true">
												<c:forEach items="${installation}" var="item">
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
									
									<div id="section-2" class="detail-content">
									
										<div class="section-title text-left">
											<h4>酒店政策</h4>
										</div>
										
										<div class="faq-alt-2-wrapper">
										
											<div class="panel-group bootstarp-accordion" id="accordion" role="tablist" aria-multiselectable="true">
												<c:forEach items="${policy}" var="item">
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
									
									<div id="section-3" class="detail-content">
										
										<div class="section-title text-left">
											<h4>周边设施</h4>
										</div>
											${hotel.around }
									</div>
									
									<div id="section-4" class="detail-content">
									
										<div class="section-title text-left">
											<h4>图片墙</h4>
										</div>
										<div class="slick-gallery-slideshow">
					
											<div class="slider gallery-slideshow">
												<c:forEach items="${fn:split(hotel.picture,';') }" var="picture">
													<div class="image"><img src="${picture }" alt="Image" /></div>
												</c:forEach>
											</div>											
										</div>

									</div>
									
									<div id="section-5" class="detail-content">
										
										<div class="section-title text-left">
											<h4>地址</h4>
										</div>
										<div id="allmap"></div>
											
									</div>
									
									<div class="detail-content">
									
										<div class="section-title text-left">
											<h4>相关推荐</h4>
										</div>
										
										<div class="GridLex-gap-20-wrappper package-grid-item-wrapper on-page-result-page alt-smaller">
						
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

									<div class="call-to-action">
									
										有问题? 拨打 88888888
									
									</div>
										
								</div>
							
						</div>

						<div class="col-sm-3 hidden-sm hidden-xs">
						
							<div class="scrollspy-sidebar sidebar-detail" role="complementary">
							
								<ul class="scrollspy-sidenav">
								
									<li>
										<ul class="nav">
											<li><a href="#section-0" class="anchor">简介</a></li>
											<li><a href="#section-1" class="anchor">酒店设施</a></li>
											<li><a href="#section-2" class="anchor">酒店政策</a></li>
											<li><a href="#section-3" class="anchor">周边信息</a></li>
											<li><a href="#section-4" class="anchor">图片墙</a></li>
											<li><a href="#section-5" class="anchor">地址</a></li>
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
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ofIpSEaXIvq8dVHRm52uVwCVnBzLNiPq"></script>

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

// 百度地图API功能
var map = new BMap.Map("allmap");
var point = new BMap.Point(116.331398,39.897445);
map.centerAndZoom(point,12);
// 创建地址解析器实例
var myGeo = new BMap.Geocoder();
// 将地址解析结果显示在地图上,并调整地图视野
myGeo.getPoint("${fn:split(hotel.baiduPoint,';')[0] }", function(point){
	if (point) {
		map.centerAndZoom(point, 16);
		map.addOverlay(new BMap.Marker(point));
	}else{
		alert("您选择地址没有解析到结果!");
	}
}, "${fn:split(hotel.baiduPoint,';')[1] }");
</script>

</body>

</html>