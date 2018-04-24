<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<base href="<%=basePath%>">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimal-ui">
	<title>EWork - Creative work website</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- <link rel="stylesheet" href="css/templatemo_style.css">-->
	<link rel="stylesheet" href="css/one.css">
</head>
<body>
	 <div class="header">
    <!-- bar start -->
    <div class="bar">
        <div class="in">
            
            <span class="l">|</span>
            <div class="app">
                <ul>
                    <li><em class="e_icon"></em>EWORK<em class="icon_arrow"></em></li>
                </ul>
            </div>
            <p class="rlk">
                <a href="https://jobs.51job.com" target="_blank">招聘信息</a>
                <span class="l">|</span>
                <a href="https://ehire.51job.com" target="_blank">企业服务</a>
            </p>
            <div class="uer">
                    <p class="op">
                    <c:choose>
                    <c:when test="${session.customer.name==null}">
                        <a href="login.jsp" rel="external nofollow">登录</a> / <a href="reg.jsp" rel="external nofollow">注册</a>
                        </c:when>
                        <c:otherwise>
                        <c:choose>
                          <c:when test="${session.customer.if_==1}">
                          <a href="#"><c:out value="${session.customer.name}"></c:out>　欢迎您</a>/<a href="main/main_re">注销</a>
                          </c:when>
                        <c:otherwise>
                         <a href="#"><c:out value="${session.customer.name}"></c:out>　欢迎您</a>/<a href="main/main_re">注销</a>
                        </c:otherwise>
                        </c:choose>
                        </c:otherwise>
                        </c:choose>
                    </p>
                
            </div>
        </div>
    </div>
    <div class="nag" id="topIndex">
        <div class="in">
           <img class="logo" id="logo" width="66" height="46" src="images/logo.png" alt="前程无忧">
                <!-- <img class="slogen" id="slogen"  height="46"  src="images/pp.png"> -->
            
            <p class="nlink">
            <c:choose>
            <c:when test="${session.customer.name==null}">
            <a class="on" href="main.jsp">首页</a>
            <a class="" href="#">关于我们</a>
            <a class="" href="#">成果展示</a>
            <a class="" href="#">公司优势</a>
            <a class="" href="#">联系我们</a>
            <a href="http://my.51job.com/my/gojingying.php?direct=https%3A%2F%2Fwww.51jingying.com%2Fcommon%2Fsearchcase.php%3F5CC4CE%3D1008" target="_blank">无忧精英</a>
            </c:when>
            <c:otherwise>
            <c:choose>
            <c:when test="${session.customer.if_==1}">
            <a class="" href="main.jsp">首页</a>
            <a class="on" href="message/message_queryMessage?keyWords=">我的工作</a>
            <a class="" href="customerorder/customerorder_editOrder?key=${session.customer.customerid}">我的预约</a>
            <a class="" href="Customer_message.jsp">我的信息</a>
            <a class="" href="#">联系我们</a>
            <a href="http://my.51job.com/my/gojingying.php?direct=https%3A%2F%2Fwww.51jingying.com%2Fcommon%2Fsearchcase.php%3F5CC4CE%3D1008" target="_blank">无忧精英</a>
            </c:when>
            <c:otherwise>
            <a class="" href="main.jsp">首页</a>
            <a class="on" href="message/message_queryMessage?keyWords=">工作</a>
            <a class="" href="message/message_fwork?message.fid=${session.customer.customerid}">我发布的工作</a>
            <a class="" href="customerorder/customerorder_editOrder2?key=${session.customer.customerid}">回应</a>
            <a class="" href="Customer_message.jsp">我的信息</a>
            <a href="#" target="_blank">无忧精英</a>
            </c:otherwise>
            </c:choose>
            </c:otherwise>
            </c:choose>
    </p>        
   </div>
   </div>
   </div>
<center>
            <ul style="width:1040px;margin:0 auto;padding-left: 0;list-style: none;">
            <c:forEach var="message" items="${messageList}" varStatus="status">
     <li style="display:inline-block;float:left">
     <img src="<%=basePath%>upload/${message.companyphoto}"  style="margin:30px 20px 0px 20px;padding:5px;width:300px;height:250px;border:4px solid silver;border-radius:8px;"/><br>
     <p>职位:<c:out value="${message.jobname}"></c:out>
     <h3>招聘公司:<c:out value="${message.companyname}"></c:out></h3>
     <a href="message/message_getComMessage?message.jobid=${message.jobid}">详情</a>
     <c:choose>
       <c:when test="${customer.customerid==1}">
       <p>
          <a href="message/message_deleteComMessage?message.jobid=${message.jobid}"><i class="fa fa-trash"></i></a>
          <a href="message/message_getComMessage2?message.jobid=${message.jobid}"><i class="fa fa-pencil"></i></a>
          </p>
       </c:when>
     </c:choose>
  </c:forEach>
            
            </ul>
          



</center>


	<footer class="site-footer container text-center">

			<div class="col-md-12 copyright">
				<p>Copyright &copy; 2018 <a href="#">Company Name:E Work</a></p>
			
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