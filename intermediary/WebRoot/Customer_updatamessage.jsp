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
  
  <body onload="change()">
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
            <a class="" href="main.jsp">首页</a>
            <a class="" href="message/message_queryMessage?keyWords=">我的工作</a>
            <a class="" href="customerorder/customerorder_editOrder?key=${session.customer.customerid}">我的预约</a>
            <a class="on" href="Customer_message.jsp">我的信息</a>
            <a class="" href="#">联系我们</a>
            </c:when>
            <c:otherwise>
            <a class="on" href="main.jsp">首页</a>
            <a class="" href="message/message_queryMessage?keyWords=">工作</a>
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
<main class="container-fluid">
    <div class="row">
        <div class="col-md-10">
        
            <s:form action = "customer/customer_editCustomer" cssClass="form-horizontal"  enctype="multipart/form-data" method="post">
            <s:hidden name="customer.customerid" value="%{#session.customer.customerid}"></s:hidden>
            <s:hidden name="orginphoto" value="%{#session.customer.customerphoto}"></s:hidden>
            <s:hidden name="customer.identification" value="%{#session.customer.identification}"></s:hidden>
            <s:hidden name="customer.sex"  value="%{#session.customer.sex}"></s:hidden>   
            <s:hidden name="customer.nation"  value="%{#session.customer.nation}"></s:hidden>
            <s:hidden name="customer.birth"  value="%{#session.customer.birth}"></s:hidden>
            <s:hidden name="customer.politicstatus"  value="%{#session.customer.politicstatus}"></s:hidden>
            <s:hidden name="customer.height"  value="%{#session.customer.height}"></s:hidden>
            <s:hidden name="customer.schoolsystem"  value="%{#session.customer.schoolsystem}"></s:hidden>
            <s:hidden name="customer.education"  value="%{#session.customer.education}"></s:hidden>
            <s:hidden name="customer.householdregister"  value="%{#session.customer.householdregister}"></s:hidden>
            <s:hidden name="customer.major"  value="%{#session.customer.major}"></s:hidden>
            <s:hidden name="customer.school"  value="%{#session.customer.school}"></s:hidden>
            <s:hidden name="customer.foreignlanguage"  value="%{#session.customer.foreignlanguage}"></s:hidden>
            <s:hidden name="customer.computer"  value="%{#session.customer.computer}"></s:hidden>
            <s:hidden name="customer.t1"  value="%{#session.customer.t1}"></s:hidden>
            <s:hidden name="customer.c1"  value="%{#session.customer.c1}"></s:hidden>
            <s:hidden name="customer.e1"  value="%{#session.customer.e1}"></s:hidden>
            <s:hidden name="customer.t2"  value="%{#session.customer.t2}"></s:hidden>
            <s:hidden name="customer.c2"  value="%{#session.customer.c2}"></s:hidden>
            <s:hidden name="customer.e2"  value="%{#session.customer.e2}"></s:hidden>
            <s:hidden name="customer.t3"  value="%{#session.customer.t3}"></s:hidden>
            <s:hidden name="customer.c3"  value="%{#session.customer.c3}"></s:hidden>
            <s:hidden name="customer.e3"  value="%{#session.customer.e3}"></s:hidden>
            <s:hidden name="customer.email"  value="%{#session.customer.email}"></s:hidden>
            <s:hidden name="customer.zipcode"  value="%{#session.customer.zipcode}"></s:hidden>
            <s:hidden name="customer.evaluation"  value="%{#session.customer.evaluation}"></s:hidden> 
               <div class="panel-body">
                   <div class="form-group">
                     <label class="control-label col-md-3">名称</label>
                     <div class="col-md-4">
                        <input type="text" name="customer.name" value="${session.customer.name}" class="form-control input-sm" required>
                     </div>
                   </div>
                   <div class="form-group">
                     <label class="control-label col-md-3">地址</label>
                     <div class="col-md-4">
                        <input type="text" name="customer.customeradress" value="${session.customer.customeradress}" class="form-control input-sm" required>
                     </div>
                   </div>
                   <div class="form-group">
                     <label class="control-label col-md-3">联系方式</label>
                     <div class="col-md-4">
                        <input type="text" name="customer.customercontact"  value="${session.customer.customercontact}" class="form-control input-sm" required>
                     </div>
                   </div>

                   <div class="form-group">
                     <label class="control-label col-md-3">密码</label>
                     <div class="col-md-4">
                       <input type="text" name="customer.password"  value="${session.customer.password}" class="form-control input-sm" required>
                     </div> 
                   </div>
                   
                   <div class="form-group">
                   <label class="control-label col-md-3">用户类别</label>
                      <div class="col-md-4">
                      
                      <select id="sc1" name="flag" class="form-control">
			                <option>我是应聘方</option>
                            <option>我是招聘方</option>
		              </select>
		              </div>
                   </div>
                   <div class="form-group">
                   <label class="control-label col-md-3">学历</label>
                      <div class="col-md-4">
                      
                      <select id="sc2" name="deg" class="form-control">
			                <option>高中</option>
                            <option>大专</option>
                            <option>本科</option>
                            <option>研究生</option>
                            <option>博士</option>
		              </select>
		              <s:hidden value="%{#session.customer.ifcustomer}" id="hi1"/>
		              <s:hidden value="%{#session.customer.degree}" id="hi2"/>
		              </div>
                   </div>
                   
                   
                   
                   <div class="form-group">
                      <label class="control-label col-md-3">我的头像</label>
                      <div class="col-md-4">
                         <div class="fileupload fileuoload-new" data-provides="fileuoload">
                            <div class="fileupload-new thumbnail" style="width:200px; height:150px">
                               <img src="<%=basePath%>upload/customerp/${customer.customerphoto}" alt="" />
                            </div>
                            <div class="fileupload-previw fileupload-exists thumbnail" style="max-width:200px;max-height:150px;line-height:20px">
                            </div>
                            <div>
                                <span class="btn btn-file btn-primary">
                                    <input type="file" name="customerphoto"/>
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
 </main>
 <!--<center>
  	<div>  
 	  <s:form  action ="customer/customer_editCustomer" enctype="multipart/form-data">
         <h3><s:textfield name="customer.name" label="姓　名" ></s:textfield></h3>
         <h3><s:textfield name="customer.customeradress" label="住　址"></s:textfield></h3>
         <h3><s:textfield name="customer.customercontact" label="联系方式"></s:textfield></h3>
         <h3><s:hidden name="customer.customerphoto" label="照　片"  value="%{#session.customer.customerphoto}"></s:hidden></h3>
         <h3><s:hidden name="customer.identification" label="照　片" value="%{#session.customer.identification}"></s:hidden></h3>
         <h3><s:textfield name="customer.password" label="密　码"></s:textfield></h3>
         <h3><s:hidden name="customer.customerid" label="id" value="%{#session.customer.customerid}"></s:hidden></h3>
         <h3><select name="flag" class="form-control">
			   <option>我是应聘方</option>
               <option>我是招聘方</option>
		</select></h3>
		<input type="file" name="customerphoto">
		
         <s:submit value="保存" cssClass="btn btn-primary btn-block btn-large" style="width: 60%;"></s:submit>
       </s:form>
     </div>
 </center>-->
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
    <script>
      function change(){
         var sc1 = document.getElementById("sc1").children;
         var sc2 = document.getElementById("sc2").children;
         var hi1 = document.getElementById("hi1");
         var hi2 = document.getElementById("hi2");
         if(hi1.value==="1"){
             sc1[0].selected = true;
         }else{
             sc1[1].selected = true;
         }
         if(hi2.value==="1"){
             sc2[0].selected = true;
         }else if(hi2.value==="2"){
             sc2[1].selected = true;
         }else if(hi2.value==="3"){
             sc2[2].selected = true;
         }else if(hi2.value==="4"){
             sc2[3].selected = true;
         }else{
             sc2[4].selected = true;
         }
      }
    </script>
	<script src="js/jquery.min.js"></script>
	<script src="js/templatemo_custom.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-fileupload.js"></script>
 </body>
 </html>