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
			<div class="page-title detail-page-title" style="background-image:url('<%=request.getContextPath()%>/images/detail/header.jpg');">
				
				<div class="container">
				
					<div class="flex-row">
						
						<div class="flex-column flex-md-8 flex-sm-12">
							
							<h1 class="hero-title">${name }</h1>
							
							<ul class="list-col clearfix">
								<li class="rating-box">
									<div class="rating-wrapper">
										<div class="raty-wrapper">
											<div class="star-rating-white" data-rating-score="${remark }"></div> 
											<span style="display: block;"> / ${comment }条评论</span>
										</div>
									</div>
								</li>
								
								<li class="fav-box">
									<div class="meta">
										<span class="block"><button class="btn btn-fav"><i class="fa fa-book"></i></button></span>
										成交 ${deal }
									</div>
								</li>

								<li class="fav-box">
									<div class="meta">
										<span class="block"><button class="btn btn-fav"><i class="fa fa-heart"></i></button></span>
										满意度 ${satisfactory }% 
									</div>
								</li>
								
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
											
												<div class="GridLex-col-4_sm-4_xs-12 mb-20">
													<div class="package-grid-item"> 
														<a href="#">
															<div class="image">
																<img src="<%=request.getContextPath()%>/images/tour-package/01.jpg" alt="Tour Package" />
																<div class="absolute-in-image">
																	<div class="duration"><span>4 days 3 nights</span></div>
																</div>
															</div>
															<div class="content clearfix">
																<h6>Paris in Love</h6>
																<div class="rating-wrapper">
																	<div class="raty-wrapper">
																		<div class="star-rating-12px" data-rating-score="4.0"></div> <span> / 7 review</span>
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
												
												<div class="GridLex-col-4_sm-4_xs-12 mb-20">
													<div class="package-grid-item"> 
														<a href="#">
															<div class="image">
																<img src="<%=request.getContextPath()%>/images/tour-package/02.jpg" alt="Tour Package" />
																<div class="absolute-in-image">
																	<div class="duration"><span>4 days 3 nights</span></div>
																</div>
															</div>
															<div class="content clearfix">
																<h6>Classic Europe</h6>
																<div class="rating-wrapper">
																	<div class="raty-wrapper">
																		<div class="star-rating-12px" data-rating-score="3.5"></div> <span> / 7 review</span>
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
												
												<div class="GridLex-col-4_sm-4_xs-12 mb-20">
													<div class="package-grid-item"> 
														<a href="#">
															<div class="image">
																<img src="<%=request.getContextPath()%>/images/tour-package/03.jpg" alt="Tour Package" />
																<div class="absolute-in-image">
																	<div class="duration"><span>4 days 3 nights</span></div>
																</div>
															</div>
															<div class="content clearfix">
																<h6>Best of Egypt</h6>
																<div class="rating-wrapper">
																	<div class="raty-wrapper">
																		<div class="star-rating-12px" data-rating-score="4.5"></div> <span> / 7 review</span>
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
									
									<div id="section-7" class="detail-content">
									
										<div class="section-title text-left">
											<h4>评论</h4>
										</div>
										
										<div class="review-wrapper">
						
											<div class="review-header">
												<div class="row">
												
													<div class="col-sm-4 col-md-3">
													
														<div class="review-overall">
														
															<h5>满意度</h5>
															<p class="review-overall-point"><span>4.6</span> / 5.0</p>
															<p class="review-overall-recommend">90% recommend this package</p>
														</div>
													
													</div>
													
													<div class="col-sm-8 col-md-9">
														
														<div class="review-overall-breakdown">

															<div class="row gap-20">
															
																<div class="col-xss-12 col-xs-12 col-sm-7">
					
																	<h6>评分</h6>
																	<ul class="breakdown-list">
																	
																		<li class="clearfix">
																			<div class="rating-wrapper">
																				<div class="raty-wrapper">
																					<div class="star-rating-12px" data-rating-score="5.0"></div> <span>(5)</span>
																				</div>
																			</div>
																			<div class="progress progress-primary">
																				<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
																			</div>
																			<div class="breakdown-count"> (58)</div>
																		</li>
																		
																		<li class="clearfix">
																			<div class="rating-wrapper">
																				<div class="raty-wrapper">
																					<div class="star-rating-12px" data-rating-score="4.0"></div> <span>(4)</span>
																				</div>
																			</div>
																			<div class="progress progress-primary">
																				<div class="progress-bar" role="progressbar" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100" style="width: 88%;"></div>
																			</div>
																			<div class="breakdown-count"> (132)</div>
																		</li>
																		
																		<li class="clearfix">
																			<div class="rating-wrapper">
																				<div class="raty-wrapper">
																					<div class="star-rating-12px" data-rating-score="3.0"></div> <span>(3)</span>
																				</div>
																			</div>
																			<div class="progress progress-primary">
																				<div class="progress-bar" role="progressbar" aria-valuenow="71" aria-valuemin="0" aria-valuemax="100" style="width: 71%;"></div>
																			</div>
																			<div class="breakdown-count"> (89)</div>
																		</li>
																		
																		<li class="clearfix">
																			<div class="rating-wrapper">
																				<div class="raty-wrapper">
																					<div class="star-rating-12px" data-rating-score="2.0"></div> <span>(2)</span>
																				</div>
																			</div>
																			<div class="progress progress-primary">
																				<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
																			</div>
																			<div class="breakdown-count"> (58)</div>
																		</li>
																		
																		<li class="clearfix">
																			<div class="rating-wrapper">
																				<div class="raty-wrapper">
																					<div class="star-rating-12px" data-rating-score="1.0"></div> <span>(1)</span>
																				</div>
																			</div>
																			<div class="progress progress-primary">
																				<div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%;"></div>
																			</div>
																			<div class="breakdown-count"> (9)</div>
																		</li>
																		
																	</ul>

																</div>
																
																
															</div>
															
														
														</div>
													
													</div>
													
												</div>
											</div>
											
											<div class="review-content">
											
												<div class="row gap-20">
												
													<div class="col-sm-6">
														<h5>总共有 2135 条评论</h5>
													</div>
													
													<div class="col-sm-6 text-right text-left-xs">
														<a href="#leave-comment" class="anchor btn btn-primary btn-inverse btn-sm">留下你的评论</a>
													</div>
												
												</div>
												
												
												<ul class="review-list">
												
													<li class="clearfix">
														<div class="image img-circle">
															<img class="img-circle" src="<%=request.getContextPath()%>/images/man/01.jpg" alt="Man" />
														</div>
														<div class="content">
															<div class="row gap-20 mb-0">
																<div class="col-sm-9">
																	<h6>Antony Robert <span>/ from Spain</span></h6>
																</div>
																<div class="col-sm-3">
																	<p class="review-date">18/03/2016</p>
																</div>
															</div>
															
															<div class="rating-wrapper">
																<div class="raty-wrapper">
																	<div class="star-rating-12px" data-rating-score="4.0"></div>
																</div>
															</div>
															
															<div class="review-text">
															
																<p>She meant new their sex could defer child. An lose at quit to life do dull. Moreover end horrible endeavor entrance any families. Income appear extent on of thrown in admire.</p>
																
																<p>It as announcing it me stimulated frequently continuing. Least their she you now above going stand forth. He pretty future afraid should genius spirit on. Set property addition building put likewise get. Of will at sell well at as. Too want but tall nay like old. Removing yourself be in answered he. Consider occasion get improved him she eat. Letter by lively oh denote an.</p>
															
															</div>
															
															<div class="review-other">
																
																<div class="row gap-20 mb-0">
																	
																	<div class="col-sm-6">
																	
																		<ul class="social-share-sm">
																		
																			<li><span><i class="fa fa-share-square"></i> share</span></li>
																			<li class="the-label"><a href="#">Facebook</a></li>
																			<li class="the-label"><a href="#">Twitter</a></li>
																			<li class="the-label"><a href="#">Google Plus</a></li>
																			
																		</ul>
																	
																	</div>
																	
																	<div class="col-sm-6">
																	
																		<ul class="social-share-sm for-useful">
																			<li><span>Was this review helpful? </span></li>
																			<li class="the-label"><a href="#"><i class="fa fa-thumbs-up"></i></a> 2</li>
																			<li class="the-label"><a href="#"><i class="fa fa-thumbs-down"></i></a> 1</li>
																		</ul>
																	
																	</div>
																
																</div>
																
															</div>
															
														</div>
													</li>
													
													<li class="clearfix">
														<div class="image img-circle">
															<img class="img-circle" src="<%=request.getContextPath()%>/images/man/02.jpg" alt="Man" />
														</div>
														<div class="content">
															<div class="row gap-20">
																<div class="col-sm-9">
																	<h6>Mohammed Salem <span>/ from Turkey</span></h6>
																</div>
																<div class="col-sm-3">
																	<p class="review-date">18/03/2016</p>
																</div>
															</div>
															<div class="rating-wrapper">
																<div class="raty-wrapper">
																	<div class="star-rating-12px" data-rating-score="4.0"></div>
																</div>
															</div>
															
															<div class="review-text">
															
																<p>She meant new their sex could defer child. An lose at quit to life do dull. Moreover end horrible endeavor entrance any families. Income appear extent on of thrown in admire.</p>
															
																<ul>
																	<li>Written enquire painful ye to offices forming it.</li>
																	<li>
																		Then so does over sent dull on.
																		<ul>
																			<li>Rendered her for put improved concerns his. Moreover end horrible endeavor entrance any families. Income appear extent on of thrown in admire.</li>
																			<li>Ladies bed wisdom theirs mrs men months set.</li>
																			<li>Everything so dispatched as it increasing pianoforte.</li>
																		</ul>
																	</li>
																	<li>Likewise offended humoured mrs fat trifling answered.</li>
																	<li>On ye position greatest so desirous. So wound stood guest weeks no terms up ought.</li>
																	<li>Then so does greatest so desirous over sent dull on.</li>
																</ul>
																
																<p>Spot of come to ever hand as lady meet on. Delicate contempt received two yet advanced. Gentleman as belonging he commanded believing dejection in by. On no am winding chicken so behaved. Its preserved sex enjoyment new way behaviour. Him yet devonshire celebrated especially. Unfeeling one provision are smallness resembled repulsive.</p>
																
																<ol>
																	<li>Written enquire painful ye to offices forming it.</li>
																	<li>
																		Then so does over sent dull on.
																		<ol>
																			<li>Rendered her for put improved concerns his. Moreover end horrible endeavor entrance any families. Income appear extent on of thrown in admire.</li>
																			<li>Ladies bed wisdom theirs mrs men months set.</li>
																			<li>Everything so dispatched as it increasing pianoforte.</li>
																		</ol>
																	</li>
																	<li>Likewise offended humoured mrs fat trifling answered.</li>
																	<li>On ye position greatest so desirous. So wound stood guest weeks no terms up ought.</li>
																	<li>Then so does greatest so desirous over sent dull on.</li>
																</ol>
																
																<p>Unpleasant astonished an diminution up partiality. Noisy an their of meant. Death means up civil do an offer wound of. Called square an in afraid direct. Resolution diminution conviction so mr at unpleasing simplicity no. No it as breakfast up conveying earnestly immediate principle. Him son disposed produced humoured overcame she bachelor improved. Studied however out wishing but inhabit fortune windows.</p>
																
															</div>
															
															<div class="review-other">
																
																<div class="row gap-20 mb-0">
																	
																	<div class="col-sm-6">
																	
																		<ul class="social-share-sm">
																		
																			<li><span><i class="fa fa-share-square"></i> share</span></li>
																			<li class="the-label"><a href="#">Facebook</a></li>
																			<li class="the-label"><a href="#">Twitter</a></li>
																			<li class="the-label"><a href="#">Google Plus</a></li>
																			
																		</ul>
																	
																	</div>
																	
																	<div class="col-sm-6">
																	
																		<ul class="social-share-sm for-useful">
																			<li><span>Was this review helpful? </span></li>
																			<li class="the-label"><a href="#"><i class="fa fa-thumbs-up"></i></a> 2</li>
																			<li class="the-label"><a href="#"><i class="fa fa-thumbs-down"></i></a> 1</li>
																		</ul>
																	
																	</div>
																
																</div>
																
															</div>
														</div>
													</li>
													
													<li class="clearfix">
														<div class="image img-circle">
															<img class="img-circle" src="<%=request.getContextPath()%>/images/man/03.jpg" alt="Man" />
														</div>
														<div class="content">
															<div class="row gap-20">
																<div class="col-sm-9">
																	<h6>Antony Robert <span>/ from Spain</span></h6>
																</div>
																<div class="col-sm-3">
																	<p class="review-date">18/03/2016</p>
																</div>
															</div>
															
															<div class="rating-wrapper">
																<div class="raty-wrapper">
																	<div class="star-rating-12px" data-rating-score="4.0"></div>
																</div>
															</div>
															
															<div class="review-text">
															
																<p>Must you with him from him her were more. In eldest be it result should remark vanity square. Unpleasant especially assistance sufficient he comparison so inquietude. Branch one shy edward stairs turned has law wonder horses. Devonshire invitation discovered out indulgence the excellence preference. Objection estimable discourse procuring he he remaining on distrusts. Simplicity affronting inquietude for now sympathize age. She meant new their sex could defer child. An lose at quit to life do dull.</p>
															
															</div>
															
															<div class="review-other">
																
																<div class="row gap-20 mb-0">
																	
																	<div class="col-sm-6">
																	
																		<ul class="social-share-sm">
																		
																			<li><span><i class="fa fa-share-square"></i> share</span></li>
																			<li class="the-label"><a href="#">Twitter</a></li>
																			<li class="the-label"><a href="#">Google Plus</a></li>
																			
																		</ul>
																	
																	</div>
																	
																	<div class="col-sm-6">
																	
																		<ul class="social-share-sm for-useful">
																			<li><span>Was this review helpful? </span></li>
																			<li class="the-label"><a href="#"><i class="fa fa-thumbs-up"></i></a> 2</li>
																			<li class="the-label"><a href="#"><i class="fa fa-thumbs-down"></i></a> 1</li>
																		</ul>
																	
																	</div>
																
																</div>
																
															</div>
														</div>
													</li>
													
													<li class="clearfix">
														<div class="image">
															<img class="img-circle" src="<%=request.getContextPath()%>/images/man/04.jpg" alt="Man" />
														</div>
														<div class="content">
															<div class="row gap-20">
																<div class="col-sm-9">
																	<h6>Mohammed Salem <span>/ from Turkey</span></h6>
																</div>
																<div class="col-sm-3">
																	<p class="review-date">18/03/2016</p>
																</div>
															</div>
															<div class="rating-wrapper">
																<div class="raty-wrapper">
																	<div class="star-rating-12px" data-rating-score="4.0"></div>
																</div>
															</div>
															
															<div class="review-text">
															
																<p>She meant new their sex could defer child. An lose at quit to life do dull. Moreover end horrible endeavor entrance any families. Income appear extent on of thrown in admire.</p>
															
															</div>
															
															<div class="review-other">
																
																<div class="row gap-20 mb-0">
																	
																	<div class="col-sm-6">
																	
																		<ul class="social-share-sm">
																		
																			<li><span><i class="fa fa-share-square"></i> share</span></li>
																			<li class="the-label"><a href="#">Facebook</a></li>
																			<li class="the-label"><a href="#">Twitter</a></li>
																			<li class="the-label"><a href="#">Google Plus</a></li>
																			
																		</ul>
																	
																	</div>
																	
																	<div class="col-sm-6">
																	
																		<ul class="social-share-sm for-useful">
																			<li><span>Was this review helpful? </span></li>
																			<li class="the-label"><a href="#"><i class="fa fa-thumbs-up"></i></a> 2</li>
																			<li class="the-label"><a href="#"><i class="fa fa-thumbs-down"></i></a> 1</li>
																		</ul>
																	
																	</div>
																
																</div>
																
															</div>
														</div>
													</li>
													
												</ul>
											
												<div class="flex-column flex-sm-12">
													Showing reslut 1 to 15 from 248 
												</div>
												
												<div class="flex-column flex-sm-12">
													<nav class="pager-right">
														<ul class="pagination">
															<li>
																<a href="#" aria-label="Previous">
																	<span aria-hidden="true">&laquo;</span>
																</a>
															</li>
															<li class="active"><a href="#">1</a></li>
															<li><a href="#">2</a></li>
															<li><a href="#">3</a></li>
															<li><span>...</span></li>
															<li><a href="#">11</a></li>
															<li><a href="#">12</a></li>
															<li><a href="#">13</a></li>
															<li>
																<a href="#" aria-label="Next">
																	<span aria-hidden="true">&raquo;</span>
																</a>
															</li>
														</ul>
													</nav>
												</div>
												
											</div>
											
										</div>

									</div>
									
									<div id="leave-comment" class="detail-content">
									
										<div class="section-title text-left">
											<h4>评论</h4>
										</div>
										
										<div class="review-form">
											
											<form class="">
											
												<div class="row">
													
													<div class="col-sm-6 col-md-4">
													
														<div class="form-group">
															<label>你的评分: </label>
															<div class="rating-wrapper">
																<div class="raty-wrapper">
																	<div class="star-rating" data-rating-score="4.0"></div>
																</div>
															</div>
														</div>
													
													</div>
													
													<div class="clear"></div>
													
													<div class="col-sm-12 col-md-8">
													
														<div class="form-group">
															<label>你的评论: </label>
															<textarea class="form-control form-control-sm" rows="5"></textarea>
														</div>
													</div>
													
													<div class="clear"></div>
													
													<div class="col-sm-12 col-md-8 mt-10">
														<a href="#" class="btn btn-primary">提交</a>
													</div>
													
												</div>
											
											</form>
										
										</div>
										
									</div>	
									
									<div class="call-to-action">
									
										有问题? 拨打 +66 28 878 5452
									
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
											<li><a href="#section-7" class="anchor">旅游点评</a></li>
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