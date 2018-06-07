<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>

<!DOCTYPE html>
<html lang="en">
<style type="text/css">
	#zt{
		width:40px;
		height:20px;
		background:rgb(50,205,50);
	}
</style>
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" type="image/ico" href="http://www.datatables.net/favicon.ico">
	<meta name="viewport" content="initial-scale=1.0, maximum-scale=2.0">

	<title>DataTables example - Bootstrap</title>

	
	
	
	<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="${ctx}/assets/css/font-awesome.min.css" />

	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />
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
	
	<div class="container">
		<section>
			<h1>DataTables example <span>Bootstrap</span></h1>

			
			<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>顾客编码</th>
						<th>顾客名称</th>
						<th>性别</th>
						<th>状态</th>
						<th>店铺编码</th>
						<th></th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>顾客编码</th>
						<th>顾客名称</th>
						<th>性别</th>
						<th>状态</th>
						<th>店铺编码</th>
						<th></th>
					</tr>
				</tfoot>
				<tbody>
				<c:forEach items="${requestScope.users}" var="user">
					<tr>
						<td><a href="${ctx}/shop/usermore?shopid=${user.shopid}" style="text-decoration:underline;">${user.customerid}</a></td>
						<td>${user.customername}</td>
						<td>${user.gender}</td>
						<td><div id="zt"><span style="color:#ffffff;font-size:12px;">热销中</span></div></td>
						<td>${user.shopid }</td>
						<td class="td-manage">
	        				<a onclick="member_stop(this,'10001')" href="javascript:;" title="停用" class="btn btn-xs btn-success">
	        					<i class="icon-ok bigger-120"></i>
	        				</a> 
	        				<a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;" class="btn btn-xs btn-info">
	        					<i class="icon-edit bigger-120"></i>
	        				</a> 
	        				<a title="删除" href="javascript:;" onclick="member_del(this,'1')" class="btn btn-xs btn-warning">
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

    
  </body>
</html>
