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
	<!-- <link rel="stylesheet" href="css/simple-line-icons.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/templatemo_style.css">-->
	<link rel="stylesheet" href="css/one.css">
  </head>
  <style>
 
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
<<<<<<< HEAD
      <header class="site-header container animated fadeInDown">
		<div class="header-wrapper">
			<div class="row">
				<div class="col-md-4">
					<div class="site-branding">
						<a href="#"><h1 style="color:black">EWork</h1></a>
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
		        	<li><a href="message/message_queryMessage?keyWords=" style="color:black">我的工作</a></li>
			        <li><a href="customerorder/customerorder_editOrder?key=${session.customer.customerid}" style="color:black">我的预约</a></li>
	         		<li><a href="Customer_message.jsp" style="color:black">我的信息</a></li>
	         		<div class="main-job" style="text-align: right">
			        <ul class="main-menu">
			        <li><span class="blue"><h4><c:out value="${session.customer.name}"></c:out>　欢迎您</h4></span></li>
                    <li><a href="main/main_re" style="color:black">注销</a></li>
				</ul>
			     </div>  	
   		      </c:when>
   		      <c:otherwise>
   		            <li><a  href="message/message_queryMessage?keyWords=" style="color:black">工作</a></li>
   		            <li><a  href="message/message_fwork?message.fid=${session.customer.customerid}" style="color:black">我发布的工作</a></li>
   		            <li><a  href="customerorder/customerorder_editOrder2?key=${session.customer.customerid}" style="color:black">回应</a></li>
   		            <li><a  href="Customer_message.jsp" style="color:black">我的信息</a></li>
   		            <div class="main-job" style="text-align: right">
			        <ul class="main-menu">
			        <li><span class="blue"><h4><c:out value="${session.customer.name}"></c:out>　欢迎您</h4></span></li>
                    <li><a href="main/main_re" style="color:black">注销</a></li>
				    </ul>
			        </div> 
   		      </c:otherwise>
   		   </c:choose>
         </c:otherwise>
   	 </c:choose>
   </div>
 </header>
 <div class="site-header container animated fadeInDown">
