<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<style type="text/css">
a{
	text-decoration:none;
}
a:hover{
	color:#ffffff;
}

ul li{
	float:left;
	list-style-type:none;
	padding-right:20px;
	padding-top:20px;
}
</style>
	<head>
		<meta charset="utf-8" />
		<title>控制台 - Bootstrap后台管理系统模版Ace下载</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- basic styles -->
		<link href="${ctx}/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${ctx}/assets/css/font-awesome.min.css" />

	

		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

		<!-- ace styles -->

		<link rel="stylesheet" href="${ctx}/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ace-skins.min.css" />

		

		
		<script src="${ctx}/jquery/jquery.min.js"></script>
		<script src="${ctx}/assets/js/ace-extra.min.js"></script>
		<script src="${ctx}/assets/js/bootstrap.min.js"></script>
		<script src="${ctx}/assets/js/typeahead-bs2.min.js"></script>
		<script src="${ctx}/assets/js/ace-elements.min.js"></script>
		<script src="${ctx}/assets/js/ace.min.js"></script>
	
	</head>
<body>
	<div class="page-content">
						<div class="page-header">
							<h1>
								控制台
								<small>
									<i class="icon-double-angle-right"></i>
									 查看
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								 <div class="alert alert-block alert-success">
  									<button type="button" class="close" data-dismiss="alert">
  										<i class="icon-remove"></i>
  									</button>
  									<i class="icon-ok green"></i>
  									欢迎使用<strong class="green">视家后台管理系统<small>(v1.2)</small></strong>
  									,你本次登陆时间为2016年7月12日13时34分，登陆IP:192.168.1.110.	
 								</div>

								<div class="row">
									<div class="space-6"></div>

									<div class="col-sm-7 infobox-container">
										<div class="infobox infobox-green  ">
											<div class="infobox-icon">
												<i class="icon-comments"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">32</span>
												<div class="infobox-content">个评论</div>
											</div>
											<div class="stat stat-success">8%</div>
										</div>

										<div class="infobox infobox-blue  ">
											<div class="infobox-icon">
												<i class="icon-twitter"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">11</span>
												<div class="infobox-content">新粉丝</div>
											</div>

											<div class="badge badge-success">
												+32%
												<i class="icon-arrow-up"></i>
											</div>
										</div>

										<div class="infobox infobox-pink  ">
											<div class="infobox-icon">
												<i class="icon-shopping-cart"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">8</span>
												<div class="infobox-content">新订单</div>
											</div>
											<div class="stat stat-important">4%</div>
										</div>

										<div class="infobox infobox-red  ">
											<div class="infobox-icon">
												<i class="icon-beaker"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">7</span>
												<div class="infobox-content">调查</div>
											</div>
										</div>

										<div class="infobox infobox-orange2  ">
											<div class="infobox-chart">
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">6,251</span>
												<div class="infobox-content">页面查看次数</div>
											</div>

											<div class="badge badge-success">
												7.2%
												<i class="icon-arrow-up"></i>
											</div>
										</div>

										<div class="infobox infobox-blue2  ">
											<div class="infobox-progress">
												<div class="easy-pie-chart percentage" data-percent="42" data-size="46">
													<span class="percent">42</span>%
												</div>
											</div>

											<div class="infobox-data">
												<span class="infobox-text">交易使用</span>

												<div class="infobox-content">
													<span class="bigger-110">~</span>
													剩余58GB
												</div>
											</div>
										</div>
									</div>
								</div>

 				<div class="state-overview clearfix">
                  <div class="col-lg-3 col-sm-6" >
                      <section class="panel" style="background-color:rgba(32,178,170,0.5);">
                      
                          <div class="symbol terques">
                             <i class="icon-user"></i>
                          </div>
                          
                          <div class="value">
                              <a href="#" style="color:#ffffff;text-decoration:none;"><h1>34522</h1></a>
                              <p>商城用户</p>
                          </div>
                    
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel" style="background-color:rgba(30,144,255,0.5);">
                          <div class="symbol red">
                              <i class="icon-tags"></i>
                          </div>
                          <div class="value">
                              <a href="#" style="color:#ffffff;text-decoration:none;"><h1>140</h1></a>
                              <p>分销记录</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel" style="background-color:rgba(32,178,170,0.5);">
                          <div class="symbol yellow">
                              <i class="icon-shopping-cart"></i>
                          </div>
                          <div class="value">
                              <a href="#" style="color:#ffffff;text-decoration:none;"><h1>345</h1></a>
                              <p>商城订单</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel" style="background-color:rgba(32,178,170,0.5);">
                          <div class="symbol blue">
                              <i class="icon-bar-chart"></i>
                          </div>
                          <div class="value">
                              <a href="#" style="color:#ffffff;text-decoration:none;"><h1>￥34,500</h1></a>
                              <p>交易记录</p>
                          </div>
                      </section>
                  </div>
              </div>
             <!--实时交易记录-->
             <div class="clearfix">
           <ul>
           <li>
          <div class="Order_Statistics ">
          <div class="title_name">订单统计信息</div>
           <table class="table table-bordered" style="width:300px;">
           <tbody>
           <tr><td class="name">未处理订单：</td><td class="munber"><a href="#">0</a>&nbsp;个</td></tr>
           <tr><td class="name">待发货订单：</td><td class="munber"><a href="#">10</a>&nbsp;个</td></tr>
           <tr><td class="name">待结算订单：</td><td class="munber"><a href="#">13</a>&nbsp;个</td></tr>
           <tr><td class="name">已成交订单数：</td><td class="munber"><a href="#">26</a>&nbsp;个</td></tr>
           <tr><td class="name">交易失败：</td><td class="munber"><a href="#">26</a>&nbsp;个</td></tr>
           </tbody>
          </table>
         </div>
         </li>
         
         <li>
         <div class="Order_Statistics">
          <div class="title_name">商品统计信息</div>
           <table class="table table-bordered" style="width:300px;">
           <tbody>
           <tr><td class="name">商品总数：</td><td class="munber"><a href="#">340</a>&nbsp;个</td></tr>
           <tr><td class="name">回收站商品：</td><td class="munber"><a href="#">10</a>&nbsp;个</td></tr>
           <tr><td class="name">上架商品：</td><td class="munber"><a href="#">13</a>&nbsp;个</td></tr>
           <tr><td class="name">下架商品：</td><td class="munber"><a href="#">26</a>&nbsp;个</td></tr>
           <tr><td class="name">商品评论：</td><td class="munber"><a href="#">21s6</a>&nbsp;条</td></tr>

           </tbody>
          </table>
         </div>
         </li>
         
         <li> 
         <div class="Order_Statistics">
          <div class="title_name">会员登陆统计信息</div>
           <table class="table table-bordered" style="width:300px;">
           <tbody>
           <tr><td class="name">注册会员登陆：</td><td class="munber"><a href="#">3240</a>&nbsp;次</td></tr>
           <tr><td class="name">新浪会员登陆：</td><td class="munber"><a href="#">1130</a>&nbsp;次</td></tr>
           <tr><td class="name">支付宝登陆：</td><td class="munber"><a href="#">1130</a>&nbsp;次</td></tr>
           <tr><td class="name">QQ会员登陆：</td><td class="munber"><a href="#">1130</a>&nbsp;次</td></tr>
           <tr><td colspan="2">&nbsp;</td></tr>
           </tbody>
          </table>
         </div> 
         </li>
         </ul> 
         </div>
 <!--记录-->
 <div class="clearfix">
  <div class="home_btn">
     <div>
     <a href="picture-add.html" title="添加商品" class="btn  btn-info btn-sm no-radius">
     <i class="bigger-200"><img src="images/icon-addp.png"></i>
     <h5 class="margin-top">添加商品</h5>
     </a>
     <a href="Category_Manage.html" title="产品分类" class="btn  btn-primary btn-sm no-radius">
     <i class="bigger-200"><img src="images/icon-cpgl.png"></i>
     <h5 class="margin-top">产品分类</h5>
     </a>
     <a href="admin_info.html" title="个人信息" class="btn  btn-success btn-sm no-radius">
     <i class="bigger-200"><img src="images/icon-grxx.png"></i>
     <h5 class="margin-top">个人信息</h5>
     </a>
     <a href="Systems.html" title="系统设置" class="btn  btn-info btn-sm no-radius">
     <i class="bigger-200"><img src="images/xtsz.png"></i>
     <h5 class="margin-top">系统设置</h5>
     </a>
     <a href="Order_handling.html" title="商品订单" class="btn  btn-purple btn-sm no-radius">
     <i class="bigger-200"><img src="images/icon-gwcc.png"></i>
     <h5 class="margin-top">商品订单</h5>
     </a>
     <a href="picture-add.html" title="添加广告" class="btn  btn-pink btn-sm no-radius">
     <i class="bigger-200"><img src="images/icon-ad.png"></i>
     <h5 class="margin-top">添加广告</h5>
     </a>
      <a href="article_add.html" title="添加文章" class="btn  btn-info btn-sm no-radius">
     <i class="bigger-200"><img src="images/icon-addwz.png"></i>
     <h5 class="margin-top">添加文章</h5>
     </a>
     </div>
  </div>
 
 </div>
   
     </div>
     </div>
     
     
   
	</body>
	</html>