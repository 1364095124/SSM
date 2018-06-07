<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
	
	</head>

	<body>
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
		</script>
		
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							视家后台管理系统
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">

						<li class="purple">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-bell-alt icon-animated-bell"></i>
								<span class="badge badge-important">8</span>
							</a>

							<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-warning-sign"></i>
									8条通知
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-pink icon-comment"></i>
												新闻评论
											</span>
											<span class="pull-right badge badge-info">+12</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<i class="btn btn-xs btn-primary icon-user"></i>
										切换为编辑登录..
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>
												新订单
											</span>
											<span class="pull-right badge badge-success">+8</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-info icon-twitter"></i>
												粉丝
											</span>
											<span class="pull-right badge badge-info">+11</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										查看所有通知
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						

						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>欢迎光临,</small>
									Jason
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="icon-cog"></i>
										设置
									</a>
								</li>

								<li>
									<a href="#">
										<i class="icon-user"></i>
										个人资料
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#">
										<i class="icon-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					

					<ul class="nav nav-list">
						<li class="active">
							<a href="#">
								<i class="icon-dashboard"></i>
								<span class="menu-text"> 系统首页 </span>
							</a>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-desktop"></i>
								<span class="menu-text"> 产品管理 </span>
								<b class="arrow icon-angle-down"></b>
							</a>
							
							<ul class="submenu">
								<li>
									<a href="${ctx}/product/product_list" target="iframe">
										<i class="icon-double-angle-right"></i>
										产品列表
									</a>
								</li>
								
				
							</ul>
						</li>

						

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 交易管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="${ctx}/order/order_list" target="iframe">
										<i class="icon-double-angle-right"></i>
										所有订单
									</a>
								</li>
								<li>
									<a href="${ctx}/order/order_new" target="iframe">
										<i class="icon-double-angle-right"></i>
										新订单管理
									</a>
								</li>
								
								<li>
									<a href="item3.jsp" target="iframe">
										<i class="icon-double-angle-right"></i>
										退款管理
									</a>
								</li>
								
							
							</ul>
						</li>


						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-user"></i>
								<span class="menu-text"> 用户管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="item4.jsp?flag=1" target="iframe">
										<i class="icon-double-angle-right"></i>
										用户列表
									</a>
								</li>

								<li>
									<a href="item4.jsp?flag=2" target="iframe">
										<i class="icon-double-angle-right"></i>
										黑名单列表
									</a>
								</li>
								
							
							</ul>
						</li>	
						
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-laptop"></i>
								<span class="menu-text"> 店铺管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="item5.jsp" target="iframe">
										<i class="icon-double-angle-right"></i>
										店铺列表
									</a>
								</li>

								<li>
									<a href="item6.jsp" target="iframe">
										<i class="icon-double-angle-right"></i>
										店铺审核
										<span class="badge badge-danger">5</span>
									</a>
								</li>
	
							</ul>
						</li>	

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-comments-alt"></i>
								<span class="menu-text"> 消息管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="item7.jsp" target="iframe">
										<i class="icon-double-angle-right"></i>
										文章列表
									</a>
								</li>

								<li>
									<a href="item8.jsp" target="iframe">
										<i class="icon-double-angle-right"></i>
										留言列表
									</a>
								</li>
							
							</ul>
						</li>	
						
						
					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					
				</div>
、
		
	
</body>
</html>

