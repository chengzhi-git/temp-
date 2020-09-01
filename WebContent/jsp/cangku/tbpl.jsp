<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>Page 1</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/page_1/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/page_1/data.js"></script>
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
			<font color="red" size="10">计划清单列表</font>
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
		<th>商品ID</th>
		<th>计划ID</th>
		<th>审核状态</th>
		<th>数量</th>
		<th>提交次数</th>
		<th>退回次数</th>
	</tr>
	<c:forEach items="${planListList}" var="planListList">
	<tr>
		<td>${planListList.PLANLISTID}</td>
		<td>${planListList.GOODSID}</td>
		<td>${planListList.PLANID}</td>
		<td>
				<c:if test="${planListList.PLANLISTSTATUS.equals('1')}">已审核</c:if>
				<c:if test="${planListList.PLANLISTSTATUS.equals('0')}">未审核</c:if>
		</td>
		<td>${planListList.PLANLISTSIZE}</td>
		<%-- <td>${tostorelistList.TJCS}</td>
		<td>${tostorelistList.THCS}</td> --%>
	</tr>
	</c:forEach>
</table>
    </div>
  </body>
</html>
