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
<%--     <script type="text/javascript">
    function jz(a){
    	    var canshu = "aa"+a;
			var form = document.getElementById(canshu);
    		form.action="<%=request.getContextPath()%>/plan/addTostorelist.do";
    		form.submit();
    }
	</script> --%>
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 交库单列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
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
        <th width="100" style="text-align:left; padding-left:20px;">序号交库清单ID</th>
        <th>交库名称</th>
        <th>商品名称</th>
        <th>生产数量</th>
        <th>交库数量</th>
        <th>交库人员</th>
        <th>审核状态</th>
        <th width="10%">交库日期</th>
        <th width="310">操作</th>
      </tr>
      <volist name="list" id="vo">
      
       <c:forEach items="${planList}"  var="planList" varStatus="st">
       
        <%-- <c:forEach items="${planList2}"  var="planList2" varStatus="st"> --%>
         
         <form action="<%=request.getContextPath()%>/plan/addTostorelist.do"  method="post">
          <tr>
          <td style="text-align:center; padding-left:20px;">${st.index+1}<input type="hidden" name="TSID" value="${planList.TSID}" />
         	<input type="hidden" name="PID" value="${planList.PID}" />
          </td>
          <td style="text-align:center; padding-left:20px;"><input type="hidden" name="TSNAME" value="${planList.TSNAME}" />
          ${planList.TSNAME}
          <input type="hidden" name="TSNAME" value="${planList.PNAME}" />
          </td>
          <td style="text-align:center; padding-left:20px;"><input type="hidden" name="GNAME" value="${planList.GNAME}" />
          ${planList.GNAME}</td>
          <td style="text-align:center; padding-left:20px;"><input type="hidden" name="PCOUNT" value="${planList.PCOUNT}" />
          ${planList.PCOUNT}</td>
          <td style="text-align:center; padding-left:20px;"><input type="text" name="TSLCOUNT"  max="${planList.PCOUNT}" />
          </td>
          <td style="text-align:center; padding-left:20px;"><input type="hidden" name="TSREN" value="${planList.TSREN}"/>
          ${planList.UNAME}</td>
         <%--  <td style="text-align:left; padding-left:20px;"><input type="hidden" name="PSTATUS" value="${planList.PSTATUS}" />
          ${planList.PSTATUS}</td> --%>
           <!-- 审核状态-->
           审核状态是：${planList.PSTATUS}哈哈哈
          <td><c:if test="${planList.PSTATUS.equals('1')}">已提交审核</c:if>
				<c:if test="${planList.PSTATUS.equals('0')}">未审核</c:if>
				<c:if test="${planList.PSTATUS.equals('2')}">正在审核</c:if>
					<c:if test="${planList.PSTATUS.equals('3')}">审核通过</c:if>
				<input type="hidden" name="PSTATUS" value="${planList.PSTATUS}">
			</td>
          <td><fmt:formatDate value="${planList.TSDATE}" pattern="yyyy-MM-dd"/>
          </td>
		
		</tr>
		</form>
			</c:forEach>
		
		
		<c:forEach items="${planList2}"  var="planList2" varStatus="st">
       
        <%-- <c:forEach items="${planList2}"  var="planList2" varStatus="st"> --%>
         
         <form action="<%=request.getContextPath()%>/plan/addTostorelist.do"  method="post">
          <tr>
          <td style="text-align:center; padding-left:20px;">${st.index+1}<input type="hidden" name="TSID" value="${planList2.TSID}" />
         	<input type="hidden" name="PID" value="${planList2.PID}" />
          </td>
          <td style="text-align:center; padding-left:20px;"><input type="hidden" name="TSNAME" value="${planList2.TSNAME}" />
          ${planList2.TSNAME}
          <input type="hidden" name="TSNAME" value="${planList2.PNAME}" />
          </td>
          <td style="text-align:center; padding-left:20px;"><input type="hidden" name="GNAME" value="${planList2.GNAME}" />
          ${planList2.GNAME}</td>
          <td style="text-align:center; padding-left:20px;"><input type="hidden" name="PCOUNT" value="${planList2.PCOUNT}" />
          ${planList2.PCOUNT}</td>
          <td style="text-align:center; padding-left:20px;"><input type="text" name="TSLCOUNT"  max="${planList2.PCOUNT}" />
          </td>
          <td style="text-align:center; padding-left:20px;"><input type="hidden" name="TSREN" value="${planList2.TSREN}"/>
          ${planList2.UNAME}</td>
         <%--  <td style="text-align:left; padding-left:20px;"><input type="hidden" name="PSTATUS" value="${planList.PSTATUS}" />
          ${planList.PSTATUS}</td> --%>
           <!-- 审核状态-->
 
          <td><c:if test="${planList2.PSTATUS.equals('1')}">已提交审核</c:if>
				<c:if test="${planList2.PSTATUS.equals('0')}">未审核</c:if>
				<c:if test="${planList2.PSTATUS.equals('2')}">正在审核</c:if>
					<c:if test="${planList2.PSTATUS.equals('3')}">审核通过</c:if>
				<input type="hidden" name="PSTATUS" value="${planList2.PSTATUS}">
			</td>
          <td><fmt:formatDate value="${planList2.TSDATE}" pattern="yyyy-MM-dd"/>
          </td>
		<td>
		<input class="button border-main"  type="submit" value="交库"></input>
		</td>
		</tr>
		</form>
		
		

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