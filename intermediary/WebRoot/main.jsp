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
  
  <body>
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
			<div class="main-job" style="text-align: right;float:inline">
			<ul class="main-menu">
			<li><a href="login.jsp">登录</a></li>
			</ul>
             <li><s:form action="message/message_queryMessage" method="post">
            <input type="text" name="keyWords" placeholder="请输入关键词" >
         	<s:submit value="查 询" cssClass="btn btn-primary btn-block btn-large" style="width: 50%;margin: 10px -6px 10px 104px;"></s:submit>
             </s:form></li>
				
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
 <div id="menu-container">
		<div id="menu-1" class="homepage home-section container">
			<div class="home-intro text-center">
				<h2 class="welcome-title animated fadeInLeft">Introduction</h2>
				<p class="animated fadeInRight"><span class="blue">E work</span>，为您提供海量招聘信息，不管是销售，还是服务，不管是设计还是创业，我们都将为您提供。<span class="blue">E work</span>绝对是您的事业之舟上一盏永不熄灭的<span class="green">明灯</span>，一个永不错误的<span class="green">罗盘</span>。</p>
				<ul class="list-icons animated fadeInUp">
					<li><i class="icon-trophy"></i></li>
					<li><i class="icon-badge"></i></li>
					<li><i class="icon-magic-wand"></i></li>
					<li><i class="icon-screen-desktop"></i></li>
				</ul>
			</div>
			<div class="home-projects">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<div class="project-title animated fadeInUp">
							<h2>近  期  成  就</h2>
							<p>从E work开始至今，越来越多的人在E work上注册了账户，也有越来越的招聘方发布更多的招聘信息，E work也在这些契机中站稳脚步，砥砺前行，从黑暗中斩落荆棘，向着的黎明进发。<br><br>目前，E work已为各个招聘方招入了许多人才，百度，京东等均有招聘信息发布。社会未挖掘人才也在E work迈入了道路。</p>
							<a href="#" class="pink-button">加入我们</a>
						</div>
					</div>
					<div class="project-home-holder col-md-6 col-sm-12">
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="project-item one animated fadeInRight">
									<img src="<%=basePath%>images/1.jpg" alt="" width="600px" height="200px">
									<div class="overlay">
										<h4><a href="#">Project One</a></h4>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="project-item two animated fadeInRight">
									<img src="<%=basePath%>images/2.jpg" alt="" width="600px" height="200px">
									<div class="overlay">
										<h4><a href="#">Project Two</a></h4>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="project-item three animated fadeInRight">
									<img src="<%=basePath%>images/3.jpg" alt="" width="600px" height="200px">
									<div class="overlay">
										<h4><a href="#">Project Three</a></h4>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="project-item four animated fadeInRight">
									<img src="<%=basePath%>images/4.jpg" alt="" width="600px" height="200px">
									<div class="overlay">
										<h4><a href="#">Project Four</a></h4>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="menu-2" class="content about-section container">
			<div class="our-story">
				<div class="story-bg animated fadeIn"></div>
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div class="inner-story animated fadeInRight text-center">
							<h2>ABOUT US</h2>
							<p> E work成立于2018年1月8日，“work”已经代表E work是个招聘信息网，在这里，
无论你是刚毕业的大学生，还是中途跳槽的人才，都可以通过E work找到你的最满意的功工作。
E work会对各种招聘信息进行审核，并在每项信息中加以提示，凡是需要提前收取金额的信息均视为虚假招聘信息，望各位用户谨记。<br>
</p>
						</div>
					</div>
				</div>
			</div>
			<div class="our-offers">
				<div class="offer-bg animated fadeIn"></div>
				<div class="offer-header">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 text-center">
							<div class="offer-title animated fadeInDown">
								<h2>OUR WORK</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="offer-holder">
						<div class="col-md-6">
							<div class="offer-item offer-1 animated fadeInLeft">
								<figure>
									<img src="images/9.jpg" alt="">
								</figure>
								<div class="offer-content text-center">
									<h4>HAPPY WORKING WITH US</h4>
									<p>我们公司是一个是很团结的集体，各成员之间相互关注，相互协助，一起为公司更美好的明天而奋斗，同时公司也会不定期给公司成员提供旅行出游的福利。</p>
									<span class="offer-left"><i></i></span>
									<span class="offer-right"><i></i></span>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="offer-item offer-2 animated fadeInRight">
								<figure>
									<img src="images/a2.jpg" alt="">
								</figure>
								<div class="offer-content text-center">
									<h4>OUR COMPANY BACKGROUND</h4>
									<p>地址：北京市海淀区中关村南大街17号<br>联系方式：13996735761<br>邮箱：yaowugailun@163.co</p>
									<span class="offer-left"><i></i></span>
									<span class="offer-right"><i></i></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="menu-3" class="content project-section container">
			<div class="projects-header">
				<h2 class="animated fadeInRight">Our projects</h2>
				<p class="animated fadeInLeft">E work招聘，已遍布全国为目标，尽全力将其打造成大型招聘网。各类工作信息均有发布在E work上，无论是服务行业，还是电子商务，或是IT编程。不管你想要应聘什么工作，在E work上都能让你梦想成真。
