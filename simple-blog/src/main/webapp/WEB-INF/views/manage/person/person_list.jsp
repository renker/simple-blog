<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
</head>
<body>
	<div class="contentpanel">
		<div class="panel panel-default">
        	<div class="panel-body">
          		<h5 class="subtitle mb5">用户信息列表</h5>
          		<div class="row">
          			<div class="col-sm-5">
						<div class="form-group">
							<label class="control-label">账号</label>
							<input class="form-control" type="text" name="firstname">
						</div>
					</div>
					
					<div class="col-sm-5">
						<div class="form-group">
							<label class="control-label">状态</label>
							<select class="form-control">
								<option value=""> -- 请选择 -- </option>
								<option value="">已删除</option>
							</select>
						</div>
					</div>
          		</div>
          		<a class="btn btn-success">&nbsp;&nbsp;&nbsp;&nbsp;新增&nbsp;&nbsp;&nbsp;&nbsp;</a>
          		<a class="btn btn-success">&nbsp;&nbsp;&nbsp;&nbsp;锁定&nbsp;&nbsp;&nbsp;&nbsp;</a>
          		<hr />
          		<div class="table-responsive">
            		<table class="table" id="table1">
						<thead>
							<tr>
			                    <th>账号</th>
			                    <th>是否是root账号</th>
			                    <th>状态</th>
			                    <th>登陆失败限制</th>
			                    <th>登陆失败次数</th>
							</tr>
		              	</thead>
              			<!-- <tbody>
			                 <tr class="gradeA">
			                    <td>caishenchen@163.com</td>
			                    <td>是</td>
			                    <td>正常</td>
			                    <td class="center">5</td>
			                    <td class="center">0</td>
			                 </tr>
			                 <tr class="gradeA">
			                    <td>caishenchen@163.com</td>
			                    <td>是</td>
			                    <td>正常</td>
			                    <td class="center">5</td>
			                    <td class="center">0</td>
			                 </tr>
			                 
			                 <tr class="gradeA">
			                    <td>caishenchen@163.com</td>
			                    <td>是</td>
			                    <td>正常</td>
			                    <td class="center">5</td>
			                    <td class="center">0</td>
			                 </tr>
			                 
			                 <tr class="gradeA">
			                    <td>caishenchen@163.com</td>
			                    <td>是</td>
			                    <td>正常</td>
			                    <td class="center">5</td>
			                    <td class="center">0</td>
			                 </tr>
						</tbody> -->
					</table>
				</div><!-- table-responsive -->
			</div><!-- panel-body -->
		</div><!-- panel -->
	</div>
	
	<script type="text/javascript">
		$(function(){
			var personList = [{"account":"caishenchen@163.com",root:1,status:1,aa:5,bb:0}];
			$('#table1').dataTable({
				"data":personList,
				"columns":[
					{data:"account"},
					{data:"root",render:function(data, type, row){
						if(data.root == 1){
							return "是";
						}else{
							return "否";
						}
					}},
					{data:"status",render:function(data, type, row){
						return "正常";
					}},
					{data:"aa"},
					{data:"bb"}
				],
				"language":{
				    "processing": "处理中...",
				    "lengthMenu": "显示 _MENU_ 项结果",
				    "zeroRecords": "没有匹配结果",
				    "info": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
				    "infoEmpty": "显示第 0 至 0 项结果，共 0 项",
				    "infoFiltered": "(由 _MAX_ 项结果过滤)",
				    "infoPostFix": "",
				    "search": "搜索:",
				    "searchPlaceholder": "搜索...",
				    "url": "",
				    "emptyTable": "表中数据为空",
				    "loadingRecords": "载入中...",
				    "infoThousands": ",",
				    "paginate": {
				        "first": "首页",
				        "previous": "上页",
				        "next": "下页",
				        "last": "末页"
				    },
				    "aria": {
				        paginate: {
				            first: '首页',
				            previous: '上页',
				            next: '下页',
				            last: '末页'
				        },
				        "sortAscending": ": 以升序排列此列",
				        "sortDescending": ": 以降序排列此列"
				    },
				    "decimal": "-",
				    "thousands": ".",
				}
			});
		});
	</script>
</body>
</html>