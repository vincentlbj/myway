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
			<div class="page-title" style="background-image:url('<%=request.getContextPath()%>/images/hero-header/breadcrumb.jpg');">
				
				<div class="container">
				
					<div class="row">
					
						<div class="col-sm-10 col-sm-offset-1 col-md-6 col-md-offset-3">
						
							<h1 class="hero-title">个人中心</h1>
							
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
										<form id="form">
											<div class="section-title text-left">
												<h4>我的信息</h4>
											</div>
											<input id="uId" name="uId"
												value="${sessionScope.userInfo.uId }" type="hidden">
											<div class="row form-group">
													<div class="col-sm-2"><label style="font-size:18px;">用户名:</label></div>
													<div class="col-sm-6">
														<input id="userName" name="userName" value="${sessionScope.userInfo.userName }" type="text" class="col-sm-9 form-control" readonly="readonly">
													</div>
												</div>
												
												<div class="row form-group">
													<div class="col-sm-2"><label style="font-size:18px;">邮箱:</label></div>
													<div class="col-sm-6">
														<input id="email" name="email" value="${sessionScope.userInfo.email }" type="text" class="col-sm-9 form-control" readonly="readonly">
													</div>
												</div>
												
												<div class="row form-group">
													<div class="col-sm-2"><label style="font-size:18px;">头像:</label></div>
													<div class="col-sm-4">
														<img id="show" src="${sessionScope.userInfo.picture }" style="width:100px;"></img>
													</div>
													<div class="col-sm-4">
														<input id="photo" name="photo" type="file"></input>
														<button id="uploadPhotoButton" onclick="uploadPhoto();" type="button" class="btn btn-primary">上传</button>
														<input id="picture" name="picture" type="hidden"></input>
													</div>
												</div>
												
										</div>
										<button onclick="modifyInfo();" type="button" class="btn btn-primary">修改</button>
										<button onclick="submitModify();" id="submitModifyButton" type="button" class="btn btn-primary">保存</button>
									</form>							
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
$(function(){
	    //表单转json函数
	        $.fn.serializeObject = function(){
	                var o = {};
	                var a = this.serializeArray();
	                $.each(a, function() {
	                    if (o[this.name] !== undefined) {
	                        if (!o[this.name].push) {
	                            o[this.name] = [o[this.name]];
	                        }
	                        o[this.name].push(this.value || '');
	                    } else {
	                        o[this.name] = this.value || '';
	                    }
	                });
	                return o;
	            };
	    //表单转json结束
});

	$("#photo").hide();
	$("#uploadPhotoButton").hide();
	$("#submitModifyButton").hide();

	function modifyInfo(){
		$("#email").removeAttr("readonly");
		$("#photo").show();
		$("#uploadPhotoButton").show();
		$("#submitModifyButton").show();
	}
	
	function submitModify(){
		$.ajax({  
	        data : JSON.stringify($("#form").serializeObject()),  
	        type : "POST",  
	        url : "<%=request.getContextPath()%>/user/modifyInfo", //图片上传出来的url，返回的是图片上传后的路径，http格式  
	        cache : false,
	        contentType : "application/json;charset=utf-8",
	        success: function(data) {//data是返回的hash,key之类的值，key是定义的文件名  
	            if(data.status=="success"){
	            	alert("保存成功");
	            }
	        	if(data.status=="fail"){
	        		alert("保存失败");
	        	}
	        },  
	        error:function(){  
	            alert("保存失败");  
	        }  
	    });
	}
	
	function validatePic(){
		var pic = $("#photo").val();
		if(pic==""){
			alert("请选择文件");
			return false;
		}
		var strs = pic.split(".");
		var suffix = strs[strs.length-1].toLocaleLowerCase();;
		if(suffix != 'jpg' && suffix != 'gif' && suffix != 'jpeg' && suffix != 'png'){
			alert("请选择图片");
			$("#photo").attr("value","");
			return false;
		}
	}
	
	function uploadPhoto(){
		var flag = validatePic();
		if(flag==false){
			return false;
		}
		var data = new FormData();
		var files = $("#photo").prop('files');
	    data.append("file",files[0]);
		$.ajax({  
	        data : data,  
	        type : "POST",  
	        url : "<%=request.getContextPath()%>/photoUpload", //图片上传出来的url，返回的是图片上传后的路径，http格式  
	        cache : false,  
	        contentType : false,  
	        processData : false,  
	        dataType : "json",  
	        success: function(data) {//data是返回的hash,key之类的值，key是定义的文件名  
	            $("#show").attr("src",data.data);
	        	$("#picture").attr("value",data.data);
	        },  
	        error:function(){  
	            alert("上传失败");  
	        }  
	    });
	}
</script>

</body>

</html>