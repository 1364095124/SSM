<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
  <head>
   		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
		<link href="${ctx}/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${ctx}/assets/css/font-awesome.min.css" />
		<link href="${ctx}/bootstrap-fileinput/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ace-ie.min.css" />
		



		<link rel="stylesheet" href="${ctx}/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/form.css"/>

	
  </head>
  
  <body>
  		<script>
  			function back(){
  				location.href="${ctx}/order/order_new";
  			}
  		</script>
         <div class="clearfix side_green" style="background:#fafafa;">
         
	         <form action="${ctx}/order/order_updating" method="post">
	         	<div class=" clearfix cl" style="margin-top:10px;">
	         		<div class="Add_p_s">
		             	<label class="form-label col-2">订单编码：</label>	
					 	<div class="formControls col-2"><input type="text" class="input-text" value="${requestScope.orderid }" placeholder="" id="" name="orderid" readOnly="readonly"></div>
					</div>
					<div class="Add_p_s">
		             	<label class="form-label col-2">快递名称：</label>	
					 	<div class="formControls col-2"><input type="text" class="input-text" value="" placeholder="" id="" name="express" ></div>
					</div>
					<div class="Add_p_s">
		             	<label class="form-label col-2">快递编码：</label>	
					 	<div class="formControls col-2"><input type="text" class="input-text" value="" placeholder="" id="" name="expressid" ></div>
					</div>
				</div>
				<div class=" clearfix cl" style="margin-top:10px;">
					<div class="Add_p_s">
		             	<label class="form-label col-2">发货时间：</label>	
					 	<div class="formControls col-2"><input type="date" class="input-date"   id="" name="delivery_date" ></div>
					</div>
	  			</div>
	         	
	         	<div class="Button_operation">
						<button  class="btn btn-primary radius" type="submit"><i class="icon-save "></i>&nbsp;&nbsp;提交&nbsp;&nbsp;</button>
						<button  onclick="back();" class="btn btn-default radius" type="button">&nbsp;&nbsp;返回&nbsp;&nbsp;</button>
				</div>
	         </form>
         </div>
  </body>
</html>
