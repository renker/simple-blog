var language = {
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
$(function(){
	$("#createBtn").click(function(){
		layer.open({
		      type: 2,
		      title: '新增用户',
		      shadeClose: true,
		      shade: false,
		      maxmin: true, //开启最大化最小化按钮
		      area: ['893px', '600px'],
		      content: ctx+'/manage/person/toCreate/layer'
		    });
	});
	
	var tablea = $('#table1').DataTable({
		dom:"tlip",
		order:[[1,"desc"]],
		"stripeClasses": [ 'strip1', 'strip2'],
		"serverSide":true,
		"ajax":function(data, callback, settings){
			var param = {currentPageIndex:data.start,pageSize:data.length};
			$.post(ctx+"/manage/person/list",param,function(page){
				var returnData = {};
				returnData.recordsTotal=page.allRecord;
				returnData.recordsFiltered=page.allRecord;
				returnData.data = page.results;
				callback(returnData);
			});
		},
		"columns":[
		    {data:"id",orderable:false,render:function(data, type, row){
		    	return '<input type="checkbox" class="editor-active">';
		    }},
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
			{data:"loginErrorAllowNum"},
			{data:"loginErrorNum"},
			{orderable:false,render:function(data, type, row){
				return '<i title="编辑" class="fa fa-pencil" style="cursor: pointer;margin: 0px 5px;"></i><i title="删除" class="fa fa-times" style="cursor: pointer;margin: 0px 5px;"></i>';
			}}
		],
		"language":language
	});
	
	//console.log(tablea.order()[0][0]+"--");
});