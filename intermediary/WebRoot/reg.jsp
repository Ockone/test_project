<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css">
  </head>
  
  <body>
     <header>
       <div class="logo"><i class="fa fa-users"></i>EWORK</div>	    
    </header>
  <main class="bg">
     <s:form action="customer/customer_reg" method="post" cssClass="login">
    <h3>注册</h3>
    <div class="form-group">
			<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-id-card"></i></span>
			<input name="customer.identification" type="text" class="form-control" placeholder="您的ID" required>
			</div>
			<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user"></i></span>
			<input name="customer.name" type="text" class="form-control" placeholder="姓名" required>				
			</div>
            <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
            <input name="customer.customeradress" type="text" class="form-control" placeholder="地址" required>
			</div>
			<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-phone"></i></span>
			<input name="customer.customercontact" type="text" class="form-control" placeholder="联系方式" required>
			</div>
			<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-key"></i></span>
			<input name="customer.password" type="password" class="form-control" placeholder="请输入密码" required>
			</div>
			<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-repeat"></i></span>
			<input name="confirmpass" type="password" class="form-control" placeholder="请确认密码" required>
			</div>
			<div>
			<input name="customer.ifcustomer" type="hidden" value="1" required>
			</div>
	</div>
	<button type="submit" class="btn btn-success btn-login">注册</button>
	<span>已有账号？去</span><a href="login.jsp" >登录</a>
	</s:form>
    </main>
  </body>
</html>
