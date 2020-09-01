<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../css/pintuer.css">
<link rel="stylesheet" href="../css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
<form method="post" action="<%=request.getContextPath()%>/plan/addTostorelist.do" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 已交库列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="add.html"> 查询内容</a> </li>
        <li>
          <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
      </ul>
    </div>
    <table class="table table-hover text-center">
    <form method="post" action="<%=request.getContextPath()%>plan/addTostore.do" id="listform">
      <tr>${st.index+1}
        <th width="100" style="text-align:left; padding-left:20px;">交库ID</th>
        <th>生产计划名称</th>
        <th>商品名称</th>
        <th>交库数量</th>
        <th width="10%">交库日期</th>
      </tr>
      <volist name="list" id="vo">
       <c:forEach items="${planList}" var="planList" varStatus="st">
       
         <tr>
          <td style="text-align:center; padding-left:20px;">${st.index+1}<input type="hidden" name="TSLID" value="${planList.TSLID}" />
          </td>
          <td style="text-align:center; padding-left:20px;"><input type="hidden" name="PNAME" value="${planList.PNAME}" />
          ${planList.TSNAME}</td>
          <td style="text-align:center; padding-left:20px;"><input type="hidden" name="GNAME" value="${planList.GNAME}" />
          ${planList.GNAME}</td>
          <td style="text-align:center; padding-left:20px;"><input type="hidden" name="TSLCOUNT" value="${planList.TSLCOUNT}" />
          ${planList.TSLCOUNT}</td>
          <td><fmt:formatDate value="${planList.TSLDATE}" pattern="yyyy-MM-dd"/>
          </td>
		</c:forEach>
	</tr>
      <tr>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">
</script>
</body>
</html>