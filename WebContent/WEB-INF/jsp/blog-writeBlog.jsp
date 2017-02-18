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
						
							<h1 class="hero-title">写日记</h1>
							
						</div>
						
					</div>

				</div>
				
			</div>
			<!-- end Page title -->
			<form id="form" action="<%=request.getContextPath()%>/blog/writeBlogSubmit" method="post">
				<input id="title" name="title" type="hidden">
				<input id="place" name="place" type="hidden">
				<input id="picture" name="picture" type="hidden">
				<input id="content" name="content" type="hidden">
			</form>
			<div class="content-wrapper">
			
				<div class="container">
						<div class="row form-group">
							<div class="col-sm-2"><label>文章标题:</label></div>
							<div class="col-sm-6">
								<input id="title_s" name="title_s" type="text" class="col-sm-9 form-control">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-sm-2"><label>旅游地点:</label></div>
							<div class="col-sm-6">
									<input id="place_s" name="place_s" type="text" class="col-sm-9 form-control">
							</div>
						</div>	
						<div class="row form-group">
							<div class="col-sm-2"><label>文章封面:</label></div>
							<div class="col-sm-4">
								<input id="photo" name="photo" type="file"></input>
							</div>
							<div class="col-sm-2">
								<button onclick="uploadPhoto();" type="button" class="btn btn-primary">上传</button>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-sm-2">
								<img id="show" style="width:100px;"></img>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-sm-12">
								<div id="summernote"></div>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-sm-2"><button onclick="submitForm();" class="btn btn-primary">提交</button></div>
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
<!-- include summernote css/js-->
<link href="<%=request.getContextPath()%>/css/summernote.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/js/summernote.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.flexslider-min.js"></script> 
<script>
$(document).ready(function(){
  $('#summernote').summernote({
	  height: 400,  
      lang: 'zh-CN',
      callbacks: {  
            onImageUpload: function(files, editor, $editable) {  
                sendFile(files);  
            }  
      	}
  });
});

function sendFile(files, editor, $editable) {  
    var data = new FormData();  
    data.append("file", files[0]);  
    $.ajax({  
        data : data,  
        type : "POST",  
        url : "<%=request.getContextPath()%>/photoUpload", //图片上传出来的url，返回的是图片上传后的路径，http格式  
        cache : false,  
        contentType : false,  
        processData : false,  
        dataType : "json",  
        success: function(data) {//data是返回的hash,key之类的值，key是定义的文件名  
            $('#summernote').summernote('insertImage', data.data);
        },  
        error:function(){  
            alert("上传失败");  
        }  
    });
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
function submitForm(){
	$("#title").attr("value",$("#title_s").val());
	$("#place").attr("value",$("#place_s").val());
	$("#content").attr("value",$("#summernote").summernote("code"));
	if($("#title").val()==""){
		alert("请输入文章标题");
		return false;
	}
	if($("#place").val()==""){
		alert("请输入旅游地点");
		return false;
	}
	if($("#content").val()==""){
		alert("请输入文章内容");
		return false;
	}
	$("#form").submit();
}
</script> 

</body>
</html>