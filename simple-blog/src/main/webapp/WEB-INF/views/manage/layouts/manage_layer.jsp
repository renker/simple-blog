<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><sitemesh:write property='title' />-管理平台</title>
	<link rel="stylesheet" type="text/css" href="${ctx }/static/lib/manage/css/style.default.css">
	<link rel="stylesheet" type="text/css" href="${ctx }/static/lib/jquery.datatables/css/jquery.datatables.css">
	
	<script type="text/javascript" src="${ctx }/static/lib/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/jquery.validate.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/jquery.sparkline.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/jquery.cookies.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/jquery.datatables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/bootstrap-3.3.5/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/layer/layer.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/manage/js/modernizr.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/manage/js/toggles.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/manage/js/retina.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/manage/js/select2.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/manage/js/custom.js"></script>
	<sitemesh:write property='head' />
	
	<style type="text/css">
		.mainpanel{min-height: 400px!important;}
	</style>
</head>
<body>
	<div class="mainpanel">
		<sitemesh:write property='body' />
	</div>
	
</body>
</html>