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
			
			<div class="breadcrumb-wrapper bg-light-2">
				
				<div class="container">
				
					<ol class="breadcrumb-list booking-step">
						<li><span>详情</span></li>
						<li><span>付款</span></li>
					</ol>
					
				</div>
				
			</div>
			
			<div class="content-wrapper">
			
				<div class="container">
			
					<div class="row">

						<div class="col-sm-8 col-md-9" role="main">
	
							<div class="section-title text-left">
								
								<h3>${tour.name } <small> ${fn:split(tour.during,",")[0]} 天 / ${fn:split(tour.during,",")[1]} 夜</small></h3>
								
							</div>
							
							<div class="payment-container">
							
								<form id="form" action="<%=request.getContextPath()%>/tour/pay/confirm" method="post">
									
									<div class="payment-box">
									
										<div class="payment-header clearfix">
										
											<div class="number">
												1
											</div>

											<div class="row gap-10">
											
												<div class="col-sm-9">
													<h5 class="heading mt-0">您选择的出游时间</h5>
												</div>

											</div>

										</div>
										
										<div class="payment-content">
										
											<div class="payment-content">
												<p>您的出游时间: <fmt:formatDate value="${tourPrice.go }"  pattern="yyyy-MM-dd"/> 至 <fmt:formatDate value="${tourPrice.back }"  pattern="yyyy-MM-dd"/></p>
											</div>
											
										</div>
										
									</div>
									
									<div class="payment-box">
									
										<div class="payment-header clearfix">
										
											<div class="number">
												2
											</div>
											
											<h5 class="heading mt-0">旅游细项</h5>
										
										</div>
										
										<div class="payment-content">
											
											<div class="payment-traveller">
											
												<div class="row gap-0">
												
													<div class="col-sm-9 col-sm-offser-3 col-md-10 col-md-offset-2">
														<h6 class="heading">填写详细信息</h6>
													</div>
													
												</div>
												


													<div class="form-horizontal">
														<div class="form-group gap-20">
															<label class="col-sm-3 col-md-2 control-label">联系人姓名:</label>
															<div class="col-sm-5 col-md-4">
																<input id="name" name="name" type="text" class="form-control" value="" required>
															</div>
														</div>
													</div>
													
													<div class="form-horizontal">
														<div class="form-group gap-20">
															<label class="col-sm-3 col-md-2 control-label">报名人数:</label>
															<div class="col-sm-5 col-md-4">
																<input id="number" name="number" type="text" class="form-control digits" onblur="changeNumber();" value="" required>
															</div>
														</div>
													</div>
													
													
													<div class="form-horizontal">
														<div class="form-group gap-20 select2-input-hide">
															<label class="col-sm-3 col-md-2 control-label">联系人性别:</label>
															<div class="col-sm-3 col-md-2">
																<select name="sex" class="select2-no-search form-control" data-placeholder="性别">
																	<option value="male">男</option>
																	<option value="female">女</option>
																</select>
															</div>
														</div>
													</div>
													
													<div class="form-horizontal">
														<div class="form-group gap-20">
															<label class="col-sm-3 col-md-2 control-label">联系人身份证:</label>
															<div class="col-sm-5 col-md-4">
																<input id="idCard" name="idCard" class="form-control digits" value="" required>
															</div>
														</div>
													</div>
													
													<div class="form-horizontal">
														<div class="form-group gap-20">
															<label class="col-sm-3 col-md-2 control-label">国籍:</label>
															<div class="col-sm-5 col-md-4">
																<select name="nation" class="select2-single form-control" data-placeholder="国籍">
																	<option value="中国">中国</option>
																	<option value="非中国">非中国</option>
																</select>
															</div>
														</div>
													</div>
													
													<div class="form-horizontal">
														<div class="form-group gap-20">
															<label class="col-sm-3 col-md-2 control-label">联系电话:</label>
															<div class="col-sm-5 col-md-4">
																<input id="phone" name="phone" class="form-control digits" value="" required>
															</div>
														</div>
													</div>
												
												
											</div>
											
										</div>
										
									</div>
									
									<div class="payment-box">
									
										<div class="payment-header clearfix">
										
											<div class="number">
												3
											</div>
											
											<h5 class="heading mt-0">完成付款 <small>/ <i class="fa fa-lock"></i> 安全</small></h5>

										</div>
										
										<div class="payment-content">
											
											<div id="paymentOption" class="payment-option-wrapper">
	
												<div class="row">
												
													<div class="col-sm-12">
													
														<div class="radio-block">
															<input id="payments1" name="payments" type="radio" class="radio digits" value="paymentsCreditCard" required/>
															<label class="" for="payments1"><span>信用卡</span> <img src="<%=request.getContextPath()%>/images/payment-credit-cards.jpg" alt="Image"></label>
														</div>
														
													</div>
													

													
												</div>
												
												<div id="paymentsCreditCard" class="payment-option-form">
												
													<div class="inner">
													
														<h5 class="mb-15">订单单价:  <span id="price">${tour.price }</span> 元</h5>
														<h5 class="mb-15">参团人数:  <span id="number2"></span> 位</h5>
														<h5 class="mb-15">总金额:  <span id="allPrice"></span> 元</h5>
														<p>一旦预订成功，将会从您的信用卡账户中扣取300元 </p>
													
														<div class="form-horizontal">
															<div class="form-group gap-20">
																<label class="col-sm-3 col-md-3 control-label">信用卡持有者</label>
																<div class="col-sm-6 col-md-6">
																	<input id="card_owner" type="text" class="form-control mb-0" placeholder="" required>
																</div>
															</div>
															<div class="form-group gap-20">
																<label class="col-sm-3 col-md-3 control-label">所属银行 </label>
																<div class="col-sm-3 col-md-2">
																	<select class="select2-no-search form-control" data-placeholder="所属银行">	
																		<option value="1">邮政储蓄</option>
																		<option value="2">工商银行</option>
																		<option value="3">建设银行</option>
																		<option value="4">中国银行</option>
																		<option value="5">农业银行</option>
																		<option value="6">交通银行</option>
																		<option value="7">招商银行</option>
																		<option value="8">民生银行</option>
																	</select>
																</div>
															</div>
															<div class="form-group gap-20">
																<label class="col-sm-3 col-md-3 control-label">信用卡号 </label>
																<div class="col-sm-6 col-md-6">
																	<input id="card_number" type="text" class="form-control mb-0 digits" placeholder="" required>
																</div>
															</div>

															<div class="form-group gap-20">
																<label class="col-sm-3 col-md-3 control-label">信用卡密码 </label>
																<div class="col-sm-6 col-md-6">
																	<input id="card_password" type="password" class="form-control mb-0 digits" placeholder="" required>
																</div>
															</div>
														</div>
													
													
													</div>
													
												</div>

											</div>

										</div>
										
									</div>
									
									<div class="checkbox-block">
										<input id="accept_booking" name="accept_booking" type="checkbox" class="checkbox" value="paymentsCreditCard" required/>
										<label class="" for="accept_booking">通过提交预订请求，您默认接受我们的条款和条件。</label>
									</div>
									
									<div class="row mt-20">
												
										<div class="col-sm-8 col-md-6">
										
											<p class="line18 mt-10"><span class="font600">注意事项</span>: 请确认以上信息填写无误之后点击“完成付款”.</p>

											<button onclick="$('#form').submit();" class="btn btn-primary">完成付款</button>
											
										
										</div>
										
									</div>
									<input name="tourId" type="hidden" value="${tour.id }">
									<input name="pId" type="hidden" value="${tourPrice.id }">
									<input name="token" type="hidden" value="${token }">
								</form>
								
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
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/messages_zh.js"></script>
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

function changeNumber(){
	$("#number2").html($("#number").val());
	var allPrice = parseInt($("#price").html()) * parseInt($("#number2").html());
	$("#allPrice").html(allPrice);
}
  
$().ready(function(){
	$("#form").validate();
});
</script>

</body>

</html>