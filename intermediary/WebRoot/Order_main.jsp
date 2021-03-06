
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
	<link rel="shortcut icon" href="<%=basePath%>images/favicon.png">
	
  </head>
  <style>
 a {
    color: #00FEFE;
    text-decoration: blink;
    -webkit-transition: all 100ms ease-in-out;
    -moz-transition: all 100ms ease-in-out;
    -ms-transition: all 100ms ease-in-out;
    -o-transition: all 100ms ease-in-out;
    transition: all 100ms ease-in-out;
}
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
  </style>
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
            <a class="" href="main.jsp">首页</a>
            <a class="" href="#">关于我们</a>
            <a class="" href="#">成果展示</a>
            <a class="" href="#">公司优势</a>
            <a class="" href="#">联系我们</a>
            </c:when>
            <c:otherwise>
            <c:choose>
            <c:when test="${session.customer.ifcustomer==1}">
            <a class="" href="main.jsp">首页</a>
            <a class="" href="message/message_queryMessage?keyWords=">我的工作</a>
            <a class="on" href="customerorder/customerorder_editOrder?key=${session.customer.customerid}">我的预约</a>
            <a class="" href="Customer_message.jsp">我的信息</a>
            <a class="" href="#">联系我们</a>
            </c:when>
            <c:otherwise>
            <a class="" href="main.jsp">首页</a>
            <a class="" href="message/message_queryMessage?keyWords=">工作</a>
            <a class="" href="message/message_fwork?message.fid=${session.customer.customerid}">我发布的工作</a>
            <a class="on" href="customerorder/customerorder_editOrder2?key=${session.customer.customerid}">回应</a>
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
   <nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid"> 
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target="#example-navbar-collapse">
            <span class="sr-only">切换导航</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
       <!--<a class="navbar-brand" href="#">菜鸟教程</a>  --> 
    </div>
           <div class="collapse navbar-collapse" id="example-navbar-collapse">
        <ul class="nav navbar-nav">
            <li ><a href="customerorder/customerorder_sortOrder?keydd=1&key=${session.customer.customerid}">高中以上</a></li>
            <li><a href="customerorder/customerorder_sortOrder?keydd=2&key=${session.customer.customerid}">大专以上</a></li>
            <li><a href="customerorder/customerorder_sortOrder?keydd=3&key=${session.customer.customerid}">本科以上</a></li>
            <li><a href="customerorder/customerorder_sortOrder?keydd=4&key=${session.customer.customerid}">研究生以上</a></li>
            <li><a href="customerorder/customerorder_sortOrder?keydd=5&key=${session.customer.customerid}">博士以上</a></li>
        </ul>
        </div>
    </div>
</nav>
    <div style="width:1500px">
    <c:choose>
       <c:when test="${customerorderList.size()==0}">
          <h1 style="text-align:center">没有信息</h1>
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
	                      <c:if test="${ session.customer.ifcustomer==1}">
	                       <c:choose>
                            <c:when test="${customerorder.retime=='未通过'}"><span style="color:black">很遗憾，<c:out value="${customerorder.retime}" /></span>
                            </c:when>
                            <c:when test="${customerorder.retime==null}"><span style="color:black">待审核</span>
                            </c:when>
                            <c:otherwise><span style="color:black">恭喜您，面试时间为<c:out value="${customerorder.retime}"/></span>
                             </c:otherwise>
                           </c:choose>
                           </c:if>
                           <c:if test="${ session.customer.ifcustomer==0}">
                           <c:choose>
                                 <c:when test="${customerorder.retime=='未通过'}"><span style="color:black">-----</span></c:when>
                                 <c:when test="${customerorder.retime==null}"><span style="color:black">待操作</span></c:when>
                                 <c:otherwise><span style="color:black">${customerorder.retime}面试</span></c:otherwise>
                           </c:choose> 
                           <a href="customerorder/customerorder_getorder?key=${customerorder.orderid}">
                           <span style="color:red">简历</span></a>
                           </c:if>
                         </td>
                        
                     <td>
                        <c:choose>
                          <c:when test="${session.customer.ifcustomer==1}">
                                 <a href="customerorder/customerorder_deleteyourorder?key=${customerorder.orderid}">
                                 <c:choose>
                                 <c:when test="${customerorder.retime=='未通过'}"><span style="color:red">删除</span></c:when>
                                 <c:otherwise><span style="color:red">取消申请</span></c:otherwise>
                                 </c:choose>       
                                     </a>
                          </c:when>
                   <c:otherwise>
                    <c:choose>
                      <c:when test="${customerorder.retime==null}">
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
                        <a style="color:red" href="javascript:submit_form1();">同意申请</a>
                        <a style="color:red" href="javascript:submit_form2();">拒绝申请</a>
                     </c:when>
                     <c:otherwise>
                                 <c:choose>
                                 <c:when test="${customerorder.retime=='未通过'}"><span style="color:black">已拒绝</span></c:when>
                                 <c:otherwise><span style="color:black">已同意</span></c:otherwise>
                                 </c:choose>
                     </c:otherwise>
                     </c:choose>
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

    <script src="js/jquery.min.js"></script>
	<script src="js/templatemo_custom.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/jquery.dataTables.js"></script>
	<script src="<%=basePath%>js/dataTables.bootstrap.js"></script>
	<script>
	function submit_form1(){
            var form1 = document.getElementById("form1");  
            form1.submit();                        
        }
	</script>
	<script>
	function submit_form2(){
            var form2 = document.getElementById("form2");  
            form2.submit();                        
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

<script type="text/javascript">
         $('.navbar-nav').find('a').each(function () {
            if (this.href == document.location.href) {
                $(this).parent().addClass('active'); // this.className = 'active';
            }
        });
        </script>
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

	<script src="js/templatemo_custom.js"></script>
	
	
 </body>
</html>
