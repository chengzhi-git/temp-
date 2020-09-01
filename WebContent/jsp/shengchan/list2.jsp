<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>已交库页面</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/home/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/axure/axQuery.js"></script>
    <script src="resources/scripts/axure/globals.js"></script>
    <script src="resources/scripts/axutils.js"></script>
    <script src="resources/scripts/axure/annotation.js"></script>
    <script src="resources/scripts/axure/axQuery.std.js"></script>
    <script src="resources/scripts/axure/doc.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/messagecenter.js"></script>
    <script src="resources/scripts/axure/events.js"></script>
    <script src="resources/scripts/axure/action.js"></script>
    <script src="resources/scripts/axure/expr.js"></script>
    <script src="resources/scripts/axure/geometry.js"></script>
    <script src="resources/scripts/axure/flyout.js"></script>
    <script src="resources/scripts/axure/ie.js"></script>
    <script src="resources/scripts/axure/model.js"></script>
    <script src="resources/scripts/axure/repeater.js"></script>
    <script src="resources/scripts/axure/sto.js"></script>
    <script src="resources/scripts/axure/utils.temp.js"></script>
    <script src="resources/scripts/axure/variables.js"></script>
    <script src="resources/scripts/axure/drag.js"></script>
    <script src="resources/scripts/axure/move.js"></script>
    <script src="resources/scripts/axure/visibility.js"></script>
    <script src="resources/scripts/axure/style.js"></script>
    <script src="resources/scripts/axure/adaptive.js"></script>
    <script src="resources/scripts/axure/tree.js"></script>
    <script src="resources/scripts/axure/init.temp.js"></script>
    <script src="files/home/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <body>

    <div id="base" class="">

      <!-- Unnamed (HTML按钮) -->
      <div id="u0" class="ax_html__">
        <input id="u0_input" type="submit" value="待审核清单"/>
      </div>

      <!-- Unnamed (HTML按钮) -->
      <div id="u1" class="ax_html__">
        <input id="u1_input" type="submit" value="待入库清单"/>
      </div>

      <!-- Unnamed (HTML按钮) -->
      <div id="u2" class="ax_html__">
        <input id="u2_input" type="submit" value="货位查询"/>
      </div>

      <!-- Unnamed (HTML按钮) -->
      <div id="u3" class="ax_html__">
        <input id="u3_input" type="submit" value="已入库清单"/>
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
		<th>生产人员</th>
		<th>商品名称</th>
		<th>计划数量</th>
		<th>提交次数</th>
		<th>退回次数</th>
		<th>操作</th>
		<!-- 这个由于是直接拿的前台界面的数据，所以不能在显示了，因为已经更新了，自己拿的数据却是旧的<th>审核状态</th> -->
	</tr>
	<!-- tostorelistTshu这个是从交库表那带过来的数据 -->
	<c:forEach items="${planScList}" var="planScList" varStatus="st">
	<tr>
		<td>${st.index+1}</td>
	
	
	<!-- 生产计划名称 -->
		<td>${planScList.PNAME}
		<input type="hidden" name="PID"  value="${planScList.PID}">
		</td>
	
		<!-- 生产人员名称 -->
		<td>${planScList.UNAME}
		<input type="hidden" name="UID"  value="${planScList.UID}">
		</td>
		
		<!-- 商品名称 -->
		<td>${planScList.GNAME}
		<input type="hidden" name="GID"  value="${planScList.GID}">
		</td>
		
		<!-- 计划数量 -->
		<td>${planScList.PCOUNT}
		<!-- 商品名称不用 
		<input type="hidden" name="GNAME" value="${tostorelistTshu.GNAME}">--></td>
		
		<!-- 入提交次数-->
		<td>${planScList.PSUBMIT}
		<%-- 生产人员不用
		<input type="hidden" name="UNAME" value="${tostorelistTshu.UNAME}"> --%></td>
		
		<!-- 驳回次数 -->
		<td>${planScList.PBACK}
		<%-- 计划数量不用
		<input type="hidden" name="PCOUNT" value="${tostorelistTshu.PCOUNT}"> --%></td>
		
		<td><a href="<%=request.getContextPath()%>/sc/insertToPlanList.do?PID=${planScList.PID}"><button>提交任务</button></a>||<a href="#"><button>删除</button></a></td>
		
		<!-- 审核状态 -->
		<%-- <td><c:if test="${tostorelistList.PSTATUS.equals('1')}">正在审核</c:if>
				<c:if test="${tostorelistList.PSTATUS.equals('0')}">未审核</c:if>
				<c:if test="${tostorelistList.PSTATUS.equals('2')}">审核通过</c:if>
				<input type="hidden" name="PSTATUS" value="${tostorelistList.PSTATUS}"></td> --%>
		
	<%-- 	
		<!-- 选择仓库 -->
		<td><select name="GPID">
					<c:forEach items="${cangKuList}" var="cangKuList">
					<option value="${cangKuList.GPID}">${cangKuList.SNAME}--${cangKuList.GPS}--${cangKuList.SPACE}</option>
					</c:forEach>
				</select>
		</td> --%>
		
		<%-- <td>${tostorelistList.TOSTORELISTSIZE}
		<input type="hidden" name="TOSTORELISTSIZE" value="${tostorelistList.TOSTORELISTSIZE}"></td>
		<td>${tostorelistList.TJCS}
		<input type="hidden" name="TJCS" value="${tostorelistList.TJCS}"></td>
		<td>${tostorelistList.THCS}
		<input type="hidden" name="THCS" value="${tostorelistList.THCS}"></td></td> --%>
		
		<!-- <td><input type="submit" value="进行交库" ></td> -->
		<!-- 提交的是审核未通过的话是对计划表的修改，把状态变为未审核，且次数要+1
		
		这里的提交方式记录一下 -->
	</tr>
	</c:forEach>
</table>
    </div>
  </body>
</html>
