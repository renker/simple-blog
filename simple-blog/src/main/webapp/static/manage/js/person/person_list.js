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
		order:[],
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
		"language":{url:ctx+"/static/lib/jquery.datatables/lang/zh_CN.json"}
	});
	
	//console.log(tablea.order()[0][0]+"--");
});