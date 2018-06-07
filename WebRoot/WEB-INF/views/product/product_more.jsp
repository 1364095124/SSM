<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>新增商品</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- basic styles -->
		<link href="${ctx}/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${ctx}/assets/css/font-awesome.min.css" />
		<link href="${ctx}/bootstrap-fileinput/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
	

		<link rel="stylesheet" href="${ctx}/assets/css/ace-ie.min.css" />



		<link rel="stylesheet" href="${ctx}/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/form.css"/>
	

		
		<script src="${ctx}/jquery/jquery.min.js"></script>
		<script src="${ctx}/assets/js/ace-extra.min.js"></script>
		<script src="${ctx}/assets/js/bootstrap.min.js"></script>
		<script src="${ctx}/assets/js/typeahead-bs2.min.js"></script>
		<script src="${ctx}/assets/js/ace-elements.min.js"></script>
		<script src="${ctx}/assets/js/ace.min.js"></script>
		<script src="${ctx}/bootstrap-fileinput/js/fileinput.js" type="text/javascript"></script>
		<script src="${ctx}/bootstrap-fileinput/js/fileinput_locale_zh.js" type="javascript"></script>
	</head>
  
  <body>
  	<script>
  		function back(){
  			location.href="${ctx}/product/product_list";
  		}
  		 $("#file-1").fileinput({
  	        uploadUrl: '/AR/images', // you must set a valid URL here else you will get an error
  	        allowedFileExtensions : ['jpg', 'png','gif'],
  	        overwriteInitial: false,
  	        maxFileSize: 1000,
  	        maxFilesNum: 10,
  	        //allowedFileTypes: ['image', 'video', 'flash'],
  	        slugCallback: function(filename) {
  	            return filename.replace('(', '_').replace(']', '_');
  	        }
  		});
  	   
  	</script>
  
    <div class="clearfix side_green" style="background:#fafafa;">
    
    
    	<div class="page_right_style" style="height: 732px; width: 800px;">
   			<div class="type_title" style="width:1328px;">添加商品</div>
				<form action="${ctx}/product/add_product" enctype="multipart/form-data" method="post" class="form form-horizontal" id="form-article-add">
					<div class="clearfix cl">
        				 <label class="form-label col-2"><span class="c-red">*</span>图片标题：</label>
						 <div class="formControls col-10"><input type="text" class="input-text" value="${product.picture_title }" placeholder="" id="" name=""></div>
					</div>
				<div class=" clearfix cl">
		         <label class="form-label col-2">产品名称：</label>
			     <div class="formControls col-10"><input type="text" class="input-text" value="${product.title }" placeholder="" id="" name=""></div>
				</div>
		<div class=" clearfix cl">
			
			<div class="Add_p_s">
            <label class="form-label col-2">产品编号：</label>
            <c:if test="${requestScope.flag=='add'}">
				<div class="formControls col-2"><input type="text" class="input-text" value="${product.productid}" placeholder="" id="" name="" ></div>
            </c:if>
            <c:if test="${requestScope.flag=='more' }">
           	 	<div class="formControls col-2"><input type="text" class="input-text" value="${product.productid}" placeholder="" id="" name="" readOnly="readonly"></div>
            </c:if>
            </div>
			<div class="Add_p_s">
             <label class="form-label col-2">产&nbsp;&nbsp;&nbsp;&nbsp;地：</label>	
			 <div class="formControls col-2"><input type="text" class="input-text" value="${product.origin }" placeholder="" id="" name=""></div>
			</div>
            <div class="Add_p_s">
             <label class="form-label col-2">材&nbsp;&nbsp;&nbsp;&nbsp;质：</label>	
			 <div class="formControls col-2"><input type="text" class="input-text" value="${product.material }" placeholder="" id="" name=""></div>
			</div>
            <div class="Add_p_s">
             <label class="form-label col-2">品&nbsp;&nbsp;&nbsp;&nbsp;牌：</label>	
			 <div class="formControls col-2"><input type="text" class="input-text" value="${product.brand }" placeholder="" id="" name=""></div>
			</div>
             <div class="Add_p_s">
             <label class="form-label col-2">产品重量：</label>	
			 <div class="formControls col-2"><input type="text" class="input-text" value="${product.weight }" placeholder="" id="" name="">kg</div>
			</div>
            <div class="Add_p_s">
             <label class="form-label col-2">单位：</label>	
			 <div class="formControls col-2"><input type="text" class="input-text" value="${product.unit }" placeholder="" id="" name="">kg</div>
			</div>
            <div class="Add_p_s">
             <label class="form-label col-2">实时价格：</label>	
			 <div class="formControls col-2"><input type="text" class="input-text" value="${product.new_price }" placeholder="" id="" name="">元</div>
			</div>
            <div class="Add_p_s">
             <label class="form-label col-2">市场价格：</label>	
			 <div class="formControls col-2"><input type="text" class="input-text" value="${product.r_price }" placeholder="" id="" name="">元</div>
			</div>
           
			
		</div>
		
		<div class="clearfix cl">
			<label class="form-label col-2">关键词：</label>
			<div class="formControls col-10">
				<input type="text" class="input-text" value="${product.key_word }" placeholder="" id="" name="">
			</div>
		</div>
		<div class="clearfix cl">
			<label class="form-label col-2">内容摘要：</label>
			<div class="formControls col-10">
				<textarea name="" cols="" rows="" class="textarea" placeholder="说点什么...最少输入10个字符"  dragonfly="true" style="border:1px solid #BEBEBE;" ><c:out value="${product.content}"/></textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
			</div>
		</div >
		  <div class="container kv-main">
            
            <br>
          
                
                <div class="form-group">
                    <input id="file-1" type="file" multiple class="file" data-overwrite-initial="false" data-min-file-count="2">
                </div>
                
            
        </div>
			<div class="Button_operation">
			<c:if test="${requestScope.flag=='add'}">
				<button  class="btn btn-primary radius" type="submit"><i class="icon-save "></i>保存并提交审核</button>
			</c:if>
				<button  onclick="back();" class="btn btn-default radius" type="button">&nbsp;&nbsp;返回&nbsp;&nbsp;</button>
			</div>
		</form>
		
    </div>
  </body>
</html>
