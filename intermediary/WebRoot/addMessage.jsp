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
	width: 100%; 
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
  <header>
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
           <!--<s:file name="uploadFile" label="选择文件"/>-->
           <input type="file" name="uploadFile"/>
       <h3><s:hidden name="message.fid" value="%{#session.customer.customerid}"></s:hidden></h3>
       
      <s:submit value="提交" cssClass="btn btn-primary btn-block btn-large" style="width:30%;margin:10px 60px 0px 0px"></s:submit>
    </s:form>
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