=======
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
                <img class="slogen" id="slogen"  height="46"  src="images/pp.png">
            
            <p class="nlink">
            <c:choose>
            <c:when test="${session.customer.name==null}">
            <a class="" href="main.jsp">首页</a>
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
            <a class="" href="message/message_queryMessage?keyWords=">我的工作</a>
            <a class="on" href="customerorder/customerorder_editOrder?key=${session.customer.customerid}">我的预约</a>
            <a class="" href="Customer_message.jsp">我的信息</a>
            <a class="" href="#">联系我们</a>
            <a href="http://my.51job.com/my/gojingying.php?direct=https%3A%2F%2Fwww.51jingying.com%2Fcommon%2Fsearchcase.php%3F5CC4CE%3D1008" target="_blank">无忧精英</a>
            </c:when>
            <c:otherwise>
            <a class="" href="main.jsp">首页</a>
            <a class="" href="message/message_queryMessage?keyWords=">工作</a>
            <a class="" href="message/message_fwork?message.fid=${session.customer.customerid}">我发布的工作</a>
            <a class="on" href="customerorder/customerorder_editOrder2?key=${session.customer.customerid}">回应</a>
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
>>>>>>> 0c0264bc2b21ca513bf4f77115d922b622732f81
    <c:choose>
       <c:when test="${customerorderList.size()==0}">
          <h1>没有信息</h1>
       </c:when>
       <c:otherwise>
           <table class="table table-striped table-bordered table-hover" id="dataTables-example">
	           <thead>
	               <tr>
	                    <th>订单号</th>
						<th>工作编号</th>
						<th>用户编号</th>
						<th>下单时间</th> 
						<th>发布人编号</th> 
					    <th>信息</th> 
					    <th>操作</th>
					</tr>
	            </thead>
	            <tbody>
	                <s:iterator value="customerorderList" var="customerorder" status="status">
	                <tr>
	                     <td><s:property value="#customerorder.orderid"></s:property></td>
	                     <td><s:property value="#customerorder.jobid"></s:property></td>
	                     <td><s:property value="#customerorder.id"></s:property></td>
	                     <td><s:property value="#customerorder.time"></s:property></td>
	                     <td><s:property value="#customerorder.fid"></s:property></td>
	                      <td>
	                      <c:if test="${ session.customer.if_==1}">
	                       <c:choose>
                            <c:when test="${customerorder.retime=='未通过'}"><span style="color:black">很遗憾，<c:out value="${customerorder.retime}" /></span>
                            </c:when>
                            <c:when test="${customerorder.retime==null}"><span style="color:black">待审核</span>
                            </c:when>
                            <c:otherwise><span style="color:black">恭喜您，面试时间为<c:out value="${customerorder.retime}"/></span>
                             </c:otherwise>
                           </c:choose>
                           </c:if>
                           <c:if test="${ session.customer.if_==0}">
                               <c:if test="${customerorder.retime==null}">
                    <s:form action="customerorder/customerorder_updataorder" style="display:none" method="post" id="form1">
                      <s:hidden name="customerorder.retime" value="下周日上午9点"></s:hidden>
                      <s:hidden name="customerorder.orderid" value="%{#attr.customerorder.orderid}"></s:hidden>
                      <s:hidden name="customerorder.jobid"   value="%{#attr.customerorder.jobid}"></s:hidden>
                      <s:hidden name="customerorder.id"      value="%{#attr.customerorder.id}"></s:hidden>
                      <s:hidden name="customerorder.time"    value="%{#attr.customerorder.time}"></s:hidden>
                      <s:hidden name="customerorder.resume"  value="%{#attr.customerorder.resume}"></s:hidden>
                      <s:hidden name="customerorder.fid"     value="%{#attr.customerorder.fid}"></s:hidden>
                      <s:submit value="同意申请"  style="display:none" id="btn1"></s:submit>
                     </s:form>
                     
                       <s:form action="customerorder/customerorder_updataorder" style="display:none" method="post" id="form2">
                       <s:hidden name="customerorder.retime"  value="未通过"></s:hidden>
                       <s:hidden name="customerorder.orderid" value="%{#attr.customerorder.orderid}"></s:hidden>
                       <s:hidden name="customerorder.jobid"   value="%{#attr.customerorder.jobid}"></s:hidden>
                       <s:hidden name="customerorder.id"      value="%{#attr.customerorder.id}"></s:hidden>
                       <s:hidden name="customerorder.time"    value="%{#attr.customerorder.time}"></s:hidden>
                       <s:hidden name="customerorder.resume"  value="%{#attr.customerorder.resume}"></s:hidden>
                       <s:hidden name="customerorder.fid"     value="%{#attr.customerorder.fid}"></s:hidden>
                       <s:submit value="拒绝申请"  style="display:none" id="btn2"></s:submit>
                      </s:form>
                     
                    </c:if>
                           </c:if>
                         </td>
                        
                         <td>
                             <c:choose>
                                 <c:when test="${session.customer.if_==1}">
                                 <a href="customerorder/customerorder_deleteyourorder?key=${customerorder.orderid}">
                                 <c:choose>
                                 <c:when test="${customerorder.retime=='未通过'}"><span style="color:black">删除</span></c:when>
                                 <c:otherwise><span style="color:black">取消申请</span></c:otherwise>
                                 </c:choose>       
                                     </a>
                          </c:when>
                   <c:otherwise>
                    
                          <a style="color:black" href="javascript:submit1();">同意申请</a>
                          <a style="color:black" href="javascript:submit2();">拒绝申请</a>
                  </c:otherwise>
              </c:choose>
                         </td>
                         
	                 </tr>
	                 </s:iterator>
	            </tbody>
	      </table>
         </c:otherwise>
</c:choose>
</div>
	<footer class="site-footer container text-center">
			<div class="col-md-12 copyright">
				<p>Copyright &copy; 2018 <a href="#">Company Name:E Work</a></p>
		</div>
	</footer>
	<!-- 
	<span class="border-top"></span>
	<span class="border-left"></span>
	<span class="border-right"></span>
	<span class="border-bottom"></span>
	<span class="shape-1"></span>
	<span class="shape-2"></span>
 -->
	<script src="js/jquery.min.js"></script>
	<script src="js/templatemo_custom.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/jquery.dataTables.js"></script>
	<script src="<%=basePath%>js/dataTables.bootstrap.js"></script>
	<script type="text/javascript">
	    function submit1(){
	    document.getElementById("btn1").submit();
	    
	    }
	</script>
	<script type="text/javascript">
	    function submit2(){
	    document.getElementById("btn2").submit();
	    
	    }
	</script>
	<script>
	$(document).ready(function(){
	    $('#dataTables-example').dataTable({
	    "language":{
	    "lengthMenu":"每页_MENU_条记录",
	    "zeroRecords":"没有找到记录",
	    "info":"第_PAGE_页（共_PAGES_页）",
	    "infoEmpty":"无记录",
	    "infoFiltered":"从_MAX_条记录过滤",
	    "sInfoPostFix":"",
	    "sSearch":"搜索：",
	    "sUrl":"",
	    "sEmptyTable":"表中数据为空",
	    "sLoadingRecords":"载入中...",
	    "sInfoThousands":",",
	    "oPaginate":{
	        "sFirst":"首页",
	        "sPrevious":"上页",
	        "sNext":"下页",
	        "sLast":"末页"
	    },
	    "oAria":{
	        "sSortAscending":"：以升序排列",
	        "sSortDescending":"：以降序排列"
	    },
	    }
	    });
	});
	
	</script>
 </body>
</html>
