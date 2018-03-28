<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'testUploadFile.jsp' starting page</title>

  </head>
  
 <body>
    <h1>struts-文件 上传</h1>
    <form action="fileUpload" method="post" enctype="multipart/form-data">
	    姓名:<input type="text" name="name" value="张三"><br>
	    文件:<input type="file" name="upload"  multiple ><br>
     <input type="submit"   value="上传"><br>
    </form>
    <hr>
    <h1>文件下载</h1>
     <a href="user/abc.jpg">下载</a>
     <a href="user/abc.rar">下载zip</a>
     <a href="down.action?fn=abc.rar">struts2文件下载</a>
</body>
</html>
