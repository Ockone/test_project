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
	<link rel="stylesheet" href="css/main.css">
	<style>
	.black_overlay{ 
            display: none; 
            position: absolute; 
            top: 0%; 
            left: 0%; 
            width: 100%; 
            height: 100%; 
            background-color: black; 
            z-index:1001; 
            -moz-opacity: 0.8; 
            opacity:.80; 
            filter: alpha(opacity=88); 
        } 
        .white_content { 
            display: none; 
            position: absolute; 
            top: 25%; 
            left: 25%; 
            width: 55%; 
            height: 55%; 
            padding: 20px; 
            border: 10px solid orange; 
            background-color: white; 
            z-index:1002; 
            overflow: auto; 
        } 
	</style>
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
            <!-- 添加的搜索方法，需要调整位置 -->
                <div class="search">
                    <form action="message/message_queryMessage" method="post" class="form-inline">
                       <input type="text" name="keyWords" class="form-control" placeholder="请输入关键词" style="width:250px">
                       <button type="submit" class="btn btn-default">查询</button>    
                    </form>
                </div>
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
            <a class="" href="main.jsp">首页</a>
            <a class="on" href="message/message_queryMessage?keyWords=">我的工作</a>
            <a class="" href="customerorder/customerorder_editOrder?key=${session.customer.customerid}">我的预约</a>
            <a class="" href="Customer_message.jsp">我的信息</a>
            <a class="" href="#">联系我们</a>
            </c:when>
            <c:otherwise>
            <a class="" href="main.jsp">首页</a>
            <a class="on" href="message/message_queryMessage?keyWords=">工作</a>
            <a class="" href="message/message_fwork?message.fid=${session.customer.customerid}">我发布的工作</a>
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
<main>
<!-- 筛选框 -->
<a href = "javascript:void(0)" onclick = "display();"><i class="fa fa-hourglass-o fa-2x" style="color:red;">筛选</i> </a>
<div id="light" class="white_content">
<div>
筛选 
<form action="message/message_sortMessage" method="post">
<span>工作类别</span><br>
<input type="checkbox" name="box" value="商务/营销">商务/营销<span>&nbsp;&nbsp;</span>
<input type="checkbox" name="box" value="生活/医疗">生活/医疗<span>&nbsp;&nbsp;</span>
<input type="checkbox" name="box" value="劳工/制造">劳工/制造<span>&nbsp;&nbsp;</span>
<input type="checkbox" name="box" value="艺术/教育">艺术/教育<span>&nbsp;&nbsp;</span>
<input type="checkbox" name="box" value="科技/设计">科技/设计<br>
<br><span>学历要求</span><br>
<input type="checkbox" name="box2" value="0">高中及以下<span>&nbsp;&nbsp;</span>
<input type="checkbox" name="box2" value="1">大专<span>&nbsp;&nbsp;</span>
<input type="checkbox" name="box2" value="2">本科<span>&nbsp;&nbsp;</span>
<input type="checkbox" name="box2" value="3">硕士<span>&nbsp;&nbsp;</span>
<input type="checkbox" name="box2" value="4">博士及以上<br>
<br><span>薪资水平</span><br>
<input name="minsalary" type="text" placeholder="最低薪酬">
<span>~</span>
<input name="maxsalary" type="text" placeholder="最高薪酬"><br>
<br><input type="submit" value="筛选"><a href = "javascript:select();"><span style="color:red;">取消</span></a>
</form>
</div>
</div> 
<div id="fade" class="black_overlay"></div> 

<ul>

          <c:forEach var="message" items="${messageList}" varStatus="status">
              <li>
                 <a href="message/message_getComMessage?message.jobid=${message.jobid}">
	             <img src="<%=basePath%>upload/${message.companyphoto}">
	             </a>
	             <p>
	                <a href="message/message_getComMessage?message.jobid=${message.jobid}">
	                  <c:out value="${message.jobname}"></c:out>
	                </a>
	                <span class="price"> <c:out value="${message.companyname}"></c:out></span>
	                <a href="customerorder/customerorder_wantOrder?customerorder.jobid=${message.jobid}&customerorder.id=${customer.customerid}&customerorder.fid=${message.fid}" class="add-order">
	                  <i class="fa fa-check-square"></i>申请
	                </a>
	             </p>
	          </li>
 
  </c:forEach>
  </ul>
</main>


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
	<script type="text/javascript">
	function display(){
	    document.getElementById('light').style.display='block';
	    document.getElementById('fade').style.display='block';
	}
	</script>
	<script>
	function select(){
	  document.getElementById('light').style.display='none';
	  document.getElementById('fade').style.display='none';
	}
	</script>
</body>
</html>