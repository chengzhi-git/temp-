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
<script src="../js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div style="text-align:center;" class="panel-head"><strong class="icon-reorder">入库部门人员权限管理</strong> </div>
      <table  class="table table-hover text-center" border="1" >
<tr><th style="font-size:30px; text-align:center;" colspan="9">未分配部门员工</th></tr>
<tr>
<th>员工编号</th>
<th>部门编号</th>
<th>员工姓名</th>
<th>员工年龄</th>
<th>员工性别</th>
<th>员工电话</th>
<th>员工地址</th>
<th colspan="2">权限分配</th>
</tr>
<c:forEach items="${zList}" var="z">
<tr>
<form action="<%=request.getContextPath()%>/pm/bangdingcg4.do" method="post">
<td><input type="hidden" name="UID" value="${z.UID}">${z.UID}</td>
<td><input type="hidden" name="DEPTID"value="${z.DEPTID}">${z.DEPTID}</td>
<td><input type="hidden" name="UNAME"value="${z.UNAME}">${z.UNAME}</td>
<td><input type="hidden" name="UAGE"value="${z.UAGE}">${z.UAGE}</td>
<td><input type="hidden" name="USEX" value="${z.USEX}">${z.USEX}</td>
<td><input type="hidden" name="UTEL" value="${z.UTEL}">${z.UTEL}</td>
<td><input type="hidden" name="UADDRESS" value="${z.UADDRESS}">${z.UADDRESS}</td>
<td><input type="hidden" name="D2" value="${dList.get(4).DEPTID}"> ${dList.get(4).DEPTNAME}</td>
<td><div><span class="icon-trash-o"></span><input  type="submit" class="button border-main" value="绑定"></div>  </td>
</form>
</tr>
</c:forEach>
</table>
    <table class="table table-hover text-center" border="1" >
<tr><th style="font-size:30px; text-align:center;" colspan="10">本部门员工</th></tr>
<tr>
<th>员工编号</th>
<th>部门编号</th>
<th>员工姓名</th>
<th>员工年龄</th>
<th>员工性别</th>
<th>员工电话</th>
<th>员工地址</th>
<th colspan="2">权限管理</th>
</tr>
<c:forEach items="${jhList}" var="z">
<tr>
<form action="<%=request.getContextPath()%>/pm/jhsc.do" method="post">
<td><input type="hidden" name="UID" value="${z.UID}">${z.UID}</td>
<td><input type="hidden" name="DEPTID"value="${z.DEPTID}">${z.DEPTID}</td>
<td><input type="hidden" name="UNAME"value="${z.UNAME}">${z.UNAME}</td>
<td><input type="hidden" name="UAGE"value="${z.UAGE}">${z.UAGE}</td>
<td><input type="hidden" name="USEX" value="${z.USEX}">${z.USEX}</td>
<td><input type="hidden" name="UTEL" value="${z.UTEL}">${z.UTEL}</td>
<td><input type="hidden" name="UADDRESS" value="${z.UADDRESS}">${z.UADDRESS}</td>
<td><div><span class="icon-trash-o"></span><input class="button border-red"   onclick="return del(1,1,1)" type="submit" value="在此部门删除"></div></td>
</form>
</tr>
</c:forEach>
</table>
</div>
<script type="text/javascript">
function changesearch(){	
		
}

//单个删除
function del(id,mid,iscid){
	if(confirm("您确定要删除吗?")){
		
	}
}

//全选
$("#checkall").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

//批量删除
function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false;		
		$("#listform").submit();		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

//批量排序
function sorts(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		return false;
	}
}


//批量首页显示
function changeishome(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}

//批量推荐
function changeisvouch(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");	
		
		return false;
	}
}

//批量置顶
function changeistop(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}


//批量移动
function changecate(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		
		return false;
	}
}

//批量复制
function changecopy(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		var i = 0;
	    $("input[name='id[]']").each(function(){
	  		if (this.checked==true) {
				i++;
			}		
	    });
		if(i>1){ 
	    	alert("只能选择一条信息!");
			$(o).find("option:first").prop("selected","selected");
		}else{
		
			$("#listform").submit();		
		}	
	}
	else{
		alert("请选择要复制的内容!");
		$(o).find("option:first").prop("selected","selected");
		return false;
	}
}

</script>
</body>
</html>