<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!doctype html>
<html lang="en">
<style type="text/css">
#foot{
	margin-top:20px;
}

</style>
<head>
	<meta charset="utf-8">
	
    <link rel="stylesheet" href="${ctx}/bootstrap-3.3.7-dist/css/bootstrap.min.css">

	<script src="${ctx}/jquery/jquery.min.js"></script>
	<script src="${ctx}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
   
</head>
<body>
	  <script type="text/javascript">
	  	
	  </script>
	<div style="padding: 100px 100px 10px;">
	<h1>销售订单</h1>
		<form action="itemcheck.jsp" class="bs-example bs-example-form" role="form" method="post">
		<div class="row">
  			<div class="col-xs-3">
  				<label for="txt_parentdepartment">订单号</label>
   				 <input type="text" class="form-control" name="Orderid" value="${shop.shopid}" readonly>
  			</div>
  			<div class="col-xs-3">
  				<label class="control-label">订单日期</label>
				<input type="date" class="form-control" name="Orderdate" value="" readonly>
  			</div>
  			<div class="col-xs-3">
  				<label for="txt_parentdepartment">业务类型</label>
    			<input type="text" class="form-control" name="Businesstype" readonly value="${shop.introduction}" >
  			</div>
		</div>
		<div class="row">
  			<div class="col-xs-3">
  				<label for="txt_parentdepartment">销售类型</label>
   				 <input type="text" class="form-control" name="Saletype" value="${shop.shopname }" readonly>
  			</div>
  			<div class="col-xs-3">
  				<label for="txt_parentdepartment">税率</label>
    			<input type="text" class="form-control" name="Taxrate" value="" readonly>
  			</div>
  			<div class="col-xs-3">
  				<label for="txt_parentdepartment">客户编码</label>
    			<input type="text" class="form-control" name="Customerid" value="" readonly>
  			</div>
		</div>
		<div class="row">
  			<div class="col-xs-3">
  				<label for="txt_parentdepartment">付款条件</label>
   				 <input type="text" class="form-control" name="Applystyle" value="" readonly>
  			</div>
  			<div class="col-xs-3">
  				<label for="txt_parentdepartment">销售部门</label>
    			<input type="text" class="form-control" name="Apartment" value="" readonly>
  			</div>
  			<div class="col-xs-3">
  				<label for="txt_parentdepartment">业务员</label>
    			<input type="text" class="form-control" name="YWperson" value="" readonly>
  			</div>
		</div>
		<div class="row">
  			<div class="col-xs-3">
  				<label for="txt_parentdepartment">应付金额</label>
   				 <input type="text" class="form-control" name="money" value="" readonly>
  			</div>
  			<div class="col-xs-3">
  				<label for="txt_parentdepartment">是否付款</label>
    			<input type="text" class="form-control" name="Remark" value="" readonly>
  			</div>
  			<div class="col-xs-3">
  				<label for="txt_parentdepartment">币种</label>
    			<input type="text" class="form-control" name="moneystyle" value="" readonly>
  			</div>
		</div>
		<div class="row">
  			<div class="col-xs-3">
  				<label for="txt_parentdepartment">商品编码</label>
   				 <input type="text" class="form-control" name="Productid" value="" readonly>
  			</div>
  			<div class="col-xs-3">
  				<label for="txt_parentdepartment">购买数目</label>
    			<input type="text" class="form-control" name="Number" value="" readonly>
  			</div>
  			<div class="col-xs-3">
  				<label for="txt_parentdepartment">出售单价</label>
    			<input type="text" class="form-control" name="Price" value="" readonly>
  			</div>
		</div>
		<div id="foot">
			
			<button type="submit" class="btn btn-primary">审核通过</button>
			
			<a href="item.jsp" class="btn btn-primary" style="color:#ffffff;text-decoration:none;">返回</a>
		</div>
	</form>

	
	</div>
</body>
</html>