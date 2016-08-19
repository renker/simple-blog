<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新增用户</title>
</head>
<body>
	<div class="contentpanel">
		<div class="col-md-6">
          <form id="basicForm" action="form-validation.html" class="form-horizontal">
          <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">用户信息</h4>
              </div>
              <div class="panel-body">
                <div class="form-group">
                  <label class="col-sm-2 control-label">账号 <span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <input type="text" name="account" class="form-control" placeholder="Type your name..." required />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-2 control-label">密码 <span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <input type="password" name="password" class="form-control" placeholder="Type your email..." required />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-2 control-label">重复密码<span class="asterisk">*</span></label>
                  <div class="col-sm-9">
                    <input type="password" name="repassword" class="form-control" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-2 control-label">备注</label>
                  <div class="col-sm-9">
                    <textarea name="remark" rows="5" class="form-control" placeholder="Type your comment..." required></textarea>
                  </div>
                </div>
              </div><!-- panel-body -->
              <div class="panel-footer">
                <div class="row">
                  <div class="col-sm-9 col-sm-offset-2">
                    <button class="btn btn-primary">保存</button>
                    <button type="reset" class="btn btn-default">重置</button>
                  </div>
                </div>
              </div>
            
          </div><!-- panel -->
          </form>
          
          
        </div><!-- col-md-6 -->
	</div>
</body>
</html>