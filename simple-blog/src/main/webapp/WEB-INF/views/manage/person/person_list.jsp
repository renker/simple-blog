<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
<script type="text/javascript">
	var ctx = '${ctx}';
</script>
<script type="text/javascript" src="${ctx}/static/manage/js/person/person_list.js"></script>
</head>
<body>
	<div class="contentpanel">
		<div class="panel panel-default">
        	<div class="panel-body">
          		<h5 class="subtitle mb5">用户信息列表</h5>
          		<a id="createBtn" class="btn btn-success">&nbsp;&nbsp;&nbsp;&nbsp;新增&nbsp;&nbsp;&nbsp;&nbsp;</a>
          		<a class="btn btn-success">&nbsp;&nbsp;&nbsp;&nbsp;锁定&nbsp;&nbsp;&nbsp;&nbsp;</a>
          		<div class="table-responsive">
            		<table class="table" id="table1">
						<thead>
							<tr>
								<th><input type="checkbox" />全选</th>
			                    <th>账号</th>
			                    <th>是否是root账号</th>
			                    <th>状态</th>
			                    <th>登陆失败限制</th>
			                    <th>登陆失败次数</th>
			                    <th>操作</th>
							</tr>
		              	</thead>
              			<tbody>
						</tbody>
					</table>
				</div><!-- table-responsive -->
			</div><!-- panel-body -->
		</div><!-- panel -->
	</div>
</body>
</html>