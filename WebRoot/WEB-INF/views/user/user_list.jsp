<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html lang="en">
<style type="text/css">
#zt1{
		width:40px;
		height:20px;
		background-color:#43CD80;
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

	<title>订单列表</title>

	
	
	
	<link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

	<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap-responsiv.css" />
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
       
       <span style="position:relative;left:1000px;">共：<b style="color:red;">2334</b>个订单</span>
     </div>
	
	<div class="container" style="position:absolute;top:50px;">
		<section>
			<h1 style="font-size:25px;">订单管理 <span></span></h1>

			
			<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>用户编码</th>
						<th>用户名</th>
						<th>性别</th>
						<th>手机号码</th>
						<th>地址</th>
						<th>注册时间</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
				</thead>
			
				<tbody>
				<c:forEach items="${requestScope.users}" var="user">
					<tr>
						<td >${user.userid }</td>
						<td>${user.username }</td>
						<td>${user.gender }</td>
						<td>${user.phone }</td>
					
						<td>${user.address }</td>
						<td>${user.userdate }</td>
						<c:if test="${user.state=='正常'}">
							<td><div id="zt1"><span style="color:#ffffff;font-size:12px;">${user.state }</span></div></td>
						</c:if>
						<c:if test="${user.state=='黑名单'}">
							<td><div id="zt2"><span style="color:#ffffff;font-size:12px;">${user.state }</span></div></td>
						</c:if>
						<td class="td-manage">
	        				<a  title="移入（出）黑名单" class="btn btn-xs btn-success">
	        					<i class="icon-ok bigger-120"></i>
	        				</a> 
	        				
	        				<a title="删除" href="#"  class="btn btn-xs btn-warning">
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