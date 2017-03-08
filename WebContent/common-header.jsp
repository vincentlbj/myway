<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<header id="header">
			<nav class="navbar navbar-primary navbar-fixed-top navbar-sticky-function">

				<div class="navbar-top">
				
					<div class="container">
						
						<div class="flex-row flex-align-middle">
							<div class="flex-shrink flex-columns">
								<a class="navbar-logo" href="<%=request.getContextPath()%>/index">
									<img src="<%=request.getContextPath()%>/images/logo-white.png" alt="Logo" />
								</a>
							</div>
							<div class="flex-columns">
								<div class="pull-right">
								
									<div class="navbar-mini">
										<ul class="clearfix">
											<c:if test="${sessionScope.userInfo==null }">												
												<li class="user-action">
													<a href="<%=request.getContextPath()%>/loginPage" class="btn">登录/注册</a>
												</li>
											</c:if>
											<c:if test="${sessionScope.userInfo!=null }">												
												<li class="user-action">
													<a href="<%=request.getContextPath()%>/user/info" class="btn">欢迎你,${sessionScope.userInfo.userName }</a>
													<a href="<%=request.getContextPath()%>/user/logout" class="btn">注销</a>
												</li>
											</c:if>
										</ul>
									</div>
						
								</div>
							</div>
						</div>

					</div>
					
				</div>
				
				<div class="navbar-bottom hidden-sm hidden-xs">
				
					<div class="container">
					
						<div class="row">
						
							<div class="col-sm-9">
								
								<div id="navbar" class="collapse navbar-collapse navbar-arrow">
									<ul class="nav navbar-nav" id="responsive-menu">
										<li><a href="<%=request.getContextPath()%>/index">主页</a>
										</li>
										<li><a href="<%=request.getContextPath()%>/tour/result/grid">度假</a>
										</li>
										<li><a href="<%=request.getContextPath()%>/hotel/result/grid">酒店</a>
										</li>
										<li><a href="<%=request.getContextPath()%>/ticket/result/grid">门票</a>
										</li>
										<li><a href="<%=request.getContextPath()%>/traffic/checkTraffic">交通出行</a>
										</li>
										<li>
											<a href="<%=request.getContextPath()%>/blog/result">驴友日记</a>
											<ul>
												<li><a href="<%=request.getContextPath()%>/blog/writeBlog">写日记</a></li>
												<li><a href="<%=request.getContextPath()%>/blog/result">看日记</a></li>
											</ul>
										</li>
										<li><a href="#">热门问答</a>
										</li>
										<li><a href="<%=request.getContextPath()%>/exposure/list">曝光台</a>
										</li>
										<li>
											<a href="#">个人中心</a>
											<ul>
												<li><a href="<%=request.getContextPath()%>/user/info">我的信息</a></li>
												<li><a href="<%=request.getContextPath()%>/user/tour">我的行程</a></li>
												<li><a href="<%=request.getContextPath()%>/user/info">我的酒店</a></li>
												<li><a href="<%=request.getContextPath()%>/user/info">我的门票</a></li>
											</ul>
										</li>
										<li><a href="#">联系我们</a></li>
										<li><a href="#">关于我们</a></li>
									</ul>
									
								</div>
								
							</div>
							
							<div class="col-sm-3">
							
								<div class="navbar-phone"><i class="fa fa-phone"></i> 联系我们: +88888888</div>
							</div>

					</div>
					
<%-- 					<div class="row">
						<div class="col-sm-8" style="margin-top:10px;">
							<img src="<%=request.getContextPath()%>/images/common-stripe.jpg" style="height:75px;">
						</div>
						<div class="col-sm-4">
							<iframe allowtransparency="true" frameborder="0" width="410" height="98" scrolling="no" src="//tianqi.2345.com/plugin/widget/index.htm?s=1&z=1&t=1&v=0&d=2&bd=0&k=&f=&q=1&e=1&a=1&c=54511&w=410&h=98&align=center">
							</iframe>
						</div>
					</div> --%>
						
				</div>
				
			</div>

				<div id="slicknav-mobile"></div>
				
			</nav>


		</header>
		
		<div class="clear"></div>