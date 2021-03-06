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
		<div class="main-wrapper scrollspy-container">
		
			<!-- start end Page title -->
			<div class="page-title" style="background-image:url('<%=request.getContextPath()%>/images/hero-header/breadcrumb.jpg');">
				
				<div class="container">
				
					<div class="row">
					
						<div class="col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-3">
						
							<h1 class="hero-title">驴友日记</h1>
							
						</div>
						
					</div>

				</div>
				
			</div>
			<!-- end Page title -->
			
			<div class="content-wrapper">
			
				<div class="container">
				
					<div class="row">
					
						<div class="col-sm-8 col-md-9">
						
							<div class="blog-wrapper">
								<c:forEach items="${myPage.resultList}" var="result">
									<div class="blog-item">
									
										<div class="blog-media">
											<div class="overlay-box">
												<a class="blog-image" href="<%=request.getContextPath()%>/blog/detail/${result.dId}">
													<img src="${result.picture }" alt="" />
													<div class="image-overlay">
														<div class="overlay-content">
															<div class="overlay-icon"><i class="pe-7s-link"></i></div>
														</div>
													</div>
												</a>
											</div>
										</div>
												
										<div class="blog-content">
											<h3><a href="<%=request.getContextPath()%>/blog/detail/${result.dId}" class="inverse">${result.title }</a></h3>
											<ul class="blog-meta clearfix">
												<li>由 ${result.username } 编辑</li>
												<li>更新于 <fmt:formatDate value="${result.updateDate }"  pattern="yyyy-MM-dd"/></li>
												<li>在 ${result.place }</li>
											</ul>
											<a href="<%=request.getContextPath()%>/blog/detail/${result.dId}" class="btn-blog">查看 <i class="fa fa-long-arrow-right"></i></a>
										</div>
									
									</div>
						
									<div class="clear"></div>
								</c:forEach>
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
						
						<div class="col-sm-4 col-md-3 mt-50-xs">
						
							<aside class="sidebar">
						
								<div class="sidebar-inner no-border for-blog">
								
									<div class="sidebar-module">
										<div class="sidebar-module-inner">
											<div class="sidebar-mini-search">
												<div class="input-group">
													<input id="title" type="text" class="form-control" placeholder="输入驴友日记名称...">
													<span class="input-group-btn">
														<button class="btn btn-primary" type="button" onclick="search();"><i class="fa fa-search"></i></button>
													</span>
												</div>
											</div>
										</div>
									</div>
									
									<div class="clear"></div>

									<div class="sidebar-module">
										<h4 class="sidebar-title">热门地点</h4>
										<div class="sidebar-module-inner">
											<ul class="sidebar-category">
												<c:forEach items="${hotCityList}" var="result">
													<li><a href="<%=request.getContextPath()%>/blog/result?place=${result.key}">${result.key}<span>(${result.value})</span></a></li>
												</c:forEach>
											</ul>
										</div>
									</div>
									
									
									<div class="clear"></div>
									
									<div class="sidebar-module">
										<h4 class="sidebar-title">最新投稿</h4>
										<div class="sidebar-module-inner">
										
											<ul class="sidebar-post">
												<c:forEach items="${newBlogList}" var="result">
													<li class="clearfix">
															<a href="<%=request.getContextPath()%>/blog/detail/${result.dId}">
																<div class="image">
																	<img src="${result.picture }" alt="Popular Post" />
																</div>
																<div class="content">
																	<h6>${result.title }</h6>
																	<p class="recent-post-sm-meta"><i class="fa fa-clock-o mr-5"></i><fmt:formatDate value="${result.createDate }"  pattern="yyyy-MM-dd"/></p>
																</div>
															</a>
													</li>
												</c:forEach>
											</ul>
										
										</div>
									</div>
									
									<div class="clear"></div>

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
	pageSize: 5,
    visiblePages: 5,
    currentPage: ${myPage.currPage},

    first: '<li><a href="<%=request.getContextPath()%>/blog/result" style="width:50px">首页</a></li>',
    last: '<li><a href="<%=request.getContextPath()%>/blog/result?pageNum={{totalPages}}" style="width:50px">尾页</a></li>',
    page: '<li><a href="<%=request.getContextPath()%>/blog/result?pageNum={{page}}">{{page}}</a></li>',
});
function search(){
	if($("#title").val()==""){
		return false;
	}
	window.location.href="<%=request.getContextPath()%>/blog/result?title="+$("#title").val();
}
</script>
</body>
</html>