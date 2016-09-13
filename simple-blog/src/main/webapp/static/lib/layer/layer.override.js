(function(){
	$.extend({
		alert:function(msg){
			layer.alert(msg,{icon:0});
		}
	});
	
	$.extend({
		confirm:function(msg){
			layer.alert(msg);
		}
	});
	
	$.extend({
		msg:function(msg){
			layer.msg(msg);
		}
	});
	
})(jQuery, document);