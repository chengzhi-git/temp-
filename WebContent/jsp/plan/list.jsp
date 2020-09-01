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
<script src="./js/jquery.js"></script>
<script src="./js/pintuer.js"></script>
</head>
<body>

  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 待审核列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="add.html"> 查询内容</a> </li>
        <li>
          <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">序号计划ID</th>
        <th>生产计划名称</th>
        <th>商品名称</th>
        <th>生产员工</th>
        <th>生产数量</th>
        <th>审核状态</th>
        <th width="10%">计划生产日期</th>
        <th width="310">操作</th>
      </tr>

       <c:forEach items="${planList}" var="planList" varStatus="st">
       <tr>
       
         
          <td style="text-align:left; padding-left:20px;">${st.index+1}<input type="hidden" name="PID" value="${planList.PID}" />
          </td>
          <td style="text-align:left; padding-left:20px;"><input type="hidden" name="PNAME" value="${planList.PNAME}" />
          ${planList.PNAME}</td>
          
          <td style="text-align:left; padding-left:20px;"><input type="hidden" name="GNAME" value="${planList.GNAME}" />
          ${planList.GNAME}</td>
          
          <td style="text-align:left; padding-left:20px;"><input type="hidden" name="UNAME" value="${planList.UNAME}" />
          ${planList.UNAME}</td>
          
          <td style="text-align:left; padding-left:20px;"><input type="hidden" name="PCOUNT" value="${planList.PCOUNT}" />
          ${planList.PCOUNT}
          <input type="hidden" name="TSREN" value="${users.UNAME}" />
          </td>
          
          
          <!-- 审核状态 -->
  			<td style="text-align:left; padding-left:20px;"><c:if test="${planList.PSTATUS.equals('1')}">正在审核</c:if>
				<c:if test="${planList.PSTATUS.equals('0')}">未审核</c:if>
				<c:if test="${planList.PSTATUS.equals('2')}">审核通过</c:if>
				<input type="hidden" name="PSTATUS" value="${planList.PSTATUS}">
			</td>
          
          <!-- 提交审核时间 -->
          <td><fmt:formatDate value="${planList.PDATE}" pattern="yyyy-MM-dd"/>
          </td>
		<td>
		<a class="button border-main" href="<%=request.getContextPath()%>/plan/addTostore.do?PID=${planList.PID}&PNAME=${planList.PNAME}&UID=${users.UID}"><span class="icon-edit"></span>生成交库单</a>
		</td>
		

		</tr>
		</c:forEach>
	
      <tr>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
      </tr>
    </table>
  </div>

<script type="text/javascript">
</script>
</body>
</html>