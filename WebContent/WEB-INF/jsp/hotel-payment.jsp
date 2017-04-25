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
								
								<h3>${hotel.name }</h3>
								
							</div>
							
							<div class="payment-container">
							
								<form id="form" action="<%=request.getContextPath()%>/hotel/pay/confirm" method="post">
									
									<div class="payment-box">
									
										<div class="payment-header clearfix">
										
											<div class="number">
												1
											</div>
											
											<h5 class="heading mt-0">填写信息</h5>
										
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
															<label class="col-sm-3 col-md-2 control-label">住店日期:</label>
															<div class="col-sm-5 col-md-4">
																<input type="text" class="form-control" id="date" name="date">
															</div>
														</div>
													</div>
													
													<div class="form-horizontal">
														<div class="form-group gap-20 select2-input-hide">
															<label class="col-sm-3 col-md-2 control-label">套房数:</label>
															<div class="col-sm-3 col-md-2">
																<select id="room" class="form-control" onchange="changeNumber();" required>
																	<option value="1" selected = "selected">1</option>
																	<option value="2">2</option>
																</select>
															</div>
														</div>
													</div>
													
													<h5 class="mb-15">订单单价:  <span id="price">${hotel.price }</span> 元</h5>
													<h5 class="mb-15">套房数:  <span id="room2"></span> 间</h5>
													<h5 class="mb-15">总金额:  <span id="allPrice"></span> 元</h5>
												
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
														<label class="col-sm-3 col-md-2 control-label">联系电话:</label>
														<div class="col-sm-5 col-md-4">
															<input id="memberPhone" name="memberPhone" class="form-control" value="" required>
														</div>
													</div>
												</div>
												
												<br>
												
												<div id="allInfo">
													
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

											<button onclick="submitOrder();" class="btn btn-primary">提交订单</button>
											
										
										</div>
										
									</div>
									<input name="token" type="hidden" value="${token }">
									<input id="pricestr" name="price" type="hidden" value="">
									<input name="hotelId" type="hidden" value="${hotel.id }">
									<input id="infostr" name="info" type="hidden" value="">
									<input id="roomstr" name="room" type="hidden" value="">
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
<div id="info" style="display: none;">
	<div class="form-horizontal">
		<div class="form-group gap-20">
			<label class="col-sm-3 col-md-2 control-label">住客姓名:</label>
			<div class="col-sm-5 col-md-4">
				<input id="name{0}" class="form-control" value="" required>
			</div>
		</div>
	</div>
	
	<div class="form-horizontal">
		<div class="form-group gap-20">
			<label class="col-sm-3 col-md-2 control-label">住客身份证:</label>
			<div class="col-sm-5 col-md-4">
				<input id="idCard{0}" class="form-control digits" value="" required>
			</div>
		</div>
	</div>
</div>


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
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.js"></script>

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
	var room = $("#room").val();
	$("#room2").html(room);
	var allPrice = parseInt($("#price").html()) * room;
	$("#allPrice").html(allPrice);
	addId(room);
}


function addId(number){
	$("#allInfo").empty();
	for (var i = 0; i < number; i++){
		//为每个输入框添加验证
		var element = jQuery.validator.format($.trim($("#info").html()));
		$("#allInfo").append(element(i));
		$("#allInfo").append('<br>');
	}
}

function submitOrder(){
	var infos = new Array();
	var room = $("#room").val();
	for(var i = 0; i < room; i++){
		var p = new person($("#name"+i).val(),$("#idCard"+i).val());
		infos[i] = p;
	}
	$("#infostr").attr("value",JSON.stringify(infos));
	$("#roomstr").attr("value",room);
	$("#pricestr").attr("value",$("#allPrice").html());
	$("#form").submit();
}

function person(name,idCard){
	this.name = name;
	this.idCard = idCard;
}

$('#date').datetimepicker({
	format: 'yyyy-mm-dd',
	minView: 'month',
	autoclose: true
});
  
$().ready(function(){
	$("#form").validate();
	changeNumber();
});
</script>

</body>

</html>