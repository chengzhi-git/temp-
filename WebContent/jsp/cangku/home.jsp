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
  			
  			var form1 = document.getElementById(canshu);
  			alert(form1)
  			form1.action = "<%=request.getContextPath()%>/cangku/daiShenHe/insertToInstore.do";
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
    <div class="panel-head"><strong class="icon-reorder"> 待入库列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="add.html"> 添加内容</a> </li>
        <li>搜索：</li>
        <li>首页
          <select name="s_ishome" class="input" onchange="changesearch()" style="width:60px; line-height:17px; display:inline-block">
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
        </if>
        <li>
          <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">序号</th>
        <th width="10%">生产计划名称</th>
        <th>商品名称</th>
        <th>生产人员</th>
        <th>计划数量</th>
        <th>实际生产数量</th>
        <th>审核状态</th>
        <th>选择规格</th>
        <th width="310">处理</th>
        <th>审核人员</th>
      </tr>
      
      <c:forEach items="${tostorelistList}" var="tostorelistList" varStatus="st">
       
        
        <form  id="aa${st.index+1}"  method="post" >
         <tr>
          <!-- 序号 -->
          <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" />
          	${st.index+1}<input type="hidden" name="TSLID" value="${tostorelistList.TSLID}">
		<!-- 隐藏计划ID -->
			<input type="hidden" name="PID" value="${tostorelistList.PID}"></td>
          	
          <!-- 生产计划名称-->
          <td>${tostorelistList.PNAME}<input type="hidden"   name="PNAME"  value="${tostorelistList.PNAME}"   style="width:50px; text-align:center; border:1px solid #ddd; padding:7px 0;" /></td>
         
          <!-- 生产人员名称 -->
          <td width="10%">${tostorelistList.UNAME}<input type="hidden" name="UNAME"  value="${tostorelistList.UNAME}"  style="width:50px; text-align:center; border:1px solid #ddd; padding:7px 0;" /></td>
          
          <!-- 商品名称 实际是商品ID -->
          <td>${tostorelistList.GNAME}<input type="hidden" name="GNAME"  value="${tostorelistList.GNAME}">
          <input type="hidden" name="GID"  value="${tostorelistList.GID}"></td>
          
         <!-- 计划数量-->
          <td>${tostorelistList.PCOUNT}<input type="hidden" name="PCOUNT" value="${tostorelistList.PCOUNT}"></td>
          
          <!-- 实际生产数量-->
          <td>${tostorelistList.TSLCOUNT}
          <input type="hidden" name="TSLCOUNT" value="${tostorelistList.TSLCOUNT}">
          </td>
            <!-- 审核状态-->
          <td><c:if test="${tostorelistList.PSTATUS.equals('1')}">正在审核</c:if>
				<c:if test="${tostorelistList.PSTATUS.equals('0')}">未审核</c:if>
				<c:if test="${tostorelistList.PSTATUS.equals('2')}">审核通过</c:if>
				<input type="hidden" name="PSTATUS" value="${tostorelistList.PSTATUS}">
			</td>
          
          
          <!-- 选择规格-->
          <td><select name="GG">
					<option value="0">--请选择--</option>
					<option value="40">40</option>
					<option value="60">60</option>
					<option value="80">80</option>
				</select>
		</td>
          
          <td><div class="button-group"> <a class="button border-main" href="javascript:void(0)"  onclick="pass(${st.index+1})">审核通过</a> <a class="button border-red" href="javascript:void(0)" onclick="back(${st.index+1})"><span class="icon-trash-o"></span>退回重做</a> </div></td>
      
      		<!-- 提交人员名称，实际值是人员ID -->
          <td width="10%">${users.UNAME}<input type="hidden" name="TSREN"  value="${users.UNAME}"  style="width:50px; text-align:center; border:1px solid #ddd; padding:7px 0;" /></td>
        </tr>
        </form>
        
	</c:forEach>
      <tr>
        <td style="text-align:left; padding:19px 0;padding-left:20px;"><input type="checkbox" id="checkall"/>
          全选 </td>
        <td colspan="7" style="text-align:left;padding-left:20px;"><a href="javascript:void(0)" class="button border-red icon-trash-o" style="padding:5px 15px;" onclick="DelSelect()"> 删除</a> <a href="javascript:void(0)" style="padding:5px 15px; margin:0 10px;" class="button border-blue icon-edit" onclick="sorts()"> 排序</a> 操作：
          <select name="ishome" style="padding:5px 15px; border:1px solid #ddd;" onchange="changeishome(this)">
            <option value="">首页</option>
            <option value="1">是</option>
            <option value="0">否</option>
          </select>
          <select name="isvouch" style="padding:5px 15px; border:1px solid #ddd;" onchange="changeisvouch(this)">
            <option value="">推荐</option>
            <option value="1">是</option>
            <option value="0">否</option>
          </select>
          <select name="istop" style="padding:5px 15px; border:1px solid #ddd;" onchange="changeistop(this)">
            <option value="">置顶</option>
            <option value="1">是</option>
            <option value="0">否</option>
          </select>
          &nbsp;&nbsp;&nbsp;
          
          移动到：
          <select name="movecid" style="padding:5px 15px; border:1px solid #ddd;" onchange="changecate(this)">
            <option value="">请选择分类</option>
            <option value="">产品分类</option>
            <option value="">产品分类</option>
            <option value="">产品分类</option>
            <option value="">产品分类</option>
          </select>
          <select name="copynum" style="padding:5px 15px; border:1px solid #ddd;" onchange="changecopy(this)">
            <option value="">请选择复制</option>
            <option value="5">复制5条</option>
            <option value="10">复制10条</option>
            <option value="15">复制15条</option>
            <option value="20">复制20条</option>
          </select></td>
      </tr>
      <tr>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
      </tr>
    </table>
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