 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="en">
<head>
     <style type="text/css">
        td{
            text-align:center;
            width:100px;
            height:30px;
        }
        input{
            width:98%;
            height:98%;
        }

    </style>
    <title>个人简历</title>
    <link rel="stylesheet" href="<%=basePath%>css/res.css" type="text/css"></link>
    <link rel="shortcut icon" href="<%=basePath%>images/favicon.png">
    
</head>
<body>

<div class="da">
       <div class="step">
              <h1 style="text-align:center;margin-top:55px;">简历</h1> 

       </div>
       
        <div class="container">
        <form action="customerorder/customerorder_wantOrder" enctype="multipart/form-data" method="post">
 <input type="hidden" style="text" name="customerorder.jobid" value="${customerorder.jobid}">
 <s:hidden style="text" name="customerorder.id" value="%{#session.customer.customerid}"></s:hidden>
 <s:hidden style="text" name="customerorder.resume" value="%{#session.customer.degree}"></s:hidden>
 <input type="hidden" style="text" name="customerorder.fid" value="${customerorder.fid}">
 <div class="basic">
       <p class="title t1"><strong>个人信息</strong></p>
        
        <table align="center">
   <!--第一行-->
        <tr>
            <td>姓名</td>
            <td><input type="text" name="customerorder.name" value="${session.customer.name}"> </td>
            <td>性别</td>
            <td><input type="text" name="customerorder.sex" value="${session.customer.sex}"></td>
            <td>出生年月</td>
            <td><input type="text" name="customerorder.birth" value="${session.customer.birth}"></td>
            <td rowspan="4" ><img src="<%=basePath%>upload/customerp/${customer.customerphoto}"></td>
        </tr>
        <!--第二行-->
        <tr>
            <td>民族</td>
            <td><input type="text" name="customerorder.nation" value="${session.customer.nation}"></td>
            <td>政治面貌</td>
            <td><input type="text" name="customerorder.politicstatus" value="${session.customer.politicstatus}"></td>
            <td>身高</td>
            <td><input type="text" name="customerorder.height" value="${session.customer.height}"></td>
        </tr>
         <!--第三行-->
        <tr>
            <td>学制</td>
            <td><input type="text" name="customerorder.schoolsystem" value="${session.customer.schoolsystem}"></td>
            <td>学历</td>
            <td><input type="text" name="customerorder.education" value="${session.customer.education}"></td>
            <td>户籍</td>
            <td><input type="text" name="customerorder.householdregister" value="${session.customer.householdregister}"></td>
        </tr>
        <!--第四行-->
        <tr>
            <td>专业</td>
            <td><input type="text" name="customerorder.major" value="${session.customer.major}"></td>
            <td colspan="1">毕业学校</td>
            <td colspan="3"><input type="text" name="customerorder.school" value="${session.customer.school}"></td>
        </tr>
        </table>
       </div>
       <div class="e">
       <div class="education">
              <p class="title t2"><strong>教育经历</strong> ( 请根据自身教育情况从高到低填写 ) </p>
       </div>
        <table align="center">
        <!--第一行-->
        <tr>
            <td colspan="2">时间</td>
            <td colspan="2">单位</td>
            <td colspan="3">经历</td>
        </tr>
        <!--第二行-->
      <tr>
            <td colspan="2"><input type="text" name="customerorder.t1" value="${session.customer.t1}"></td>
            <td colspan="2"><input type="text" name="customerorder.c1" value="${session.customer.c1}"></td>
            <td colspan="3"><input type="text" name="customerorder.e1" value="${session.customer.e1}"></td>
        </tr>
       
         <!--第三行-->
        <tr>
            <td colspan="2"><input type="text" name="customerorder.t1" value="${session.customer.t2}"></td>
            <td colspan="2"><input type="text" name="customerorder.c1" value="${session.customer.c2}"></td>
            <td colspan="3"><input type="text" name="customerorder.e1" value="${session.customer.e2}"></td>
        </tr>
        <!--第四行-->
          <tr>
            <td colspan="2"><input type="text" name="customerorder.t1" value="${session.customer.t3}"></td>
            <td colspan="2"><input type="text" name="customerorder.c1" value="${session.customer.c3}"></td>
            <td colspan="3"><input type="text" name="customerorder.e1" value="${session.customer.e3}"></td>
        </tr>
         <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        
        </table>
       </div>
       <div class="else">
       <p class="title t3"><strong>其他</strong></p>
        <table align="center">
        <tr>
            <td colspan="7" ><b>技能、特长或爱好</b> </td>
        </tr>
        <tr>
            <td>外语等级</td>
            <td colspan="2"><input type="text" name="customerorder.foreignlanguage" value="${session.customer.foreignlanguage}"></td>
            <td>计算机</td>
            <td colspan="3"><input type="text" name="customerorder.computer" value="${session.customer.computer}"></td>
        </tr>
        
        <tr>
            <td colspan="7">联系方式</td>
        </tr>
        <tr>
            <td>通信地址</td>
            <td colspan="2"><input type="text" name="customerorder.customeradress" value="${session.customer.customeradress}"></td>
            <td>联系电话</td>
            <td colspan="3"><input type="text" name="customerorder.customercontact" value="${session.customer.customercontact}"></td>
        </tr>
        <tr>
            <td>E-mail</td>
            <td colspan="2"><input type="text" name="customerorder.email" value="${session.customer.email}"></td>
            <td>邮编</td>
            <td colspan="3"><input type="text" name="customerorder.zipcode" value="${session.customer.zipcode}"></td>
        </tr>
        <tr>
            <td colspan="7">自我评价</td>
        </tr>
        <tr>
            <td colspan="7" ><textarea cols="100%" rows="10" name="customerorder.evaluation" value="${session.customer.evaluation}"></textarea></td>
        </tr>
        </table>
        </div>
        <center><button type="submit">提交申请</button></center>
        <center style="margin:10 auto;"><button onclick="javascript:history.back();" value="返回到上一个页面">返回上一页</button></center>
        </form>
        </div>
       </div>
  
</body>
</html>