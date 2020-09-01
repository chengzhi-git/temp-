<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>edit title here</title>
<script type="text/javascript"  src="<%=request.getContextPath()%>/js/My97DatePicker/WdatePicker.js"></script>
<%-- </head>
<body>
<form action="<%=request.getContextPath()%>/p/edit.do" method="post">
<table border="1px">
			<tr>
		<td>生产计划名<input type="text" name="PNAME" value="${p.PNAME}"/>
		<input type="hidden" name="PID" value="${p.PID}"/></td>
	</tr>
	<tr>
		<td>员工姓名<select name="UID">
		<!-- option  selected="selected">请选择</option> -->
		<c:forEach items="${planList2}" var="planList2">
		<option value="${planList2.UID}"  <c:if test="${planList2.UID} == ${p.UID}">selected="selected"</c:if> >${planList2.UNAME}</option>
		</c:forEach>
		</select></td>
	</tr>
	<tr>
		<td>生产数量<input type="text"  name="PCOUNT" value="${p.PCOUNT}"/></td>
	</tr>
     <tr>
		<td><input type="submit" value="保存"/></td>
	</tr>
</table>
</form>


</body>
</html>
 --%>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../css/pintuer.css">
<link rel="stylesheet" href="../css/admin.css">
<script src="../js/jquery.js"></script>
<script src="../js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>修改计划</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="<%=request.getContextPath()%>/p/edit.do">  
      <div class="form-group">
        <div class="label">
          <label>生产计划名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50"  name="PNAME"  value="${p2.PNAME}" />
		<input type="hidden" name="PID" value="${p2.PID}"/>
          <div class="tips"></div>
        </div>
      </div>

      <div class="form-group">
        <div class="label">
          <label>生产数量：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50"  name="PCOUNT"  value="${p2.PCOUNT}" />
          <div class="tips"></div>
        </div>
      </div>

         <if condition="$iscid eq 1">
        <div class="form-group">
          <div class="label">
            <label>员工姓名：</label>
          </div>
          <div class="field">
            <select name="UID" class="input w50">
             <c:forEach items="${planList2}" var="planList2">
			<option value="${planList2.UID}"  <c:if test="${planList2.UID} == ${p2.UID}">selected="selected"</c:if> >${planList2.UNAME}</option>
			</c:forEach>
            </select>
            
            <div class="tips"></div>
          </div>
        </div>

       
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>

</body></html>