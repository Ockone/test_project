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
<<<<<<< HEAD
=======
	<!-- <link rel="stylesheet" href="css/simple-line-icons.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/templatemo_style.css">-->
>>>>>>> 54477626bc6f6ca684b6ec5e9886a882a3536ef1
	<link rel="stylesheet" href="css/one.css">
  </head>
  <style>
  input { 
	width: 100%; 
	height:50px;
	margin-bottom: 10px; 
	background: rgba(0,0,0,0.3);
	border: none;
	outline: none;
	padding: 10px;
	font-size: 18px;
	color: white;
}
 @import url(https://fonts.googleapis.com/css?family=Open+Sans);
<<<<<<< HEAD
.btn { display: inline-block; *display: inline; *zoom: 1; padding: 4px 10px 4px; margin-bottom: 0; font-size: 13px; line-height: 18px; color: #000000; text-align: center;text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); vertical-align: middle;  background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6); background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6)); background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6); background-image: -o-linear-gradient(top, #ffffff, #e6e6e6); background-image: linear-gradient(top, #ffffff, #e6e6e6); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0); border-color: #e6e6e6 #e6e6e6 #e6e6e6; border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25); border: 1px solid #e6e6e6; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); cursor: pointer; *margin-left: .3em; }
.btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] { background-color: #e6e6e6; }
.btn-large {  background-color: #FF0000;padding: 9px 14px; font-size: 16px; line-height: normal; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;}
.btn-large, .btn-large:hover { text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); color:#000000; }
.btn-large.active { color: rgba(255, 255, 255, 0.75); }
.btn-large { background-color: #FF0000; background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4); background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#6eb6de), to(#4a77d4)); background-image: -webkit-linear-gradient(top, #6eb6de, #4a77d4); background-image: -o-linear-gradient(top, #6eb6de, #4a77d4); background-image: linear-gradient(top, #6eb6de, #4a77d4); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de, endColorstr=#4a77d4, GradientType=0);  border: 1px solid #3762bc; text-shadow: 1px 1px 1px rgba(0,0,0,0.4); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5); }
.btn-large:hover, .btn-large:active, .btn-large.active, .btn-large.disabled, .btn-large[disabled] { filter: none; background-color: #4a77d4; }
<!--.btn:hover { color: #333333; text-decoration: none; background-color: #e6e6e6; background-position: 0 -15px; -webkit-transition: background-position 0.1s linear; -moz-transition: background-position 0.1s linear; -ms-transition: background-position 0.1s linear; -o-transition: background-position 0.1s linear; transition: background-position 0.1s linear; }-->
.btn-primary, .btn-primary:hover { text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); color:#FF0000; }
.btn-primary.active { color: rgba(255, 255, 255, 0.75); }
.btn-primary { background-color: #FF0000; background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4); background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#6eb6de), to(#4a77d4)); background-image: -webkit-linear-gradient(top, #6eb6de, #4a77d4); background-image: -o-linear-gradient(top, #6eb6de, #4a77d4); background-image: linear-gradient(top, #6eb6de, #4a77d4); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de, endColorstr=#4a77d4, GradientType=0);  border: 1px solid #3762bc; text-shadow: 1px 1px 1px rgba(0,0,0,0.4); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5); }
.btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] { filter: none; background-color: #4a77d4; }

=======
.btn { display: inline-block; *display: inline; *zoom: 1; padding: 4px 10px 4px; margin-bottom: 0; font-size: 13px; line-height: 18px; color: #333333; text-align: center;text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); vertical-align: middle; background-color: #f5f5f5; background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6); background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6)); background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6); background-image: -o-linear-gradient(top, #ffffff, #e6e6e6); background-image: linear-gradient(top, #ffffff, #e6e6e6); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0); border-color: #e6e6e6 #e6e6e6 #e6e6e6; border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25); border: 1px solid #e6e6e6; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); cursor: pointer; *margin-left: .3em; }
.btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] { background-color: #e6e6e6; }
.btn-large { padding: 9px 14px; font-size: 15px; line-height: normal; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px; }
.btn:hover { color: #333333; text-decoration: none; background-color: #e6e6e6; background-position: 0 -15px; -webkit-transition: background-position 0.1s linear; -moz-transition: background-position 0.1s linear; -ms-transition: background-position 0.1s linear; -o-transition: background-position 0.1s linear; transition: background-position 0.1s linear; }
.btn-primary, .btn-primary:hover { text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); color: #ffffff; }
.btn-primary.active { color: rgba(255, 255, 255, 0.75); }
.btn-primary { background-color: #4a77d4; background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4); background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#6eb6de), to(#4a77d4)); background-image: -webkit-linear-gradient(top, #6eb6de, #4a77d4); background-image: -o-linear-gradient(top, #6eb6de, #4a77d4); background-image: linear-gradient(top, #6eb6de, #4a77d4); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de, endColorstr=#4a77d4, GradientType=0);  border: 1px solid #3762bc; text-shadow: 1px 1px 1px rgba(0,0,0,0.4); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5); }
.btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] { filter: none; background-color: #4a77d4; }
>>>>>>> 54477626bc6f6ca684b6ec5e9886a882a3536ef1
.btn-block { width: 100%; display:block; margin: 15px 25px 18px 1px;}

* { -webkit-box-sizing:border-box; -moz-box-sizing:border-box; -ms-box-sizing:border-box; -o-box-sizing:border-box; box-sizing:border-box; }-->

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
<<<<<<< HEAD
=======
            <!-- 添加的搜索方法，需要调整位置 -->
                <div class="search">
                    <form action="message/message_queryMessage" method="post" class="form-inline">
                       <input type="text" name="keyWords" class="form-control" placeholder="请输入关键词" style="width:250px">
                       <button type="submit" class="btn btn-default">查询</button>    
                    </form>
                </div>
>>>>>>> 54477626bc6f6ca684b6ec5e9886a882a3536ef1
            <div class="uer">
                    <p class="op">
                    <c:choose>
                    <c:when test="${session.customer.name==null}">
                        <a href="login.jsp" rel="external nofollow">登录</a> / <a href="reg.jsp" rel="external nofollow">注册</a>
                        </c:when>
                        <c:otherwise>
                        <c:choose>
<<<<<<< HEAD
                          <c:when test="${session.customer.if_==1}">
=======
                          <c:when test="${session.customer.ifcustomer==1}">
>>>>>>> 54477626bc6f6ca684b6ec5e9886a882a3536ef1
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
<<<<<<< HEAD
            <a href="http://my.51job.com/my/gojingying.php?direct=https%3A%2F%2Fwww.51jingying.com%2Fcommon%2Fsearchcase.php%3F5CC4CE%3D1008" target="_blank">无忧精英</a>
            </c:when>
            <c:otherwise>
            <c:choose>
            <c:when test="${session.customer.if_==1}">
=======
            
            </c:when>
            <c:otherwise>
            <c:choose>
            <c:when test="${session.customer.ifcustomer==1}">
>>>>>>> 54477626bc6f6ca684b6ec5e9886a882a3536ef1
            <a class="on" href="main.jsp">首页</a>
            <a class="" href="message/message_queryMessage?keyWords=">我的工作</a>
            <a class="" href="customerorder/customerorder_editOrder?key=${session.customer.customerid}">我的预约</a>
            <a class="" href="Customer_message.jsp">我的信息</a>
            <a class="" href="#">联系我们</a>
<<<<<<< HEAD
            <a href="http://my.51job.com/my/gojingying.php?direct=https%3A%2F%2Fwww.51jingying.com%2Fcommon%2Fsearchcase.php%3F5CC4CE%3D1008" target="_blank">无忧精英</a>
=======
            
>>>>>>> 54477626bc6f6ca684b6ec5e9886a882a3536ef1
            </c:when>
            <c:otherwise>
            <a class="" href="main.jsp">首页</a>
            <a class="" href="message/message_queryMessage?keyWords=">工作</a>
            <a class="on" href="message/message_fwork?message.fid=${session.customer.customerid}">我发布的工作</a>
            <a class="" href="customerorder/customerorder_editOrder2?key=${session.customer.customerid}">回应</a>
            <a class="" href="Customer_message.jsp">我的信息</a>
<<<<<<< HEAD
            <a href="#" target="_blank">无忧精英</a>
=======
            
>>>>>>> 54477626bc6f6ca684b6ec5e9886a882a3536ef1
            </c:otherwise>
            </c:choose>
            </c:otherwise>
            </c:choose>
    </p>        
   </div>
   </div>
   </div>
<<<<<<< HEAD
 <main class="container-fluid">
	    <div class="row">
		   <div class="col-md-10">
		   <s:form action="message/message_addComessage" cssClass="form-horizontal" enctype="multipart/form-data">
		 <!--     <form id="message_addComMessage" name="message_addComMessage" action="message/message_addComMessage" method="post" enctype="multipart/form-data" class="form-horizontal">-->  
		       <div class="panel panel-success">
			       <div class="panel-heading">
			         <h4 class="panel-title"> <mark>EWORK </mark>   添加工作 </h4>
			       </div>
		           <div class="panel-body">
				       <div class="form-group">
			                <label class="control-label col-md-3">公司名称</label>
			                <div class="col-md-4">
                              <input type="text" name="message.companyname" class="form-control input-sm" placeholder="name"  required>
                           </div>
			           </div>  
			           <div class="form-group">
			                <label class="control-label col-md-3">工作地址</label>
			                <div class="col-md-5">
                              <input type="text" name="message.companyaddress" class="form-control input-sm" placeholder="address" required>
                            </div>
			           </div>
                       <div class="form-group">
			                <label class="control-label col-md-3">薪水</label>
			                <div class="col-md-4">
                              <input type="text" name="message.salary" class="form-control input-sm" placeholder="salary" required>
                            </div>
                            </div>
                            <div class="form-group">
			                <label class="control-label col-md-3">联系方式</label>
			                <div class="col-md-4">
                              <input type="text" name="message.contact" class="form-control input-sm" placeholder="contact" required>
                            </div>
                            </div>
                            <div class="form-group">
			                <label class="control-label col-md-3">工作名称</label>
			                <div class="col-md-4">
                              <input type="text" name="message.jobname" class="form-control input-sm" placeholder="jobname" required>
                            </div>
                            </div>
                            <div class="form-group">
			                <label class="control-label col-md-3">需求人数</label>
			                <div class="col-md-4">
                              <input type="text" name="message.acount" class="form-control input-sm" placeholder="acount" required>
                            </div>
                            </div>
                            <div class="form-group">
			                <label class="control-label col-md-3">要求</label>
			                <div class="col-md-4">
                              <input type="text" name="message.require" class="form-control input-sm" placeholder="quire" required>
                            </div>
                            </div>
			            <div class="form-group">
			                <label class="control-label col-md-3">公司图片</label>
			                <div class="col-md-4">
                                   <span class="fileupload-exists">浏览</span><input type="file" name="workPhoto"/></span>
                                   <a href="#" class="btn btn-primary fileupload-exists" data-dismiss="fileupload">取消</a>
                                </div>
                              </div>
                            </div>
			           </div>

			           <div class="form-group col-md-6">
				          <button type="submit" class="btn btn-large  pull-right">提  交 </button>
				       </div>
				   </div>
		  </div>
		   </s:form>
	   </div>
	   </div>
	</main>

=======
 <!-- <main class="container-fluid">
    <div class="row">
        <div class="col-md-10">
            <s:form action = "message/message_addComMessage" cssClass="form-horizontal"  enctype="multpart/form-data" method="post">
               <div class="panel-heading">
                 
                    <h1 style="text-align:center"><i class="fa fa-plus" aria-hidden="true"></i>添加工作</h1>
                 
               </div>
               <div class="panel-body">
                   <div class="form-group">
                     <label class="control-label col-md-3">公司名称</label>
                     <div class="col-md-4">
                        <input type="text" name="message.companyname" class="form-control input-sm" required>
                     </div>
                   </div>
                   <div class="form-group">
                     <label class="control-label col-md-3">地址</label>
                     <div class="col-md-4">
                        <input type="text" name="message.companyaddress" class="form-control input-sm" required>
                     </div>
                   </div>
                   <div class="form-group">                 
                     <label class="control-label col-md-3">薪资</label>
                     <div class="col-md-4">
                         <input type="text" name="message.salary" class="form-control input-sm" required>
                     </div>
                   </div>
                   <div class="form-group">
                     <label class="control-label col-md-3">联系方式</label>
                     <div class="col-md-4">
                        <input type="text" name="message.companycontact" class="form-control input-sm" required>
                     </div>
                   </div>
                   <div class="form-group">                     
                     <label class="control-label col-md-3">职位</label>
                     <div class="col-md-4">
                        <input type="text" name="message.jobname" class="form-control input-sm" required>
                     </div>
                   </div>
                   <div class="form-group">
                     <label class="control-label col-md-3">数量</label>
                     <div class="col-md-4">
                       <input type="text" name="message.available" class="form-control input-sm" required>
                     </div> 
                   </div>
                   <div class="form-group">
                     <label class="control-label col-md-3">要求</label>
                     <div class="col-md-4">
                         <input type="text" name="message.demand" class="form-control input-sm" required>
                     </div>
                   </div>
                   <div class="form-group">
                      <s:hidden name="message.fid" value="%{#session.customer.customerid}"></s:hidden>
                   </div>
                   <div class="form-group">
                      <label class="control-label col-md-3">示例图片</label>
                      <div class="col-md-4">
                         <div class="fileupload fileuoload-new" data-provides="fileuoload">
                            <div class="fileupload-new thumbnail" style="width:200px; height:150px">
                               <img src="<%=basePath%>upload/de.jpg" alt=""/>
                            </div>
                            <div class="fileupload-previw fileupload-exists thumbnail" style="max-width:200px;max-height:150px;line-height:20px">
                            </div>
                            <div>
                                <span class="btn btn-file btn-primary">
                                    <span class="fileupload-new">浏览</span>
                                    <span class="fileupload-exists">浏览</span>
                                    <input type="file" name="companyphoto"/>
                                    <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">取消</a>
                                </span>       
                            </div>
                         </div>
                      </div>
                   </div>
                   <div class="form-group col-md-3">
                       <button type="submit" class="btn btn-success pull-right">提交</button>
                                      
                   </div>
               </div>
            </s:form>
        </div>
    </div>
 </main>  -->
<center>
    <div>
      
       <s:form action="message/message_addComMessage" method="post" enctype="multipart/form-data">
           <s:textfield name="message.companyname"  label="公司名称" placeholder="name"></s:textfield>
           <s:textfield name="message.companyaddress" label="地　　址" placeholder="address"></s:textfield>
           <s:textfield name="message.salary" label="薪　　资"  placeholder="salary"></s:textfield>
           <s:textfield name="message.companycontact" label="联系方式"  placeholder="contact"></s:textfield>
           <s:textfield name="message.jobname" label="职　　位" placeholder="jobname"></s:textfield>
           <s:textfield name="message.available" label="招聘数量" placeholder="acount"></s:textfield>
           <s:textfield name="message.demand" label="要　　求" placeholder="require"></s:textfield>
           <s:file name="uploadFile" label="选择文件"/>
           
       <h3><s:hidden name="message.fid" value="%{#session.customer.customerid}"></s:hidden></h3>
       
      <s:submit value="提交" cssClass="btn btn-primary btn-block btn-large" style="width:30%;margin:10px 60px 0px 0px"></s:submit>
    </s:form>
   </div>
 </center>
>>>>>>> 54477626bc6f6ca684b6ec5e9886a882a3536ef1
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
<<<<<<< HEAD
    
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/bootstrap-fileupload.js"></script>
=======

>>>>>>> 54477626bc6f6ca684b6ec5e9886a882a3536ef1
	<script src="js/jquery.min.js"></script>
	<script src="js/templatemo_custom.js"></script>
 </body>
</html>