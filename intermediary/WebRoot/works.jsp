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
		<link rel="stylesheet" href="css/imge.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/simple-line-icons.css">
	
	<!-- <link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/templatemo_style.css">-->
	<link rel="stylesheet" href="css/one.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="shortcut icon" href="<%=basePath%>images/favicon.png">
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
                          <c:when test="${session.customer.ifcustomer==1}">
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
            <!-- 添加的搜索方法，需要调整位置 -->
                <div class="search">
                    <form action="message/message_queryMessage" method="post" class="form-inline">
                       <input type="text" name="keyWords" class="form-control" placeholder="请输入关键词" style="width:250px">
                       <button type="submit" class="btn btn-default">查询</button>    
                    </form>
                </div>
        </div>
    </div>
    <div class="nag" id="topIndex">
        <div class="in">
           <img class="logo" id="logo" width="66" height="46" src="images/logo.png" alt="前程无忧">
                <img class="slogen" id="slogen"  height="46"  src="images/pp.png">
            
            <p class="nlink">
            <c:choose>
            <c:when test="${session.customer.name==null}">
            <a class="on" href="main.jsp">首页</a>
            <a class="" href="#">关于我们</a>
            <a class="" href="#">成果展示</a>
            <a class="" href="#">公司优势</a>
            <a class="" href="#">联系我们</a>
            </c:when>
            <c:otherwise>
            <c:choose>
            <c:when test="${session.customer.ifcustomer==1}">
            <a class="on" href="main.jsp">首页</a>
            <a class="" href="message/message_queryMessage?keyWords=">我的工作</a>
            <a class="" href="customerorder/customerorder_editOrder?key=${session.customer.customerid}">我的预约</a>
            <a class="" href="Customer_message.jsp">我的信息</a>
            <a class="" href="#">联系我们</a>
            </c:when>
            <c:otherwise>
            <a class="" href="main.jsp">首页</a>
            <a class="" href="message/message_queryMessage?keyWords=">工作</a>
            <a class="on" href="message/message_fwork?message.fid=${session.customer.customerid}">我发布的工作</a>
            <a class="" href="customerorder/customerorder_editOrder2?key=${session.customer.customerid}">回应</a>
            <a class="" href="Customer_message.jsp">我的信息</a>
            </c:otherwise>
            </c:choose>
            </c:otherwise>
            </c:choose>
    </p>        
   </div>
   </div>
   </div>
   <br>
   <main>
  <ul>
             <li>		
             <div class="port-4 effect-3 " style="border:0px;"> 
              <div class="image-box">        
		            <div class="add"><a href="addMessage.jsp"><i class="fa fa-plus"></i> 添加工作</a></div>
		              <p>点击上面的链接可以添加一种工作</p>		
	        </li>
              <c:forEach var="message" items="${messageList}" varStatus="status">
              <li> 
               <div class="port-4 effect-3 " style="border:0px;"> 
               <div class="image-box"> 
                 <a href="message/message_getComMessage2?message.jobid=${message.jobid}">
	             <img src="<%=basePath%>upload/${message.companyphoto}"/>
	             </a>
	             </div>
	              <div class="text-desc">
		                    	<h3>${message.jobname}<br></h3>
		                    	<a href="message/message_getComMessage2?message.jobid=${message.jobid}" class="btn">编辑</a>
	             <a href="message/message_deleteComMessage?message.jobid=${message.jobid}"  class="btn">删除</a>   
	             </div>
	               <p>
	               <!--  <a href="message/message_getComMessage?message.jobid=${message.jobid}"> -->
	                  <c:out value="${message.jobname}"></c:out>
	                <span class="price"> <c:out value="${message.companyname}"></c:out></span>
                    </p>
                 </div>
	          </li>
 
  </c:forEach>
  </ul>
  </main>
  <!-- <main>
   <c:forEach var="message" items="${messageList}" varStatus="status">
   <div class="result" style="border:2px solid blue;margin:30px 400px 0px 400px;padding:10px">
     <img src="<%=basePath%>upload/${message.companyphoto}" style="width:400px;height:300px"/><br>
     <h3>职位:<c:out value="${message.jobname}"></c:out></h3>
     <h3>招聘公司:<c:out value="${message.companyname}"></c:out></h3>
     <a href="message/message_getComMessage?message.jobid=${message.jobid}">详情</a>
     <a href="message/message_deleteComMessage?message.jobid=${message.jobid}">删除</a>
     <a href="message/message_getComMessage2?message.jobid=${message.jobid}">修改</a>
   </div>
   </c:forEach>
   <a href="addMessage.jsp" class="btn btn-primary btn-block btn-large">发布新工作</a>
 </main> -->
 <div id="box" class="box">
    <div class="box-in"></div>
</div>    
<script>
var timer  = null;
box.onclick = function(){
    cancelAnimationFrame(timer);
    //获取当前毫秒数
    var startTime = +new Date();     
    //获取当前页面的滚动高度
    var b = document.body.scrollTop || document.documentElement.scrollTop;
    var d = 1000;
    var c = b;
    timer = requestAnimationFrame(function func(){
        var t = d - Math.max(0,startTime - (+new Date()) + d);
        document.documentElement.scrollTop = document.body.scrollTop = t * (-c) / d + b;
        timer = requestAnimationFrame(func);
        if(t == d){
          cancelAnimationFrame(timer);
        }
    });
}
</script>
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
