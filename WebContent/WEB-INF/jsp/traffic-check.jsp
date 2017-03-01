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
	<link href="http://api.map.baidu.com/library/TrafficControl/1.4/src/TrafficControl_min.css" rel="stylesheet" type="text/css" />
	
	<style type="text/css">
		#l-map{height:400px;width:100%;}
		#r-result{width:100%;}
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
			<div class="page-title" style="background-image:url('<%=request.getContextPath()%>/images/hero-header/breadcrumb.jpg');">
				
				<div class="container">
				
					<div class="row">
					
						<div class="col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-3">
						
							<h1 class="hero-title">交通出行</h1>
							
						</div>
						
					</div>

				</div>
				
			</div>

			<div class="content-wrapper">
			
				<div class="container">
					<div class="row form-group">
						<div id="l-map"></div>
					</div>
					
					<div class="row form-group">
						<div class="col-sm-2"><label>起点:</label></div>
						<div class="col-sm-6">
							<input type="text" id="start" size="20" value="" class="col-sm-9 form-control">
						</div>
						<div id="searchResultPanel1" style="border:1px solid #C0C0C0;width:150px;height:auto; display:none;"></div>
					</div>
					
					<div class="row form-group">
						<div class="col-sm-2"><label>终点:</label></div>
						<div class="col-sm-6">
							<input type="text" id="end" size="20" value="" class="col-sm-9 form-control">
						</div>
						<div id="searchResultPanel2" style="border:1px solid #C0C0C0;width:150px;height:auto; display:none;"></div>
					</div>
					
					<div class="row form-group">
						<div class="col-sm-2"><button onclick="findBus();" class="btn btn-primary">查询公交路线</button></div>
						<div class="col-sm-2"><button onclick="findCar();" class="btn btn-primary">查询驾车路线</button></div>
						<div class="col-sm-2"><button onclick="findWalk();" class="btn btn-primary">查询步行路线</button></div>
					</div>
					
					<div class="row form-group">
						<div id="r-result"></div>
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
<!-- 加入百度地图api-->
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ofIpSEaXIvq8dVHRm52uVwCVnBzLNiPq"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/TrafficControl/1.4/src/TrafficControl_min.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.flexslider-min.js"></script> 
<script>
//百度地图API功能
function G(id) {
	return document.getElementById(id);
}
var map = new BMap.Map("l-map");
var point = new BMap.Point(116.331398,39.897445);
map.centerAndZoom(point,20);
function locateCity(result){
	var cityName = result.name;
	map.setCenter(cityName);
	alert("当前定位城市:"+cityName);
}
var myCity = new BMap.LocalCity();
myCity.get(locateCity);
var ctrl = new BMapLib.TrafficControl({//实时路况
       showPanel: false //是否显示路况提示面板
   });      
map.addControl(ctrl);
ctrl.setAnchor(BMAP_ANCHOR_BOTTOM_RIGHT);
map.enableScrollWheelZoom();   //启用滚轮放大缩小，默认禁用
var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
	{"input" : "start"
	,"location" : map
});
var bc = new BMap.Autocomplete(    //建立一个自动完成的对象
	{"input" : "end"
	,"location" : map
});
ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
var str = "";
	var _value = e.fromitem.value;
	var value = "";
	if (e.fromitem.index > -1) {
		value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
	}    
	str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;
	
	value = "";
	if (e.toitem.index > -1) {
		_value = e.toitem.value;
		value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
	}    
	str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
	G("searchResultPanel1").innerHTML = str;
});
bc.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
var str = "";
	var _value = e.fromitem.value;
	var value = "";
	if (e.fromitem.index > -1) {
		value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
	}    
	str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;
	
	value = "";
	if (e.toitem.index > -1) {
		_value = e.toitem.value;
		value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
	}    
	str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
	G("searchResultPanel2").innerHTML = str;
});
var myValue;
ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
var _value = e.item.value;
	myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
	G("searchResultPanel1").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;
	
	setPlace();
});
bc.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
var _value = e.item.value;
	myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
	G("searchResultPanel2").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;
	
	setPlace();
});
function setPlace(){
	map.clearOverlays();    //清除地图上所有覆盖物
	function myFun(){
		var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
		map.centerAndZoom(pp, 18);
		map.addOverlay(new BMap.Marker(pp));    //添加标注
	}
	var local = new BMap.LocalSearch(map, { //智能搜索
	  onSearchComplete: myFun
	});
	local.search(myValue);
}
function findBus(){
	if(document.getElementById("start").value==""||document.getElementById("end").value==""){
		alert("请输入起点和终点");
		return false;
	}
	var transit = new BMap.TransitRoute(map, {
		renderOptions: {map: map, panel: "r-result"}
	});
	transit.search(document.getElementById("start").value, document.getElementById("end").value);
}
function findCar(){
	if(document.getElementById("start").value==""||document.getElementById("end").value==""){
		alert("请输入起点和终点");
		return false;
	}
	var driving = new BMap.DrivingRoute(map, {renderOptions: {map: map, panel: "r-result", autoViewport: true}});
	driving.search(document.getElementById("start").value, document.getElementById("end").value);
}
function findWalk(){
	if(document.getElementById("start").value==""||document.getElementById("end").value==""){
		alert("请输入起点和终点");
		return false;
	}
	var walking = new BMap.WalkingRoute(map, {renderOptions:{map: map, panel: "r-result", autoViewport: true}});
	walking.search(document.getElementById("start").value, document.getElementById("end").value);
}
</script> 

</body>