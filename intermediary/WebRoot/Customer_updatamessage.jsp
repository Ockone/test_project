<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/simple-line-icons.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/templatemo_style.css">
  </head>
  <style>
  input { 
	width: 110%; 
	height:50px;
	margin-bottom: 10px; 
	background: rgba(0,0,0,0.3);
	border: none;
	outline: none;
	padding: 10px;
	font-size: 13px;
	color: #fff;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
	border: 1px solid rgba(0,0,0,0.3);
	border-radius: 4px;
	box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
	-webkit-transition: box-shadow .5s ease;
	-moz-transition: box-shadow .5s ease;
	-o-transition: box-shadow .5s ease;
	-ms-transition: box-shadow .5s ease;
	transition: box-shadow .5s ease;
}
 @import url(https://fonts.googleapis.com/css?family=Open+Sans);
.btn { display: inline-block; *display: inline; *zoom: 1; padding: 4px 10px 4px; margin-bottom: 0; font-size: 13px; line-height: 18px; color: #333333; text-align: center;text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); vertical-align: middle; background-color: #f5f5f5; background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6); background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6)); background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6); background-image: -o-linear-gradient(top, #ffffff, #e6e6e6); background-image: linear-gradient(top, #ffffff, #e6e6e6); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0); border-color: #e6e6e6 #e6e6e6 #e6e6e6; border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25); border: 1px solid #e6e6e6; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); cursor: pointer; *margin-left: .3em; }
.btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] { background-color: #e6e6e6; }
.btn-large { padding: 9px 14px; font-size: 15px; line-height: normal; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px; }
.btn:hover { color: #333333; text-decoration: none; background-color: #e6e6e6; background-position: 0 -15px; -webkit-transition: background-position 0.1s linear; -moz-transition: background-position 0.1s linear; -ms-transition: background-position 0.1s linear; -o-transition: background-position 0.1s linear; transition: background-position 0.1s linear; }
.btn-primary, .btn-primary:hover { text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); color: #ffffff; }
.btn-primary.active { color: rgba(255, 255, 255, 0.75); }
.btn-primary { background-color: #4a77d4; background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4); background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#6eb6de), to(#4a77d4)); background-image: -webkit-linear-gradient(top, #6eb6de, #4a77d4); background-image: -o-linear-gradient(top, #6eb6de, #4a77d4); background-image: linear-gradient(top, #6eb6de, #4a77d4); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de, endColorstr=#4a77d4, GradientType=0);  border: 1px solid #3762bc; text-shadow: 1px 1px 1px rgba(0,0,0,0.4); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5); }
.btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] { filter: none; background-color: #4a77d4; }
.btn-block { width: 100%; display:block; margin: 15px 25px 18px 1px;}

* { -webkit-box-sizing:border-box; -moz-box-sizing:border-box; -ms-box-sizing:border-box; -o-box-sizing:border-box; box-sizing:border-box; }

  </style>
  <body>
     <header class="site-header container animated fadeInDown">
		<div class="header-wrapper">
			<div class="row">
				<div class="col-md-4">
					<div class="site-branding">
						<a href="#"><h1>EWork</h1></a>
					</div>
				</div>
				<a href="#" class="toggle-nav hidden-md hidden-lg">
					<i class="fa fa-bars"></i>
				</a>
				<div class="col-md-8">
					<nav id="nav" class="main-navigation hidden-xs hidden-sm">
						<ul class="main-menu">
			<c:choose>
			<c:when test="${session.customer.name==null}">
   		    <li><a class="show-1 active homebutton" href="#">  主页</a></li>
			<li><a class="show-2 aboutbutton" href="#">  关于我们</a></li>
			<li><a class="show-3 projectbutton" href="#">  成果展示</a></li>
			<li><a class="show-4 blogbutton" href="#">  公司优势</a></li>
			<li><a class="show-5 contactbutton" href="#">  联系我们</a></li>
			<div class="main-job" style="text-align: right">
			<ul class="main-menu">
			<li><a href="login.jsp">登录</a></li>
				</ul>
			</div>  			
   		</c:when>
   		<c:otherwise>
   		   <c:choose>
   		      <c:when test="${session.customer.if_==1}">	
		        	<li><a href="message/message_queryMessage?keyWords=">我的工作</a></li>
			        <li><a href="customerorder/customerorder_editOrder?key=${session.customer.customerid}">我的预约</a></li>
	         		<li><a href="Customer_message.jsp">我的信息</a></li>
	         		<div class="main-job" style="text-align: right">
			        <ul class="main-menu">
			        <li><span class="blue"><h4><c:out value="${session.customer.name}"></c:out>　欢迎您</h4></span></li>
                    <li><a href="main/main_re">注销</a></li>
				</ul>
			</div>  	
   		      </c:when>
   		      <c:otherwise>
   		            <li><a  href="message/message_queryMessage?keyWords=">工作</a></li>
   		            <li><a  href="message/message_fwork?message.fid=${session.customer.customerid}">我发布的工作</a></li>
   		            <li><a  href="customerorder/customerorder_editOrder2?key=${session.customer.customerid}">回应</a></li>
   		            <li><a  href="Customer_message.jsp">我的信息</a></li>
   		            <div class="main-job" style="text-align: right">
			        <ul class="main-menu">
			        <li><span class="blue"><h4><c:out value="${session.customer.name}"></c:out>　欢迎您</h4></span></li>
                    <li><a href="main/main_re">注销</a></li>
				</ul>
			</div> 
   		      </c:otherwise>
   		   </c:choose>

			
   		</c:otherwise>
   		
   	</c:choose>
   </div>
 </header>

 <center>
  	<div>  
 	  <s:form  action ="customer/customer_editCustomer">
         <h3><s:textfield name="customer.name" label="姓　名"></s:textfield></h3>
         <h3><s:textfield name="customer.customeradress" label="住　址"></s:textfield></h3>
         <h3><s:textfield name="customer.customercontact" label="联系方式"></s:textfield></h3>
         <h3><s:hidden name="customer.customerphoto" label="照　片"  value="%{#session.customer.customerphoto}"></s:hidden></h3>
         <h3><s:hidden name="customer.identification" label="照　片" value="%{#session.customer.identification}"></s:hidden></h3>
         <h3><s:textfield name="customer.password" label="密　码"></s:textfield></h3>
         <h3><s:hidden name="customer.customerid" label="id" value="%{#session.customer.customerid}"></s:hidden></h3>
         <s:hidden name="customer.if_" value="%{#session.customer.if_}"></s:hidden>
         <s:submit value="保存" cssClass="btn btn-primary btn-block btn-large" style="width: 60%;"></s:submit>
       </s:form>
   <c:choose>
     <c:when test="${session.customer.if_==0}">
       <s:form action="customer/customer_editCustomer">
        <s:hidden name="customer.name" value="%{#session.customer.name}"></s:hidden>
         <s:hidden name="customer.customeradress" value="%{#session.customer.customeradress}"></s:hidden>
         <s:hidden name="customer.customercontact" value="%{#session.customer.customercontact}"></s:hidden>
         <s:hidden name="customer.customerphoto" value="%{#session.customer.customerphoto}"></s:hidden>
         <s:hidden name="customer.identification" value="%{#session.customer.identification}"></s:hidden>
         <s:hidden name="customer.password" value="%{#session.customer.password}"></s:hidden>
         <s:hidden name="customer.customerid" value="%{#session.customer.customerid}"></s:hidden>
         <s:hidden name="customer.if_" value="1"></s:hidden>
         <s:submit value="我是求职者" cssClass="btn btn-primary btn-block btn-large" style="width: 129%;
    margin: 0px 1px 0px 8px"></s:submit>
       </s:form>
     </c:when>
     <c:otherwise>
       <s:form action="customer/customer_editCustomer">
         <s:hidden name="customer.name" value="%{#session.customer.name}"></s:hidden>
         <s:hidden name="customer.customeradress" value="%{#session.customer.customeradress}"></s:hidden>
         <s:hidden name="customer.customercontact" value="%{#session.customer.customercontact}"></s:hidden>
         <s:hidden name="customer.customerphoto" value="%{#session.customer.customerphoto}"></s:hidden>
         <s:hidden name="customer.identification" value="%{#session.customer.identification}"></s:hidden>
         <s:hidden name="customer.password" value="%{#session.customer.password}"></s:hidden>
         <s:hidden name="customer.customerid" value="%{#session.customer.customerid}"></s:hidden>
         <s:hidden name="customer.if_" value="0"></s:hidden>
         <s:submit value="我是招聘方" cssClass="btn btn-primary btn-block btn-large" style="width: 129%;
    margin: 0px 1px 0px 8px"></s:submit>
       </s:form>
         </c:otherwise>
       </c:choose>
     </div>
 </center>
 <footer class="site-footer container text-center">
		<div class="row">
			<div class="col-md-12 copyright">
				<p>Copyright &copy; 2018 <a href="#">Company Name:E Work</a></p>
			</div>
		</div>
	</footer>
	<span class="border-top"></span>
	<span class="border-left"></span>
	<span class="border-right"></span>
	<span class="border-bottom"></span>
	<span class="shape-1"></span>
	<span class="shape-2"></span>

	<script src="js/jquery.min.js"></script>
	<script src="js/templatemo_custom.js"></script>
 </body>
 </html>