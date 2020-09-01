<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>Home</title>
  </head>
  <body>
  <script type="text/javascript">
  		function pass(a){
  			//通过审核之后生成入库表，在入库表中
  			var canshu = "aa"+a;
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
  
    <div id="base" class="">

      <!-- Unnamed (HTML按钮) -->
      <div id="u0" class="ax_html__">
        <!-- <input id="u0_input" type="submit" value="待审核清单"/> -->
      <a id="u0_input"  href="<%=request.getContextPath()%>/cangku/daiShenHe/queryTostorelist.do">待审核清单</a>
      </div>

      <!-- Unnamed (HTML按钮) -->
      <div id="u1" class="ax_html__">
        <!-- <input id="u1_input" type="submit" value="待入库清单"/> -->
         <a id="u1_input"  href="<%=request.getContextPath()%>/cangku/daiShenHe/queryTostorelist.do">待入库清单</a>
      </div>

      <!-- Unnamed (HTML按钮) -->
      <div id="u2" class="ax_html__">
<!--         <input id="u2_input" type="submit" value="货位查询"/> -->
        <a id="u2_input"  href="<%=request.getContextPath()%>/cangku/daiShenHe/queryTostorelist.do">货位查询</a>
      </div>

      <!-- Unnamed (HTML按钮) -->
      <div id="u3" class="ax_html__">
        <!-- <input id="u3_input" type="submit" value="已入库清单"/> -->
         <a id="u2_input"  href="<%=request.getContextPath()%>/cangku/daiShenHe/queryInStorelist.do">已入库清单</a>
      </div>

     <table border="1">
	<tr>
		<td colspan="10"  align="center">
			<font color="red" size="10">菜单列表</font>
		</td>
	</tr>
	<tr>
		<td colspan="10"  align="center">
			<font color="red" size="7"><a href="<%=request.getContextPath()%>/menus/toAddMenus.do">添加</a></font>
		</td>
	</tr>
	<tr>
		<td colspan="10" >关键字筛选：<form action="<%=request.getContextPath()%>/menus/findByPart.do"  method="post"><input type="text" name="MNAME"><input type="submit" value="查询"></form></td>
	</tr>
	<tr>
		<th>序号</th>
		<th>生产计划名称</th>
		<th>商品名称</th>
		<th>生产人员</th>
		<th>计划数量</th>
		<th>实际生产数量</th>
		<th>审核状态</th>
		<th>选择规格</th>
		<th colspan="2">处理</th>
	</tr>
	<c:forEach items="${tostorelistList}" var="tostorelistList" varStatus="sta">
	<tr>
	<form  id="aa${tostorelistList.TSLID}"  method="post">

		<!-- 显示是foreach的序号，实际是入库ID ，要用到可以射程隐藏制，因为以后序号这边不用这个id-->
		<td>${sta.index+1}
		<input type="hidden" name="TSLID" value="${tostorelistList.TSLID}">
		<!-- 隐藏计划ID -->
		<input type="hidden" name="PID" value="${tostorelistList.PID}"></td>
		</td>
		
		
		<!-- 生产计划名称 -->
		<td>${tostorelistList.PNAME}
		<input type="hidden" name="PNAME" value="${tostorelistList.PNAME}"></td>
		
		<!-- 商品名称 -->
		<td>${tostorelistList.GNAME}
		<input type="hidden" name="GNAME" value="${tostorelistList.GNAME}"></td>
		
		<!-- 生产人员 -->
		<td>${tostorelistList.UNAME}
		<input type="hidden" name="UNAME" value="${tostorelistList.UNAME}"></td>
		
		<!-- 计划数量 -->
		<td>${tostorelistList.PCOUNT}
		<input type="hidden" name="PCOUNT" value="${tostorelistList.PCOUNT}"></td>
		
		<!-- 实际数量 -->
		<td>${tostorelistList.TSLCOUNT}
		<input type="hidden" name="TSLCOUNT" value="${tostorelistList.TSLCOUNT}"></td>
		
		<!-- 审核状态 -->
		<td><c:if test="${tostorelistList.PSTATUS.equals('1')}">正在审核</c:if>
				<c:if test="${tostorelistList.PSTATUS.equals('0')}">未审核</c:if>
				<c:if test="${tostorelistList.PSTATUS.equals('2')}">审核通过</c:if>
				<input type="hidden" name="PSTATUS" value="${tostorelistList.PSTATUS}"></td>
		<!-- 选择规格 -->
		<td><select name="GG">
					<option value="0">--请选择--</option>
					<option value="40">40</option>
					<option value="60">60</option>
					<option value="80">80</option>
				</select>
		</td>
		<%-- <td>${tostorelistList.TOSTORELISTSIZE}
		<input type="hidden" name="TOSTORELISTSIZE" value="${tostorelistList.TOSTORELISTSIZE}"></td>
		<td>${tostorelistList.TJCS}
		<input type="hidden" name="TJCS" value="${tostorelistList.TJCS}"></td>
		<td>${tostorelistList.THCS}
		<input type="hidden" name="THCS" value="${tostorelistList.THCS}"></td></td> --%>
		
		<td><input type="button" value="审核通过"  onclick="pass(${tostorelistList.TSLID})"/></td><!-- 提交的是审核未通过的话是对计划表的修改，把状态变为未审核，且次数要+1 -->
		<td><input type="button" value="退回重做"  onclick="back(${tostorelistList.TSLID})"/></td>
		<!-- 这里的提交方式记录一下 -->
	
	</form>
	</tr>
	</c:forEach>
</table>
    </div>
  </body>
</html>
