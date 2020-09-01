<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1px">
<td><a href="<%=request.getContextPath()%>/p/toAdd.do">添加</a></td>
	<tr>
		<td>生产计划清单编号</td>
		<td>生产计划名</td>
		<td>生产数量</td>
		<td>人员姓名</td>
		<td>审核状态</td>
		<td>提交次数</td>
		<td>退回次数</td>
		<td>商品名称</td>
		<td>生产日期</td>
		<td>操作</td>
	</tr>
	<c:forEach items="${planList}" var="planList">
	<tr>
		<td>${planList.PID}</td>
		<td>${planList.PNAME}</td>
		<td>${planList.PCOUNT}</td>
		<td>${planList.UNAME}</td>
		<td>${planList.PSTATUS}</td>
		<td>${planList.PSUBMIT}</td>
		<td>${planList.PBACK}</td>
		<td>${planList.GNAME}</td>
		<td><fmt:formatDate value="${planList.PDATE}" pattern="yyyy-MM-dd"/></td>
		<td><a href="<%=request.getContextPath()%>/p/toEdit.do?PID=${planList.PID}">修改</a></td>	
		<td><a href="<%=request.getContextPath()%>/p/delete.do?PID=${planList.PID}">删除</a></td>	
	</tr>
	</c:forEach>
</table>
</body>
</html>