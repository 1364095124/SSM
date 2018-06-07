<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!doctype html>
<html lang="en">
<style type="text/css">

</style>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="${ctx}/css/login.css">
	
</head>
<body>
	
	<script type="text/javascript">
	</script>
	<div id="main">
    	<label>视家后台管理系统</label>
        <span>|</span>
        <label class="topic">管理登录</label>
    	<form id="myForm">
    		<span>&nbsp;</span> 
			<c:choose>
				<c:when test="${requestScope.message == null }">
					<span style="padding-top: 5px">允许以中文名称登录</span>
				</c:when>
				<c:otherwise>
					<span style="padding-top: 5px"><font color="red">${requestScope.message}</font></span>
				</c:otherwise>
			</c:choose>
        	<input type="text" id="text"  name="yname" class="text" placeholder="用户名"  required oninvalid="setCustomValidity('用户名不能为空')" oninput="setCustomValidity('')""/>
            <input type="password" id="password" name="password" class="text" placeholder="密码" required oninvalid="setCustomValidity('密码不能为空')" oninput="setCustomValidity('')"/>
            <input type="button" class="button" onclick="login()" value="登 录"/>
        </form>
    </div> 
   
</body>
</html>