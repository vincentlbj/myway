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
						
							<h1 class="hero-title">想去哪</h1>
							
						</div>
						
					</div>

				</div>
				
			</div>
			<!-- end Page title -->
			
			<div class="content-wrapper">
			
				<div class="container">
				
					<div class="row">
						
						<div class="col-sm-4 col-md-3">
							
							<aside class="sidebar with-filter">
				
								<div class="sidebar-search-wrapper bg-light-2">
								
									<div class="sidebar-search-header">
										<h4>搜索</h4>
									</div>
									
									<div class="sidebar-search-content">
										<div class="form-group">
											<form action="">
												<h6 class="sidebar-title">去哪儿</h6>
												<select name="destination" class="select2-multi form-control" data-placeholder="选择你想去的..." multiple>
													<option value="">请选择</option>
													<option value="昆明">昆明</option>
													<option value="南京">南京</option>
													<option value="北京">北京</option>
													<option value="汕头">汕头</option>
												</select>
											</form>
										</div>
										<a href="#" class="btn btn-primary btn-block" id="search">确定</a>
									</div>
									
								</div>
								
								<div class="sidebar-header clearfix">
									<h4>高级搜索</h4>
									<a href="#" class="sidebar-reset-filter"><i class="fa fa-times"></i> 重置</a>
								</div>
								
								<div class="sidebar-inner">
								
									<div class="sidebar-module">
										<h6 class="sidebar-title">名字包括</h6>
										<div class="sidebar-module-inner">
											<div class="sidebar-mini-search">
												<div class="input-group">
													<input type="text" class="form-control" placeholder="Search for...">
													<span class="input-group-btn">
														<button class="btn btn-primary" type="button"><i class="fa fa-search"></i></button>
													</span>
												</div>
											</div>
										</div>
									</div>
									
									<div class="sidebar-module">
										<h6 class="sidebar-title">价格范围</h6>
										<div class="sidebar-module-inner">
											<input id="price_range" />
										</div>
									</div>
									
									<div class="clear"></div>
									
									<div class="sidebar-module">
										<h6 class="sidebar-title">星级选择</h6>
										<div class="sidebar-module-inner">
											<input id="star_range" />
										</div>
									</div>
									
									<div class="clear"></div>
									
									<div class="sidebar-module">
									
										<h6 class="sidebar-title">出发点</h6>
										<div class="sidebar-module-inner">
											<div class="checkbox-block">
												<input id="starting_point-1" name="starting_point" type="checkbox" class="checkbox"/>
												<label class="" for="starting_point-1">Berlin <span class="checkbox-count">(854)</span></label>
											</div>
											<div class="checkbox-block">
												<input id="starting_point-2" name="starting_point" type="checkbox" class="checkbox"/>
												<label class="" for="starting_point-2">Paris <span class="checkbox-count">(25)</span></label>
											</div>
											<div class="checkbox-block">
												<input id="starting_point-3" name="starting_point" type="checkbox" class="checkbox"/>
												<label class="" for="starting_point-3">Munich <span class="checkbox-count">(254)</span></label>
											</div>
											<div class="starting_point-block">
												<input id="property_type-4" name="starting_point" type="checkbox" class="checkbox"/>
												<label class="" for="property_type-4">Lyon<span class="checkbox-count">(22)</span></label>
											</div>
											<div class="starting_point-block">
												<input id="property_type-5" name="starting_point" type="checkbox" class="checkbox"/>
												<label class="" for="property_type-5">Vienna  <span class="checkbox-count">(9)</span></label>
											</div>
											
											<div class="more-less-wrapper">
												
												<div id="property_type_more_less" class="collapse"> 
													<div class="more-less-inner">
													
														<div class="checkbox-block">
															<input id="starting_point-6" name="starting_point" type="checkbox" class="checkbox"/>
															<label class="" for="starting_point-6">Toulouse <span class="checkbox-count">(3)</span></label>
														</div>
														<div class="checkbox-block">
															<input id="starting_point-7" name="starting_point" type="checkbox" class="checkbox"/>
															<label class="" for="starting_point-7">Graz  <span class="checkbox-count">(25)</span></label>
														</div>
														<div class="checkbox-block">
															<input id="starting_point-8" name="starting_point" type="checkbox" class="checkbox"/>
															<label class="" for="starting_point-8">Linz  <span class="checkbox-count">(2)</span></label>
														</div>
														
													</div>
												</div>
												<button class="btn btn-more-less collapsed" data-toggle="collapse" data-target="#property_type_more_less">Show more</button>
												
											</div>
											
										</div>
									
									</div>
									
									<div class="clear"></div>
									
									<div class="sidebar-module">
									
										<h6 class="sidebar-title">到达点</h6>
										<div class="sidebar-module-inner">
											<div class="checkbox-block">
												<input id="ending_point-1" name="ending_point" type="checkbox" class="checkbox"/>
												<label class="" for="ending_point-1">Berlin <span class="checkbox-count">(854)</span></label>
											</div>
											<div class="checkbox-block">
												<input id="ending_point-2" name="ending_point" type="checkbox" class="checkbox"/>
												<label class="" for="ending_point-2">Paris <span class="checkbox-count">(25)</span></label>
											</div>
											<div class="checkbox-block">
												<input id="ending_point-3" name="ending_point" type="checkbox" class="checkbox"/>
												<label class="" for="ending_point-3">Munich <span class="checkbox-count">(254)</span></label>
											</div>
											<div class="starting_point-block">
												<input id="ending_point-4" name="ending_point" type="checkbox" class="checkbox"/>
												<label class="" for="ending_point-4">Lyon<span class="checkbox-count">(22)</span></label>
											</div>
											<div class="starting_point-block">
												<input id="ending_point-5" name="ending_point" type="checkbox" class="checkbox"/>
												<label class="" for="ending_point-5">Vienna  <span class="checkbox-count">(9)</span></label>
											</div>
											
											<div class="more-less-wrapper">
												
												<div id="hotel_facilities_more_less" class="collapse"> 
													<div class="more-less-inner">
													
														<div class="checkbox-block">
															<input id="ending_point-6" name="ending_point" type="checkbox" class="checkbox"/>
															<label class="" for="ending_point-6">Toulouse <span class="checkbox-count">(3)</span></label>
														</div>
														<div class="checkbox-block">
															<input id="ending_point-7" name="ending_point" type="checkbox" class="checkbox"/>
															<label class="" for="ending_point-7">Graz  <span class="checkbox-count">(25)</span></label>
														</div>
														<div class="checkbox-block">
															<input id="ending_point-8" name="ending_point" type="checkbox" class="checkbox"/>
															<label class="" for="ending_point-8">Linz  <span class="checkbox-count">(2)</span></label>
														</div>
														
													</div>
												</div>
												<button class="btn btn-more-less collapsed" data-toggle="collapse" data-target="#hotel_facilities_more_less">Show more</button>
												
											</div>
											
										</div>
									
										
									</div>
									
									<div class="clear"></div>
									
									<div class="clear"></div>
									
								</div>
								
								<div class="sidebar-box">
									<p>本搜索结果一切解释权属于本网站</p>
								</div>
							
							</aside>
							
							
						</div>
						
						<div class="col-sm-8 col-md-9">
							
							<div class="sorting-wrappper">
			
								<div class="sorting-header">
									<h3 class="sorting-title uppercase">搜索：广西, 南宁, 昆明</h3>
									<p class="sorting-lead">搜索到${myPage.allCount}条结果</p>
								</div>
								
								<div class="sorting-content">
								
									<div class="row">
									
										<div class="col-sm-12 col-md-8">
										</div>
										
										<div class="col-sm-12 col-md-4">
											<div class="sort-by-wrapper mt pull-right pull-left-sm mt-10-sm">
												<label class="sorting-label">更换视图: </label> 
												<div class="sorting-middle-holder">
													<a href="result-list.html" class="btn btn-sorting"><i class="fa fa-th-list"></i></a>
													<a href="result-grid.html" class="btn btn-sorting active"><i class="fa fa-th-large"></i></a>
												</div>
											</div>
										</div>
										
									</div>
								
								</div>

							</div>
							
							<div class="GridLex-gap-20-wrappper package-grid-item-wrapper on-page-result-page alt-smaller">
						
								<div class="GridLex-grid-noGutter-equalHeight">
									<c:forEach items="${myPage.resultList}" var="result">
										<div class="GridLex-col-4_sm-6_xs-12 mb-20">
											<div class="package-grid-item"> 
												<a href="<%=request.getContextPath()%>/tour/detail/${result.id}">
													<div class="image">
														<img src="${fn:split(result.picture,";")[0]}" alt="Tour Package" />
														<div class="absolute-in-image">
															<div class="duration"><span>${fn:split(result.during,",")[0]} 天 ${fn:split(result.during,",")[1]} 夜</span></div>
														</div>
													</div>
													<div class="content clearfix">
														<h6>${result.name }</h6>
														<div class="rating-wrapper">
															<div class="raty-wrapper">
																<div class="star-rating-12px" data-rating-score="${result.remark }"></div> <span> / ${result.comment } 评论</span>
															</div>
														</div>
														<div class="absolute-in-content">
															<span class="btn"><i class="fa fa-heart-o"></i></span>
															<div class="price">￥${result.price }</div>
														</div>
													</div>
												</a>
											</div>
										</div>
									</c:forEach>									
								</div>							
							</div>
							
							<div class="pager-wrappper mt-30 clearfix">
			
								<div class="pager-innner">
									
									<div class="flex-row flex-align-middle">
											
										<div class="flex-column flex-sm-12">
											当前是第 ${myPage.currPage } 页
										</div>
										
										<div class="flex-column flex-sm-12">
											<nav class="pager-right">
												<ul class="pagination" id="pageul">

												</ul>
											</nav>
										</div>
									
									</div>
									
								</div>
								
							</div>
							
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

<script type="text/javascript">
$('#pageul').jqPaginator({
	totalCounts: ${myPage.allCount},
	pageSize: 9,
    visiblePages: 5,
    currentPage: ${myPage.currPage},

    first: '<li><a href="<%=request.getContextPath()%>/tour/result/grid" style="width:50px">首页</a></li>',
    last: '<li><a href="<%=request.getContextPath()%>/tour/result/grid?pageNum={{totalPages}}" style="width:50px">尾页</a></li>',
    page: '<li><a href="<%=request.getContextPath()%>/tour/result/grid?pageNum={{page}}">{{page}}</a></li>',
});
</script>
</body>

</html>