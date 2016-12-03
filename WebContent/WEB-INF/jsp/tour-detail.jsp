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

	<title>Tour Packer</title>
	<meta name="description" content="HTML Responsive Template for Tour Agency or Company Based on Twitter Bootstrap 3.x.x" />
	<meta name="keywords" content="tour package, holiday, hotel, vocation, booking, trip, travel, tourism, tourist" />
	<meta name="author" content="crenoveative">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<!-- Fav and Touch Icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://localhost:8080/myway/images/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://localhost:8080/myway/images/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://localhost:8080/myway/images/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="http://localhost:8080/myway/images/ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="http://localhost:8080/myway/images/ico/favicon.png">

	<!-- CSS Plugins -->
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/myway/bootstrap/css/bootstrap.min.css" media="screen">	
	<link href="http://localhost:8080/myway/css/animate.css" rel="stylesheet">
	<link href="http://localhost:8080/myway/css/main.css" rel="stylesheet">
	<link href="http://localhost:8080/myway/css/component.css" rel="stylesheet">
	
	<!-- CSS Font Icons -->
	<link rel="stylesheet" href="http://localhost:8080/myway/icons/ionicons/css/ionicons.css">
	<link rel="stylesheet" href="http://localhost:8080/myway/icons/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="http://localhost:8080/myway/icons/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
	<link rel="stylesheet" href="http://localhost:8080/myway/icons/simple-line-icons/css/simple-line-icons.css">
	<link rel="stylesheet" href="http://localhost:8080/myway/icons/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="http://localhost:8080/myway/icons/rivolicons/style.css">


	<!-- CSS Custom -->
	<link href="http://localhost:8080/myway/css/style.css" rel="stylesheet">

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
			<div class="page-title detail-page-title" style="background-image:url('http://localhost:8080/myway/images/detail/header.jpg');">
				
				<div class="container">
				
					<div class="flex-row">
						
						<div class="flex-column flex-md-8 flex-sm-12">
							
							<h1 class="hero-title">【跟团游】错峰高品低价|升级温泉+赠送260元豪礼|三大古城+双廊-雪山|6日游</h1>
							<p class="line18">昆明+大理+丽江 | 震撼表演+三大特色餐+升级酒店+马上行动+手慢无 | 团号: DX-1</p>
							
							<ul class="list-col clearfix">
								<li class="rating-box">
									<div class="rating-wrapper">
										<div class="raty-wrapper">
											<div class="star-rating-white" data-rating-score="4.0"></div> 
											<span style="display: block;"> / 7 条评论</span>
										</div>
									</div>
								</li>
								
								<li class="fav-box">
									<div class="meta">
										<span class="block"><button class="btn btn-fav"><i class="fa fa-book"></i></button></span>
										成交 98
									</div>
								</li>

								<li class="fav-box">
									<div class="meta">
										<span class="block"><button class="btn btn-fav"><i class="fa fa-heart"></i></button></span>
										满意度 100% 
									</div>
								</li>
								
								<li class="duration-box">
									<div class="meta">
										<span class="block">4</span>
										天
									</div>
									<div class="meta">
										&amp;
									</div>
									<div class="meta">
										<span class="block">3</span>
										夜
									</div>
								</li>
								
								<li class="price-box">
									<div class="meta">
										<span class="block">￥1422起</span>
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
														<li><span class="font600">产品编号: </span>1375072007</li>
														<li><span class="font600">历时: </span>4 天 &amp; 3 夜</li>
														<li><span class="font600">行程套餐:</span> 广州-云南，大理，丽江，昆明 | 4天3夜 | 特色餐饮 | 飞机直飞往返 | 豪华型/高档型酒店</li>
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
															<a href="#" class="btn btn-primary btn-sm btn-inverse">马上预订</a>
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
																<img src="http://localhost:8080/myway/images/tour-package/01.jpg" alt="Tour Package" />
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
																<img src="http://localhost:8080/myway/images/tour-package/02.jpg" alt="Tour Package" />
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
																<img src="http://localhost:8080/myway/images/tour-package/03.jpg" alt="Tour Package" />
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
												<div class="panel">
													<div class="panel-heading" role="tab" id="headingOne">
														<h6 class="panel-title">
															<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> 重要提示</a>
														</h6>
													</div>
													<div id="collapseOne" class="panel-collapse" role="tabpanel" aria-labelledby="headingOne">
														<div class="panel-body">
															<div class="faq-thread">
																<p>☆离团说明：本行程安排客人一旦确认，中途不得私自离团或者不走完行程，客人在未征得组团社的允许强制离团或脱团的，组团社不退任何费用，客人并赔偿组团社总团款的50%违约金；如因不可抗拒等原因所产生的费用由客人自理望请谅解，谢谢。<br> 
																☆ 不同年龄：由于云南地处高原，海拔高低悬殊较大。为了旅客的身体考虑，我们针对不同年龄段的旅客推出了最适合的线路行程，加之年轻人和老年人从思想需求和 身体需求各方面都存在差异，为了保证成团品质，此行程是专门为年龄段的客人定制的，如您不在此区间范围内，请致电客服详询。因为云南是旅游大省，但资源有 限，公司主推的都是明星产品，薄利多销，因此销量很大。如果您看中了此条线路，请在线或者致电客服免费服务热线咨询客服是否还有团位，请体谅！<br>  
																☆预订须知：
																1.本产品网页价格只针对此出发地户籍的顾客，如非此出发地户籍，请联系客服咨询！<br>
																2.此产品单人出游需要预付700元单房差，详情请拨打免费服务热线咨询客服。<br>
																☆在行程中的自由活动期间，旅游者可自愿参加旅游者与旅行社协商一致的购物活动或另行付费的旅游项目。自由活动的时间、地点由旅行社根据团队行程整体安排确定，并在“行程介绍附表”中注明。 <br>
																☆另行付费的旅游项目，由旅行社向旅游者明示，旅游者选择的，由旅游者现场签署自愿参加另行付费项目的书面文件。<br> 
																☆自由活动中可选择的购物场所由旅行社在“行程介绍附表”中向旅游者明示，旅游者可选择进入购物场所购物，也可以选择在自由活动期间自由活动，旅行社不得强迫旅游者进入购物场所，不得强迫购物。<br> 
																☆由于有关国家和地区的环保法律和政策要求，自由活动期间旅游大巴停运，期间可能不会开放车内空调或暖气。 <br>
																☆旅游途中遭遇突发事件或者旅游安全事故发生后，旅行社应当对旅游者做出妥善安排。旅游者接受相关组织或者机构救助后，应当支付应由个人承担的费用。 <br>
																☆旅行社特别提醒旅游者，在自由活动期间，注意自身人身财产安全。<br> 
																☆如游客在行程进行中因自身原因自愿取消行程或中途离团，未产生的旅游项目，一律视为自动放弃，未产生的费用一概不退。<br> 
																☆此销售价格为综合旅游报价已经非常优惠，持有老年证、军官证、学生证等证件均不退还所产生的折扣费用。 <br>
																☆关于发票，我社可提供机打发票（机票发票请在办理登机牌时要求机场打印，我社为旅行社资质，仅可为您提供团费发票。请您谅解。），如需发票的请提前联系客服或拨打。行程结束后索要发票旅行社概不提供，敬请谅解。 <br>
																☆如果您在行程当中出现任何问题请联系客服，行程结束后的投诉恕旅行社无法处理。 <br>
																☆儿童费用: 2-12岁儿童仅含半餐车位费700元，不含往返机票、门票、床位、早餐。超高儿童请于景区现付门票。 <br>
																☆ 酒店：指定入住酒店，空调标准间，参团时发生单房差的客人（指单男单女，我社根据当地酒店情况无法安排三人间或加床），请按规定补足单房差。入住酒店时客 人需缴纳押金，离店时退还。早餐为酒店房费中提供，若不占床则须补早餐费，按酒店收费规定现付；提前入住游客请自行前往入住，延住游客请自行返程。云南因 经济发展相对落后，其同等星级酒店与沿海等发达地区存在一定差距，请谅解。云南气候条件特殊，部分酒店空调定时开放，请游客入乡随俗。 <br>
																昆明入住准五星级酒店+特色四星温泉酒店。<br> 
																•昆明：绿洲大酒店，世纪金源北楼，香江大酒店，鸿润酒店， 泰丽酒店；<br>
																•大理：五星海景酒店金沙半岛或洱海龙湾大酒店，雾社温泉酒店；<br>
																•丽江：滇菌王大酒店，维也纳国际大酒店，丽苑酒店，鸿一笔、古城假日酒店；<br>
																•楚雄：悦莱酒店，玉波酒店，世纪星酒店，云华酒店，华升大酒店，凯天酒店；<br>
																★以上参考酒店无法接待的情况下，我社可选择其他酒店（同等协议价），但标准不低于上述酒店。 <br>
																☆单房差：单数出游人员需补足单房700元，此价格为淡季价格，旺季如遇黄金周、节假日、泼水节、寒暑假、政府控房等，请咨询客服重新核价。<br></p>
															</div>
														</div>
													</div>
												</div>
												<!-- end of panel -->

												<div class="panel">
													<div class="panel-heading" role="tab" id="headingOne">
														<h6 class="panel-title">
															<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseOne"> 退款说明</a>
														</h6>
													</div>
													<div id="collapseTwo" class="panel-collapse" role="tabpanel" aria-labelledby="headingOne">
														<div class="panel-body">
															<div class="faq-thread">
																<p>所有的产品，在使用有效期内未与商家预约或预约产品出行日期双方未达成一致，且未消费的可以全额退款；如用户已经与商家预约产品，申请退款需要承担实际损失或按照双方签署协议承担损失。<br></p>
															</div>
														</div>
													</div>
												</div>
												<!-- end of panel -->

												<div class="panel">
													<div class="panel-heading" role="tab" id="headingOne">
														<h6 class="panel-title">
															<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseOne"> 友情提示</a>
														</h6>
													</div>
													<div id="collapseThree" class="panel-collapse" role="tabpanel" aria-labelledby="headingOne">
														<div class="panel-body">
															<div class="faq-thread">
																<p>1、请出团前注意当地天气预报，云南地处云贵高原，当地昼夜温差大，请带足保暖防寒衣物，云南日照强，紫外线强。长时间在户外活动,请戴上太阳帽、太阳镜，涂抹防霜,以保护皮肤。天气变化多端，请携带雨具。<br> 
																2、云南属少数民族地区，请尊重当地少数民族的宗教及生活习俗。<br> 
																3、云南当地带中央空调的酒店空调均定时开放，还请见谅！<br>  
																4、出行必备：雨衣或雨伞、运动鞋、感冒药、肠胃药、防虫膏药、防晒油、太阳帽、太阳镜等。（版纳属热带雨林气候，请带适宜的衣服）<br>  
																5、当地土特产：珠宝玉石、云南白药、大理石、银饰工艺、云南烤烟、火腿、螺旋藻保健品、普洱茶、菌类、各种时令水果等。 <br> 
																6、由于云南地处高原，海拔较高，故该产品仅适用于65岁以下人群。<br>  
																7、我社产品品牌保证，请勿与市场其他低价产品相比较！<br></p>
															</div>
														</div>
													</div>
												</div>
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
															<img class="img-circle" src="http://localhost:8080/myway/images/man/01.jpg" alt="Man" />
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
															<img class="img-circle" src="http://localhost:8080/myway/images/man/02.jpg" alt="Man" />
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
															<img class="img-circle" src="http://localhost:8080/myway/images/man/03.jpg" alt="Man" />
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
														<div class="image">
															<img class="img-circle" src="http://localhost:8080/myway/images/man/04.jpg" alt="Man" />
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

		<footer class="footer scrollspy-footer"> <!-- add scrollspy-footer to stop sidebar scrollspy -->
			
			<div class="container">
			
				<div class="main-footer">
				
					<div class="row">
				
						<div class="col-xs-12 col-sm-5 col-md-3">
						
							<div class="footer-logo">
								<img src="http://localhost:8080/myway/images/logo-white.png" alt="Logo" />
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

	<!-- end Container Wrapper -->
 

 
	<!-- start Back To Top -->
	<div id="back-to-top">
		 <a href="#"><i class="fa fa-angle-up"></i></a>
	</div>
	<!-- end Back To Top -->


 
<!-- JS -->
<script type="text/javascript" src="http://localhost:8080/myway/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/myway/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/myway/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/myway/js/jquery.waypoints.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/myway/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="http://localhost:8080/myway/js/SmoothScroll.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/myway/js/jquery.slicknav.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/myway/js/jquery.placeholder.min.js"></script>
<!--<script type="text/javascript" src="js/instagram.min.js"></script>-->
<script type="text/javascript" src="http://localhost:8080/myway/js/spin.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/myway/js/jquery.introLoader.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/myway/js/select2.full.js"></script>
<script type="text/javascript" src="http://localhost:8080/myway/js/jquery.responsivegrid.js"></script>
<script type="text/javascript" src="http://localhost:8080/myway/js/ion.rangeSlider.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/myway/js/readmore.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/myway/js/slick.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/myway/js/validator.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/myway/js/jquery.raty.js"></script> 
<script type="text/javascript" src="http://localhost:8080/myway/js/customs.js"></script>

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