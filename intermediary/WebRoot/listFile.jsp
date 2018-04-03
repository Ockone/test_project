<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>

<html>
<head>
<title>下载文件显示页面</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/simple-line-icons.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/templatemo_style.css">

</head>
<style>
 input { 
	width: 224.19px; 
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
							</c:when>
							<c:otherwise>
							  <li><a href="main.jsp">  主页</a></li>
							  <li><a href="message/message_queryMessage?keyWords=">  工作</a></li>
							  <li><a href="customerorder/customerorder_editOrder?key=${session.customer.customerid}">  我的预约</a></li>
							  <li><a href="Customer_message.jsp">  我的信息</a></li>
							  <li><a href="#">  联系我们</a></li>
							</c:otherwise>
							</c:choose>
						</ul>
					</nav>
				</div>
			</div>
			<div class="main-job" style="text-align: right">
			<ul class="main-menu">
			<li><a href="login.jsp">登录</a></li>
				</ul>
			</div>
		</div>
	</header>
	<center>
         <h1>确认下载简历？</h1>     
    <form action="${pageContext.request.contextPath}/listFile" enctype="multipart/form-data" method="post">       
       <input type="text" name="username" style="display:none" value="<%=request.getParameter("key")%>" ><br>       
               <input type="submit" value="确认" class="btn btn-primary btn-block btn-large" style="width:9%">
    </form>
    <c:forEach var="me" items="${fileNameMap}">
       <c:url value="/download" var="downurl">
           <c:param name="filename" value="${me.key}"></c:param>
       </c:url>
       ${me.value}<a href="${downurl}" class="btn btn-primary btn-block btn-large" >下载</a>
       <br>
   </c:forEach>
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
 </body>

</html>