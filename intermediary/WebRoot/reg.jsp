<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=basePath%>css/bootstrapValidator.css">
  <style type="text/css">
	body{background:url(images/city1.jpg);
	background-color:white;opacity: 0.9;}
	</style>
	<link rel="shortcut icon" href="<%=basePath%>images/favicon.png">
	
  </head>
  
  <body>
     <header>
       <div class="logo"><i class="fa fa-users"></i>EWORK</div>	    
    </header>
  <main class="bg" style="padding-top:20px">
     <s:form action="customer/customer_reg" method="post" cssClass="login" id="defaultForm">
    <h3>注册</h3>
    <div class="form-group">
			<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-id-card"></i></span>
			<input name="customer.identification" type="text" class="form-control" placeholder="您的ID/企业ID" required>
			</div>
			<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user"></i></span>
			<input name="customer.name" type="text" onblur="checkName();" id="ha" class="form-control" placeholder="姓名/公司全称" required>				
			</div>
            <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
            <input name="customer.customeradress" type="text" class="form-control" placeholder="地址" required>
			</div>
			<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-phone"></i></span>
			<input name="customer.customercontact" type="text" class="form-control" placeholder="联系方式" required>
			</div>
			<div class="input-group">
			<span  id="sp1" class="input-group-addon"><i class="fa fa-key"></i></span>
			<!-- <input name="customer.password" type="password" class="form-control" pattern="^[a-zA-Z]\w{5,15}$" placeholder="请输入密码" required> -->
			<!-- <input name="customer.password" type="password" class="form-control" placeholder="请输入密码"> -->
			<input  name="customer.password" type="password" class="form-control" id="pa" onblur="checkPassword();" placeholder="请输入密码">
			</div>
			<!--<s:fielderror fieldName="customer.password" cssClass="fielderror"></s:fielderror>-->
			<div class="input-group">
			<span  id="sp2"  class="input-group-addon"><i class="fa fa-repeat"></i></span>
			<input name="confirmpass" type="password" class="form-control" onblur="checkConfirm();" id="papa" placeholder="请确认密码" required>
			</div>
			<div>
			<select name="deg" class="form-control">
			   <option>高中</option>
               <option>大专</option>
               <option>本科</option>
               <option>研究生</option>
               <option>博士</option>
			</select>
			<!-- <input name="customer.ifcustomer" type="hidden" value="1" required> -->
			</div>
			<div>
			<select name="flag" class="form-control">
			   <option>我是应聘方</option>
               <option>我是招聘方</option>
			</select>
			<!-- <input name="customer.ifcustomer" type="hidden" value="1" required> -->
			</div>
			<div>
                 <span id="tipun" class="fielderror"></span>
            </div>
            <div>
                 <span id="tipu" class="fielderror"></span>
            </div>
	</div>
	<button type="submit" class="btn btn-success btn-login" onclick="check();">注册</button>
	<span>已有账号？去</span><a href="login.jsp" >登录</a>
	</s:form>
    </main>
    
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <script src="<%=basePath%>js/bootstrapValidator.js"></script>
    
    <!-- 
    <script type="text/javascript">
       $(document).ready(function(){
         $('#defaultForm')
           .bootstrapValidator({
               message:'请输入内容',
               feedbackIcons:{
               valid:'fa fa-check',
               invalid:'fa fa-remove',
               validating:'fa fa-refresh'
               },
               fields:{
                  'customer.name':{
                  message:'用户名无效',
                  validators:{
                     notEmpty:{
                     message:'用户名不得为空'
                     },
                     stringLength:{
                     min:6,
                     max:20,
                     message:'用户名必须在6-20个字符之间'
                     },
                     regexp:{
                     regexp:/^[a-zA-Z0-9_\.]+$/,
                     message:'用户名只能包含字母、数字、点、下划线'
                     }
                  }
                  },
                  'customer.password':{
                      validators:{
                         notEmpty:{
                            message:'密码不得为空'
                         },
                         different:{
                            field:'customer.name',
                            message:'密码不能与用户名相同'
                         },
                      }
                  },
               }
           });
       });
    </script>
     -->
     <script type="text/javascript">
       function checkPassword() {
           var pa = document.getElementById("pa");
           var txt = pa.value;
           var tipun = document.getElementById('tipu');
           var message = '';
           if (txt.length <= 6) {
	          message += '推荐密码7个以上字符<br>';
	       }
	       var patrn= /^[A-Za-z0-9]+$/;
	       if (!patrn.exec(txt)){
	          message += '密码仅由数字和英文字母组成<br>';
	       }
	       tipun.innerHTML = message;
       }
       function checkName(){
           var span = document.getElementById("tipun");
           var cu = document.getElementById("ha");
           var cname = cu.value; 
           var request =new XMLHttpRequest();//创建XMLHttpRequest对象
           request.onreadystatechange = function press(){//回调方法
              if(request.readyState < 4) {  //请求中
                 //span.innerHTML="正在检测";  
              }  
              if(request.readyState == 4) {  
                   if(request.status == 200) {  //成功接受请求
                        if(request.responseText == "no") {  
                             span.innerHTML="用户名已存在"; 
                              
                             //alert("用户名已存在");
                        }else {              
                            span.innerHTML="可以使用哦~";  
                             //alert("可以使用哦");
                        }              
                   }  
               }  
             
           };
           request.open("GET","customer/customer_quName?name="+cname,true);//新建一个请求，向action中发送name
           request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
           request.send("");//发送请求
       }
       function check() {
           var a = document.getElementById('tipun');
           var b = document.getElementById('tipu');
           if (a.value!="" || b.value!="") {
	          alert("用户名不合格/密码格式不正确！无法注册！");
	       }
       }
       
       function checkConfirm() {
           var aa = document.getElementById("papa");
           var bb = document.getElementById("pa");
           var sp1 = document.getElementById("sp1");
           var sp2 = document.getElementById("sp2");
           if(aa.value!==bb.value){
               sp2.innerHTML='<i class="fa fa-times" style="color:red">';
           }else{
               sp2.innerHTML='<i class="fa fa-check" style="color:green">';
           }
       }
    </script> 
     
  </body>
</html>
