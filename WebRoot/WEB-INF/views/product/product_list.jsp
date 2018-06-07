<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>

<!DOCTYPE html>
<html lang="en">
<style type="text/css">
#example tr td{
	text-align:center; 

}
#example tr th{
	text-align:center;
}
#zt1{
		width:40px;
		height:20px;
		background-color:red;
	}
#zt2{
		width:40px;
		height:20px;
		background-color:#FFD700;
	}
</style>
<head>
	<meta charset="utf-8">
	
	<meta name="viewport" content="initial-scale=1.0, maximum-scale=2.0">

	<title>商品列表</title>

	
	
	
	<link rel="stylesheet" type="text/css" href="${ctx}/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="${ctx}/assets/css/font-awesome.min.css" />

	<link rel="stylesheet" href="${ctx}/bootstrap-3.3.7-dist/css/bootstrap-responsiv.css" />
	<script type="text/javascript" src="http://sandbox.runjs.cn/uploads/rs/470/tpbxvsez/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="http://sandbox.runjs.cn/uploads/rs/470/tpbxvsez/jquery.dataTables.m.js"></script>
	<script type="text/javascript" src="http://sandbox.runjs.cn/uploads/rs/470/tpbxvsez/dataTables.bootstrap.js"></script>
</head>
	<body class="dt-example">
	<script>
		$(document).ready(function() {
		$('#example').dataTable( {
		"oLanguage": {
		"sLengthMenu": "每页显示 _MENU_ 条记录",
		"sZeroRecords": "抱歉， 没有找到",
		"sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
		"sInfoEmpty": "没有数据",
		"sInfoFiltered": "(从 _MAX_ 条数据中检索)",
		"oPaginate": {
		"sFirst": "首页",
		"sPrevious": "前一页",
		"sNext": "后一页",
		"sLast": "尾页"
		},
		"sZeroRecords": "没有检索到数据",
		"sProcessing": "<img src='./loading.gif' />"
		}
		} );
	} );
	</script>
	
	<div class="add" style="border:1px solid #f5f5f5;position:absolute;top:25px;left:15px;width:100%;">
       <span >
        <a href="${ctx}/product/product_more?operation=add" title="添加商品" class="btn btn-primary"><i class=""glyphicon glyphicon-plus"></i>添加商品</a>
       </span>
       <span style="position:relative;left:1000px;">共：<b style="color:red;">2334</b>件商品</span>
     </div>
	
	<div class="container" style="position:absolute;top:50px;">
		<section>
			<h1 style="font-size:25px;">商品管理 <span></span></h1>

			
			<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>商品编码</th>
						<th>商品名称</th>
						<th>原价格</th>
						<th>现价</th>
						<th>产地</th>
						<th>图片</th>
						<th>审核状态</th>
						<th>状态</th>
						<th></th>
					</tr>
				</thead>
			
				<tbody>
				<c:forEach items="${requestScope.product_list}" var="product">
					<tr>
						<td >${product.productid }</td>
						<td><a href="${ctx}/product/product_more?operation=more&productid=${product.productid}" style="text-decoration:underline;">${product.productname }</a></td>
						<td>${product.r_price }</td>
						<td>${product.new_price }</td>
						<td>${product.origin }</td>
						<td><img width="50px" src="${product.images }"/></td>
						<td>已审核</td>
						<c:if test="${product.state=='热销中' }">
						<td><div id="zt1"><span style="color:#ffffff;font-size:12px;">${product.state }</span></div></td>
						</c:if>
						
						<c:if test="${product.state=='已下架' }">
						<td><div id="zt2"><span style="color:#ffffff;font-size:12px;">${product.state }</span></div></td>
						</c:if>
						<td class="td-manage">
	        				<a href="${ctx}/product/product_change?productid=${product.productid}" title="下（上）架" class="btn btn-xs btn-success">
	        					<i class="icon-ok bigger-120"></i>
	        				</a> 
	        				<a title="编辑" href="${ctx}/product/product_more?productid=${product.productid}" class="btn btn-xs btn-info">
	        					<i class="icon-edit bigger-120"></i>
	        				</a> 
	        				<a title="删除" href="${ctx}/product/product_delete?productid=${product.productid}" class="btn btn-xs btn-warning">
	        					<i class="icon-trash  bigger-120"></i>
	        				</a>
       					</td>
					</tr>
					</c:forEach>
				
					
					
				
					
				
				</tbody>
			</table>
			
		</section>
	</div>

	
</body>
</html>