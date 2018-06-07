<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
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
		<jsp:include page="left.jsp" />
	
				<div class="main-content">
					
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="${ctx}/home" target="iframe">首页</a>
							</li>
							<li class="active">查看</li>
						</ul><!-- .breadcrumb -->

						
					</div>
					
					<iframe id="iframe" style="border:0px;width:100%;height:931px;background-color:rgb(255,255,255);" name="iframe" frameborder="0" src="${ctx}/user/index">
				 	</iframe>
				 	
				</div>
										

				

			

		

	
		


		
		


		
	
</body>
</html>

