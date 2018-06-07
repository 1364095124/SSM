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
.view{
	 display: block;
	 width:300px;
	 overflow:hidden; 
	 white-space:nowrap; 
	 text-overflow:ellipsis;
}
.comment{
	
	
}
</style>
	<head>
		<meta charset="utf-8" />
		<title>主页</title>
		
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
								首页
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
  									,你本次登陆时间为2018年2月27日13时34分。
 								</div>

								<div class="row">
									<div class="space-6"></div>

									<div class="col-sm-7 infobox-container">
										<div class="infobox infobox-green  ">
											<div class="infobox-icon">
												<i class="icon-comments"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">3</span>
												<div class="infobox-content">新订单</div>
											</div>
											
										</div>

										<div class="infobox infobox-blue  ">
											<div class="infobox-icon">
												<i class="icon-twitter"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">11</span>
												<div class="infobox-content">用户总数</div>
											</div>

											
										</div>

										<div class="infobox infobox-pink  ">
											<div class="infobox-icon">
												<i class="icon-shopping-cart"></i>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">8</span>
												<div class="infobox-content">商家数目</div>
											</div>
											
										</div>

										
									

										
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
           <tr><td class="name">未处理订单：</td><td class="munber"><a href="#">3</a>&nbsp;个</td></tr>
           <tr><td class="name">待发货订单：</td><td class="munber"><a href="#">10</a>&nbsp;个</td></tr>
           <tr><td class="name">已成交订单数：</td><td class="munber"><a href="#">26</a>&nbsp;个</td></tr>
           <tr><td class="name">交易失败：</td><td class="munber"><a href="#">0</a>&nbsp;个</td></tr>
           <tr><td colspan="2">&nbsp;</td></tr>
           </tbody>
          </table>
         </div>
         </li>
         
         <li>
         <div class="Order_Statistics">
          <div class="title_name">商品统计信息</div>
           <table class="table table-bordered" style="width:300px;">
           <tbody>
           <tr><td class="name">商品总数：</td><td class="munber"><a href="#">13</a>&nbsp;个</td></tr>
           <tr><td class="name">上架商品：</td><td class="munber"><a href="#">13</a>&nbsp;个</td></tr>
           <tr><td class="name">下架商品：</td><td class="munber"><a href="#">0</a>&nbsp;个</td></tr>
           <tr><td class="name">商品评论：</td><td class="munber"><a href="#">216</a>&nbsp;条</td></tr>
           <tr><td colspan="2">&nbsp;</td></tr>

           </tbody>
          </table>
         </div>
         </li>
         
         <li>
         <div class="Order_Statistics">
          <div class="title_name">最新评论</div>
           <table class="table table-bordered" style="width:300px;">
           <tbody>
           <tr><td class="view" ><a href="#" class="comment">如上图那样的，字数多了就变成几个点，而鼠标靠上后，又全部显示出来，请问这种怎么下手，怎么弄啊</a></td></tr>
           <tr><td class="view"><a href="#" class="comment">这个椅子非常好看，大小尺寸也很合适，一次满意的购物</a></td></tr>
           <tr><td class="view"><a href="#" class="comment">这个沙发非常好看，大小尺寸也很合适，一次满意的购物</a></td></tr>
           <tr><td class="view"><a href="#" class="comment">这个凳子非常好看，大小尺寸也很合适，一次满意的购物</a></td></tr>
           <tr><td class="view"><a href="#" class="comment">这个衣柜非常好看，大小尺寸也很合适，一次满意的购物</a></td></tr>

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
     <i class="bigger-200"><img src="${ctx}/images/product_add.png"></i>
     <h5 class="margin-top">添加商品</h5>
     </a>
     <a href="Category_Manage.html" title="订单列表" class="btn  btn-primary btn-sm no-radius">
     <i class="bigger-200"><img src="${ctx}/images/order_list.png"></i>
     <h5 class="margin-top">订单列表</h5>
     </a>
     <a href="admin_info.html" title="个人信息" class="btn  btn-success btn-sm no-radius">
     <i class="bigger-200"><img src="${ctx}/images/personal.png"></i>
     <h5 class="margin-top">个人信息</h5>
     </a>
     <a href="Systems.html" title="修改密码" class="btn  btn-info btn-sm no-radius">
     <i class="bigger-200"><img src="${ctx}/images/setting.png"></i>
     <h5 class="margin-top">修改密码</h5>
     </a>
     <a href="Order_handling.html" title="店铺列表" class="btn  btn-purple btn-sm no-radius">
     <i class="bigger-200"><img src="${ctx}/images/shop.png"></i>
     <h5 class="margin-top">店铺列表</h5>
     </a>
   
     </div>
  </div>
 
 </div>
   
     </div>
     </div>
     
     
   
	</body>
	</html>