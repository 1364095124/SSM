<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>

<!DOCTYPE HTML>
<html>
<style type="text/css">

</style>
  <head>
     <title>订单列表</title>
    
		<link href="${ctx}/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${ctx}/assets/css/font-awesome.min.css" />

	

		<link rel="stylesheet" href="${ctx}/assets/css/ace-ie.min.css" />



		<link rel="stylesheet" href="${ctx}/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/form.css"/>
  </head>
  
  <body>
    <div class="margin clearfix">
	    <div class="detailed_style" style="border-bottom:1px solid #dddddd;margin-bottom:20px;">
	    	<div class="Order_Details_style">
				<div class="Numbering">订单编号:<b>${order.orderid }</b>
				</div>
			</div>
			<div class=" clearfix cl">
				<div class="title_name" >收件人信息</div>
			</div>
			<div class="Info_style clearfix">
	        <div class="col-xs-3">  
	         <label class="label_name" for="form-field-2"> 收件人姓名： </label>
	         <div class="o_content">${order.buyer}</div>
	        </div>
	        <div class="col-xs-3">  
	         <label class="label_name" for="form-field-2"> 收件人电话： </label>
	         <div class="o_content">${order.buyer_phone }</div>
	        </div>
	         <div class="col-xs-3">  
	         <label class="label_name" for="form-field-2"> 收件地邮编： </label>
	         <div class="o_content">${order.buyer_code }</div>
	        </div>
	         <div class="col-xs-3">  
	         <label class="label_name" for="form-field-2"> 收件地址： </label>
	         <div class="o_content">${buyer_address }</div>
	        </div>
	     </div>
	     </div>
	     <div class="product_style">
    <div class="title_name">产品信息</div>
	    <div class="Info_style clearfix">
	      <div class="product_info clearfix">
	      <a href="#" class="img_link"><img src="${product.images}" style="width:150px;height:150px;"></a>
	      <span>
	      <a href="#" class="name_link">${product.productname }</a>
	      <b>${product.picture_title }</b>
	      <p>产地：${product.origin }</p>
	      <p>数量：${order.number }</p>
	      <p>价格：<b class="price"><i>￥</i>${product.new_price }</b></p>
	      <c:if test="${product.remain>0 }">
	      <p>状态：<i class="label label-success radius">有货</i></p>  
	      </c:if> 
	       <c:if test="${product.remain==0 }">
	      <p>状态：<i class="label label-success radius">缺货</i></p>  
	      </c:if> 
	      </span>
	      </div>
	    
	    </div>
    </div>
		<div class="Total_style">
		     <div class="Info_style clearfix">
		      <div class="col-xs-3">  
		         <label class="label_name" for="form-field-2"> 支付方式： </label>
		         <div class="o_content">${order.applystyle }</div>
		        </div>
		       
		        <div class="col-xs-3">  
		         <label class="label_name" for="form-field-2"> 订单生成日期： </label>
		         <div class="o_content">${order.orderdate }</div>
		        </div>
		         <div class="col-xs-3">  
		         <label class="label_name" for="form-field-2"> 快递名称： </label>
		         <div class="o_content">${order.express }</div>
		        </div>
		         <div class="col-xs-3">  
		         <label class="label_name" for="form-field-2"> 快递单号： </label>
		         <div class="o_content">${expressid }</div>
		        </div>
		         <div class="col-xs-3">  
		         <label class="label_name" for="form-field-2"> 发货日期： </label>
		         <div class="o_content">${delivery_date }</div>
		        </div>
		        </div>
		      <div class="Total_m_style"></span><span class="Total_price">总价：<b>${order.total_cost }</b>元</span></div>
		    </div>
		    <a href="${ctx}/order/order_list" class="btn btn-primary radius">返回</a>
    </div>
  </body>
</html>
