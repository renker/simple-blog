<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新增用户</title>
</head>
<body>
	<div class="contentpanel">
		<div class="col-md-6">
          <form id="basicForm" action="" class="form-horizontal">
          <div class="panel panel-default">
              <div class="panel-body">
                <div class="form-group">
                  <label class="col-sm-2 control-label">账号 <span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" name="account" class="form-control" placeholder="请输入账号..." required />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-2 control-label">密码 <span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <input type="password" name="password" class="form-control" placeholder="请输入密码..." required />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-2 control-label">确认密码<span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <input type="password" name="repassword" class="form-control" placeholder="请确认密码..."/>
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-2 control-label">备注</label>
                  <div class="col-sm-9">
                    <textarea name="remark" rows="5" class="form-control" placeholder="请输入备注..."></textarea>
                  </div>
                </div>
              </div><!-- panel-body -->
              <div class="panel-footer">
                <div class="row">
                  <div class="col-sm-9 col-sm-offset-2">
                    <button id="submit" class="btn btn-primary ajax" type="button">保存</button>
                    <button type="reset" class="btn btn-default">重置</button>
                  </div>
                </div>
              </div>
            
          </div><!-- panel -->
          </form>
          
          
        </div><!-- col-md-6 -->
	</div>
	
	<script type="text/javascript">
	
		$(function(){
			$("#submit").click(function(){
				
				alert($("#basicForm").valid());
				/* $.post("${ctx}/manage/person/doCreate",$("#basicForm").serializeArray(),function(data){
					$.msg("保存成功");
				}); */
			});
		});
	</script>
</body>
</html>