</p>
			</div>
			<div class="projects-holder">
				<div class="row">
					<div class="col-md-4 col-sm-6 p-1 animated umScaleIn">
						<div class="project-item">
							<img src="images/5.jpg" alt=""  width="337.33px" height="249.61px">
							<div class="overlay">
								<h4><a href="#">Project One</a></h4>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 p-2 animated umScaleIn">
						<div class="project-item">
							<img src="images/10.jpg" alt="" width="337.33px" height="249.61px">
							<div class="overlay">
								<h4><a href="#">Project Two</a></h4>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 p-3 animated umScaleIn">
						<div class="project-item">
							<img src="images/12.jpg" alt="" width="337.33px" height="249.61px">
							<div class="overlay">
								<h4><a href="#">Project Three</a></h4>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 col-sm-6 p-4 animated umScaleIn">
						<div class="project-item animated umScaleIn">
							<img src="images/8.jpg" alt="" width="244px" height="180.55px">
							<div class="overlay">
								<h4><a href="#">Project Four</a></h4>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="project-item p-5 animated umScaleIn">
							<img src="images/9.jpg" alt="" width="244px" height="180.55px">
							<div class="overlay">
								<h4><a href="#">Project Five</a></h4>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="project-item p-6 animated umScaleIn">
							<img src="images/11.jpg" alt="" width="244px" height="180.55px">
							<div class="overlay">
								<h4><a href="#">Project Six</a></h4>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6">
						<div class="project-item p-7 animated umScaleIn">
							<img src="images/7.jpg" alt="" width="244px" height="180.55px">
							<div class="overlay">
								<h4><a href="#">Project Seven</a></h4>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="menu-4" class="content blog-section container">
			<div class="blog-header text-center">
				<h2 class="animated fadeInRight">company advantage</h2>
				<p class="animated fadeInLeft">我们公司能够在与其他公司的竞争中脱颖而出主要因为我们公司有如下几点优势.</p>
				<a href="#" class="blog-button animated fadeInUp">加入我们</a>
			</div>
			<div class="row blog-posts">
				<div class="col-md-4 col-sm-12">
					<div class="blog-item post-1 animated zoomIn">
						<div class="blog-bg blog-pink"></div>
						<div class="blog-content">
							<h3><a href="#"><span class="blue">高   效</span></a></h3>
							<span class="solid-line"></span>
							<p>E work在工作效率上有绝对的自信。不管是发布招聘还是提交申请，都保证能够在审核后的第一时间出现我们的E work首页上。</p>
							<a href="#" class="post-button">Read More</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-12">
					<div class="blog-item post-2 animated zoomIn">
						<div class="blog-bg blog-blue"></div>
						<div class="blog-content">
							<h3><a href="#"><span class="blue">安   全</span></a></h3>
							<span class="solid-line"></span>
							<p>用户在提交申请后，与招聘方联系时，如有应聘前先交押金之类的信息，请将其是视为欺诈招聘信息，E work也会在每项信息下方均有提示。</p>
							<a href="#" class="post-button">Read More</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-12">
					<div class="blog-item post-3 animated zoomIn">
						<div class="blog-bg blog-green"></div>
						<div class="blog-content">
							<h3><a href="#"><span class="blue">便   捷</span></a></h3>
							<span class="solid-line"></span>
							<p>E work是一个为应聘方和招聘方提供便捷的招聘信息网，用户只需一份简历便可申请任何工作，也可以投放简历到平台供招聘方主动联系。</p>
							<a href="#" class="post-button">Read More</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="menu-5" class="content contact-section container">
			<div class="contact-header text-center">
				<h2 class="animated fadeInLeft">Get in Touch</h2>
				<p class="animated fadeInRight">如果有任何不明白事宜或者有需求请联系我们，我们很乐意为您解答.</p>
				<ul class="contact-social animated fadeInUp">
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
					<li><a href="#"><i class="fa fa-instagram"></i></a></li>
					<li><a href="#"><i class="fa fa-share-alt"></i></a></li>
				</ul>
			</div>
			<div class="contact-holder">
				<div class="row">
					<div class="col-md-6 col-sm-12">
			            <div class="googlemap-wrapper animated fadeInLeft">
                            <div id="map_canvas" class="map-canvas"></div>
                        </div>
					</div>
					<div class="col-md-6 col-sm-12">
						<div class="contact-form animated fadeInUp">
							<h4>Send us a Message</h4>
							<div class="row">
								<fieldset class="col-md-6">
									<input type="text" name="name" placeholder="姓  名">
								</fieldset>
								<fieldset class="col-md-6">
									<input type="email" name="email" placeholder="邮  箱">
								</fieldset>
								<fieldset class="col-md-12">
									<input type="text" name="subject" placeholder="职  位">
								</fieldset>
								<fieldset class="col-md-12">
									<textarea name="message" id="message" cols="30" rows="10" placeholder="描 述 一 下 你 的 期 望 与 需 求"></textarea>
								</fieldset>
								<fieldset class="col-md-12">
									<a href="#" class="message-button">发  送</a>
								</fieldset>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


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