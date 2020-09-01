<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/pintuer.css">
    <link rel="stylesheet" href="../css/admin.css">
    <script src="../js/jquery.js"></script>   
</head>

<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="../images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />生产人员后台管理中心</h1>
  </div>
  <div class="head-l"></a> &nbsp;&nbsp;<a class="button button-little bg-red" href="<%=request.getContextPath()%>/login/login.do"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <c:if test="${not empty mList2}"> 
<h2><span class="icon-user"></span><c:forEach items="${mList2}" var="m2">${m2.MNAME}</c:forEach></h2>
  <ul style="display:block">
  
  <c:forEach items="${mList}" var="m">
  	<li><a href="<%=request.getContextPath() %>${m.MURL}&UID=${users.UID}"  target="right"></span>${m.MNAME}</a></li>
  	</c:forEach>
  </ul>   
  </c:if>
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="{:U('Index/info')}" target="right" class="icon-home"> 首页</a></li>
  <li><a href="##" id="a_leader_txt">网站信息</a></li>
  <li><b>当前语言：</b><span style="color:red;">中文</php></span>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎您：<a style="font-weight: bolder ;font-size:15px" href="##">${users.UNAME}</a> </li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="../index2.jsp"  name="right" width="100%" height="100%"></iframe>
</div>
</body>
</html>