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
       <div class="basic">
       <p class="title t1"><strong>个人信息</strong></p>
        
        <table align="center">
   <!--第一行-->
        <tr>
            <td>姓名</td>
            <td><input type="text" name="customerorder.name" readonly="true" value="${customerorder.name}"> </td>
            <td>性别</td>
            <td><input type="text" name="customerorder.sex" readonly="true" value="${customerorder.sex}"></td>
            <td>出生年月</td>
            <td><input type="text" name="customerorder.birth" readonly="true" value="${customerorder.birth}"></td>
            <td rowspan="4"><s:hidden type="text" name="customerorder.customerphoto" value="%{#session.customer.customerphoto}"></s:hidden>
            <img src="<%=basePath%>upload/customerp/${customerorder.customerphoto}" alt="" >
            </td>
        </tr>
        <!--第二行-->
        <tr>
            <td>民族</td>
            <td><input type="text" name="customerorder.nation" readonly="true" value="${customerorder.nation}"></td>
            <td>政治面貌</td>
            <td><input type="text" name="customerorder.politicstatus" readonly="true" value="${customerorder.politicstatus}"></td>
            <td>身高</td>
            <td><input type="text" name="customerorder.height" readonly="true" value="${customerorder.height}"></td>
        </tr>
         <!--第三行-->
        <tr>
            <td>学制</td>
            <td><input type="text" name="customerorder.schoolsystem" readonly="true" value="${customerorder.schoolsystem}"></td>
            <td>学历</td>
            <td><input type="text" name="customerorder.education" readonly="true" value="${customerorder.education}"></td>
            <td>户籍</td>
            <td><input type="text" name="customerorder.householdregister" readonly="true" value="${customerorder.householdregister}"></td>
        </tr>
        <!--第四行-->
        <tr>
            <td>专业</td>
            <td><input type="text" name="customerorder.major" readonly="true" value="${customerorder.major}"></td>
            <td colspan="1">毕业学校</td>
            <td colspan="3"><input type="text" readonly="true" name="customerorder.school" value="${customerorder.school}"></td>
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
            <td colspan="2"><input type="text" name="customerorder.t1" readonly="true" value="${customerorder.t1}"></td>
            <td colspan="2"><input type="text" name="customerorder.c1" readonly="true" value="${customerorder.c1}"></td>
            <td colspan="3"><input type="text" name="customerorder.e1" readonly="true" value="${customerorder.e1}"></td>
        </tr>
       
         <!--第三行-->
        <tr>
            <td colspan="2"><input type="text" name="customerorder.t2" readonly="true" value="${customerorder.t2}"></td>
            <td colspan="2"><input type="text" name="customerorder.c2" readonly="true" value="${customerorder.c2}"></td>
            <td colspan="3"><input type="text" name="customerorder.e2" readonly="true" value="${customerorder.e2}"></td>
        </tr>
        <!--第四行-->
          <tr>
           <td colspan="2"><input type="text" name="customerorder.t3" readonly="true" value="${customerorder.t3}"></td>
            <td colspan="2"><input type="text" name="customerorder.c3" readonly="true" value="${customerorder.c3}"></td>
            <td colspan="3"><input type="text" name="customerorder.e3" readonly="true" value="${customerorder.e3}"></td>
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
            <td colspan="2"><input type="text" readonly="true" name="customerorder.foreignlanguage" value="${customerorder.foreignlanguage}"></td>
            <td>计算机</td>
            <td colspan="3"><input type="text" readonly="true" name="customerorder.computer" value="${customerorder.computer}"></td>
        </tr>
        
        <tr>
            <td colspan="7">联系方式</td>
        </tr>
        <tr>
            <td>通信地址</td>
            <td colspan="2"><input type="text" name="customerorder.customeradress" readonly="true" value="${customerorder.customeradress}"></td>
            <td>联系电话</td>
            <td colspan="3"><input type="text" name="customerorder.customercontact" readonly="true" value="${customerorder.customercontact}"></td>
        </tr>
        <tr>
            <td>E-mail</td>
            <td colspan="2"><input type="text" name="customerorder.email" readonly="true" value="${customerorder.email}"></td>
            <td>邮编</td>
            <td colspan="3"><input type="text" name="customerorder.zipcode" readonly="true" value="${customerorder.zipcode}"></td>
        </tr>
        <tr>
            <td colspan="7">自我评价</td>
        </tr>
        <tr>
            <td colspan="7" ><textarea cols="100%" rows="10" name="customerorder.evaluation" readonly>${customerorder.evaluation}</textarea></td>
        </tr>
        </table>
        <center style="margin:10 auto;"><button onclick="javascript:history.back();" value="返回到上一个页面">返回上一页</button></center>
         </div>
       
       </div>
    </div>
</body>
</html>