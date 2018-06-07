<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>查找用户信息</title>  
	<base href="<%=basePath%>">  

  </head>
  
  <body>
       <center>  
        <form action="findUser" method="post">  
            请输入用户ID:<input type="text" name="id">  
             <input type="submit" value="确定">    
        </form>  
    </center>  
  </body>
</html>
