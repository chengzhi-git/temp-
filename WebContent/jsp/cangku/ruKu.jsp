<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title><!-- 入库人员的全部任务 --></title>
<link rel="stylesheet" href="../../css/pintuer.css">
<link rel="stylesheet" href="../../css/admin.css">
<script src="../../js/jquery.js"></script>
<script src="../../js/pintuer.js"></script>
</head>
<body>

<script type="text/javascript">
  		function pass(a){
  			//通过审核之后生成入库表，在入库表中
  			var canshu = "aa"+a;
  			alert(canshu)
  			var form1 = document.getElementById(canshu);
  			form1.action = "<%=request.getContextPath()%>/cangku/daiShenHe/insertToIstore.do";
  			form1.submit();
  		}
  		
  		function back(a){
  			var canshu = "aa"+a;
  			var form1 = document.getElementById(canshu);
  			form1.action = "<%=request.getContextPath()%>/cangku/daiShenHe/updatePlanToBack.do";
  			form1.submit();
  		}
  </script>
  


  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 生成入库表单</strong> <a href="" style="float:right; display:none;"><!-- 添加字段 --></a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <!-- <a class="button border-main icon-plus-square-o" href="add.html"> 添加内容</a> --> </li>
        <li><!-- 搜索： --></li>
        <li><!-- 首页 -->
          <!-- <select name="s_ishome" class="input" onchange="changesearch()" style="width:60px; line-height:17px; display:inline-block">
            <option value="">选择</option>
            <option value="1">是</option>
            <option value="0">否</option>
          </select>
          &nbsp;&nbsp;
          推荐
          <select name="s_isvouch" class="input" onchange="changesearch()"  style="width:60px; line-height:17px;display:inline-block">
            <option value="">选择</option>
            <option value="1">是</option>
            <option value="0">否</option>
          </select>
          &nbsp;&nbsp;
          置顶
          <select name="s_istop" class="input" onchange="changesearch()"  style="width:60px; line-height:17px;display:inline-block">
            <option value="">选择</option>
            <option value="1">是</option>
            <option value="0">否</option>
          </select>
        </li>
        <if condition="$iscid eq 1">
          <li>
            <select name="cid" class="input" style="width:200px; line-height:17px;" onchange="changesearch()">
              <option value="">请选择分类</option>
              <option value="">产品分类</option>
              <option value="">产品分类</option>
              <option value="">产品分类</option>
              <option value="">产品分类</option>
            </select>
          </li>
        </if> -->
        <!-- <li>
          <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
      </ul> -->
    </div>
    <form action="<%=request.getContextPath()%>/cangku/daiShenHe/insertIntoRuKu.do"   method="post">
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">序号</th>
        <th width="10%">生产计划名称</th>
        <th>生产人员</th>
        <th>商品名称</th>
        
        <th>计划数量</th>
        <th>实际生产数量</th>
       
        <th>规格</th>
         <th>选择仓库</th>
        
        <th>审核人员</th>
        <th width="310">处理</th>
      </tr>
      <volist name="list" id="vo">
        
         
         <tr>
          <!-- 序号 -->
          <td style="text-align:left; padding-left:20px;"><!-- <input type="checkbox" name="id[]" value="" /> -->
          	${st.index+1}<input type="hidden" name="ISID" value="${inStore.ISID}">
		<!-- 隐藏计划ID -->
		<input type="hidden" name="PID" value="${tostorelistTshu.PID}"></td>
          	
          <!-- 生产计划名称，实际值是计划ID -->
          <td>${tostorelistTshu.PNAME}<input type="hidden"  value="${tostorelistTshu.PNAME}" name="PNAME"   style="width:50px; text-align:center; border:1px solid #ddd; padding:7px 0;" /></td>
         
          <!-- 生产人员名称，实际值是人员ID -->
          <td width="10%">${tostorelistTshu.UNAME}<input type="hidden" name="UNAME"  value="${tostorelistTshu.UNAME}"  style="width:50px; text-align:center; border:1px solid #ddd; padding:7px 0;" /></td>
          
          <!-- 商品名称 实际是商品ID -->
          <td>${tostorelistTshu.GNAME}<input type="hidden" name="GNAME"  value="${tostorelistTshu.GNAME}"></td>
          
         <!-- 计划数量-->
          <td>${tostorelistTshu.PCOUNT}<input type="hidden" name="PCOUNT" value="${tostorelistTshu.PCOUNT}"></td>
          
          <!-- 实际生产数量-->
          <td>${tostorelistTshu.TSLCOUNT}
		<input type="hidden" name="ISLCOUNT" value="${tostorelistTshu.TSLCOUNT}"></td>
          
           
          
          <!-- 选择规格-->
          <td><input type="hidden" name="ISLGUI" value="${tostorelistTshu.GG}">${tostorelistTshu.GG}
		</td>
          
          <!-- 选择仓库 -->
		<td><select name="GPID">
					<c:forEach items="${cangKuList}" var="cangKuList">
					<option value="${cangKuList.GPID}">${cangKuList.SNAME}--${cangKuList.GPS}--${cangKuList.SPACE}</option>
					</c:forEach>
				</select>
		</td>
          
          
          	<!-- 提交人员名称，实际值是人员ID -->
          <td width="10%">${users.UNAME}<input type="hidden" name="TSREN"  value="${users.UNAME}"  style="width:50px; text-align:center; border:1px solid #ddd; padding:7px 0;" ></td>
          
          <td><div class="button-group"> <input type="submit" class="button border-main" value="入库"><%-- <a class="button border-main" href="javascript:void(0)"  onclick="pass(${tostorelistTshu.TSLID})"> 入库</a>  --%><%-- <a class="button border-red" href="javascript:void(0)" onclick="back(${tostorelistList.TSLID})">退回重做 --%><!-- 这里可以做一个定时器，延时提交到数据库，表示提交之后的一段时间可以放弃提交 --> </div></td>
        </tr>
        
    </table>
    </form>
  </div>

<script type="text/javascript">

//搜索
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