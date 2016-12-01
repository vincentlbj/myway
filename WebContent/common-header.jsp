<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header id="header">
			<nav class="navbar navbar-primary navbar-fixed-top navbar-sticky-function">

				<div class="navbar-top">
				
					<div class="container">
						
						<div class="flex-row flex-align-middle">
							<div class="flex-shrink flex-columns">
								<a class="navbar-logo" href="index.html">
									<img src="http://localhost:8080/myway/images/logo-white.png" alt="Logo" />
								</a>
							</div>
							<div class="flex-columns">
								<div class="pull-right">
								
									<div class="navbar-mini">
										<ul class="clearfix">

											<li class="user-action">
												<a href="<%=request.getContextPath()%>/loginPage" class="btn">登录/注册</a>
											</li>

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
										<li><a href="index.html">主页</a>
										</li>
										<li><a href="result-grid.html">度假</a>
											<ul>
												<li><a href="result-list.html">Result - List</a></li>
												<li><a href="result-grid.html">Result - Grid</a></li>
												<li><a href="detail-page.html">Detail Page</a></li>
											</ul>
										</li>
										<li><a href="#">酒店</a>
										</li>
										<li><a href="#">交通出行</a>
										</li>
										<li><a href="#">驴友日记</a>
										</li>
										<li><a href="#">门票</a>
										</li>
										<li><a href="#">路况天气</a>
										</li>
										<li><a href="#">周边推荐</a>
										</li>
										<li><a href="#">个人中心</a>
										</li>
										<li><a href="#">联系我们</a></li>
										<li><a href="#">关于我们</a></li>
									</ul>
								</div>
								
							</div>
							
							<div class="col-sm-3">
							
								<div class="navbar-phone"><i class="fa fa-phone"></i> 联系我们: +66 28 878 5452</div>
							
							</div>

						</div>
						
					</div>
				
				</div>

				<div id="slicknav-mobile"></div>
				
			</nav>


		</header>
		
		<div class="clear"></div>