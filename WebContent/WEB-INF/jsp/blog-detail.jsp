<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
						
							<h1 class="hero-title">日记</h1>
							
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

								<div class="blog-item blog-single">
								
									<div class="blog-media">
										<img src="${diary.picture }" alt="" />
									</div>
											
									<div class="blog-content">
										<h3>${diary.title }</h3>
										<ul class="blog-meta clearfix">
											<li>由 ${diary.username } 编辑</li>
											<li>更新于 <fmt:formatDate value="${diary.updateDate }"  pattern="yyyy-MM-dd"/></li>
											<li>在 ${diary.place }</li>
											<li>${remarkCount } 条评论</li>
										</ul>
										<div class="blog-entry">  
											${diary.content }
										</div>
									</div>
								
									<div class="blog-extra">
										<div class="row">
											<div class="col-xs-12 col-sm-6 col-md-7 xs-mb">
											</div>
											
											<div class="col-xs-12 col-sm-6 col-md-5 xs-mb">
												<ul class="social-share-sm mt-5 pull-right pull-left-xs mt-20-xs">
																		
													<li><span><i class="fa fa-share-square"></i> 分享到</span></li>
													<li class="the-label"><a href="#">微信</a></li>
													<li class="the-label"><a href="#">微博</a></li>
													<li class="the-label"><a href="#">QQ空间</a></li>
													
												</ul>
											</div>
											<div class="clear"></div>
										</div>
									</div>
									
									<h4 class="uppercase">关于作者</h4>
									<div class="blog-author">
										<div class="author-label">
											<img src="<%=request.getContextPath()%>/images/man/01.jpg" alt="author image" class="img-circle" />
										</div>
										<div class="author-details">
											<ul class="social-share-sm pull-right pull-left-xs">
											</ul>
											<div class="clear-xs"></div>
											<h5 class="heading">${user.userName }</h5>
											<p>Prepared do an dissuade be so whatever steepest. Yet her beyond looked either day wished nay. By doubtful disposed do juvenile an. Now curiosity you explained immediate why behaviour. An dispatched impossible of of melancholy favourable. </p>
										</div>
									</div>
									
									<h4 id="allNum" class="uppercase">${remarkCount }条评论</h4>
									
									<div id="comment-wrapper">
									
										<ul id="remarkList" class="comment-item">
											
										</ul>
										
										<div class="clear"></div>
										
										<div class="text-center">
											<button onclick="getRemark();" type="button" class="btn btn-primary" >加载更多</button>
										</div>
										
									</div><!-- End Comment -->
									
									<h3 class="uppercase">留下评论</h3>

									<form method="post" id="contentForm" action="<%=request.getContextPath()%>/blog/blogRemarkSubmit" class="comment-form">
										<div class="row">
											<div class="col-md-12 mb-30">
												<div class="form-group">
													<label for="comment-message">评论 <span class="text-danger">*</span></label>
													<textarea id="content" name="content" class="form-control" rows="8"></textarea>
													<input type="hidden" name="dId" value="${diary.dId}">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<button type="button" onclick="submitRemark();" class="btn btn-primary">提交</button>
											</div>
										</div>
									</form>

									<div class="clear"></div>
									
									
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
										<h4 class="sidebar-title">最新投稿</h4>
										<div class="sidebar-module-inner">
										
											<ul class="sidebar-post">
												<c:forEach items="${newBlogList}" var="result">
													<li class="clearfix">
															<a href="blog-single.html">
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
$(document).ready(getRemark);
function search(){
	if($("#title").val()==""){
		return false;
	}
	window.location.href="<%=request.getContextPath()%>/blog/result?title="+$("#title").val();
}
var currPage = 1;
function getRemark(){
	$.ajax({
        type: "GET",
        url: "<%=request.getContextPath()%>/blog/getBlogRemarkById",
        data: {dId:${diary.dId},pageNum:currPage,pageSize:5},
        dataType: "json",
        success: function(data){
           if(data.resultList.length!=0){
        	   var list = data.resultList;
        	   $.each(list,function(index,result){
	        	   var remark='<li><div class="comment-avatar"><img src="'+result.picture+'"/></div>'+
				        '<div class="comment-header"><a id="xxx" href="javascritp:void(0);" onclick="reply($(this));" class="comment-reply">reply</a><h6 class="heading mt-0">'+result.username+'</h6><span class="comment-time">评论于 '+new Date(result.createDate).toLocaleString()+'</span></div>'+
						'<div class="comment-content"><p>'+result.content+'</p></div></li>';
				   $("#remarkList").append(remark);
        	   });
        	   currPage+=1;
           }
        }
    });
}
function submitRemark(){
	if($("#content").val().length>200){
		alert("评论长度不能超过200");
		return false;
	}
	$("#contentForm").submit();
}
function reply(object){
	name = object.siblings("h6").html();
	date = object.siblings("span").html();
	content = object.parent().siblings(".comment-content").children("p").html();
	str = "回复: "+name+" "+date+":\n\t"+content+"\n\n";
	$("#content").val(str).focus();
}
</script>
</body>

</html>