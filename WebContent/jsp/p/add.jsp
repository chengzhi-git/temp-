<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"  src="<%=request.getContextPath()%>/js/My97DatePicker/WdatePicker.js"></script>


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
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加计划</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="<%=request.getContextPath()%>/p/add.do">  
      <div class="form-group">
        <div class="label">
          <label>生产计划名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="PNAME" data-validate="required:请输入计划" />
          <div class="tips"></div>
        </div>
      </div>
      
      
      <div class="form-group">
        <div class="label">
          <label>生产数量：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="PCOUNT" data-validate="required:请输入数量" />
          <div class="tips"></div>
        </div>
      </div>
      
      
     <!--  <div class="form-group">
        <div class="label">
          <label>图片：</label>
        </div>
        <div class="field">
          <input type="text" id="url1" name="img" class="input tips" style="width:25%; float:left;"  value=""  data-toggle="hover" data-place="right" data-image="" />
          <input type="button" class="button bg-blue margin-left" id="image1" value="+ 浏览上传"  style="float:left;">
          <div class="tipss">图片尺寸：500*500</div>
        </div>
      </div>      -->
      
      <if condition="$iscid eq 1">
        <div class="form-group">
          <div class="label">
            <label>商品名称：</label>
          </div>
          <div class="field">
            <select name="GID" class="input w50">
              <option  selected="selected">请选择</option>
				<c:forEach items="${planList1}" var="planList1">
				<option value="${planList1.GID}" > ${planList1.GNAME}</option>
				</c:forEach>
            </select>
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
              <option  selected="selected">请选择</option>
				<c:forEach items="${planList2}" var="planList2">
				<option value="${planList2.UID}" > ${planList2.UNAME}</option>
				</c:forEach>
            </select>
            <input type="hidden"  name="PSTATUS" value="0"/>
		<input type="hidden"  name="PSUBMIT" value="0"/>
		<input type="hidden"  name="PBACK" value="0"/>
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