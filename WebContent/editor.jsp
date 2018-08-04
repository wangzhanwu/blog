<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/default.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>写文章</title>
	<script type="text/javascript" charset="utf-8" src="${contextPath }/static/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${contextPath }/static/ueditor/ueditor.all.min.js"></script>
	<link href="${contextPath }/static/ueditor/themes/default/css/ueditor.min.css" rel="stylesheet"/>
	<script type="text/javascript" charset="utf-8" src="${contextPath }/static/ueditor/lang/zh-cn/zh-cn.js"></script>
	
	<link rel="stylesheet" href="${contextPath }/static/css/editor.css" />
	<link rel="stylesheet" type="text/css" href="${contextPath }/static/css/main.css" />
	<script type="text/javascript" src='${contextPath }/static/js/calendar.js'></script>
</head>
<body>
	<div id="home">
	    <div id="main_login">
			<c:choose>
				<c:when test="${empty sessionScope.username }">
					<span><a href="javascript:void(0)" onclick="main_login()">登录</a></span>
					<span>|</span> 
					<span><a href="javascript:void(0)" onclick="main_register()">注册</a></span>
				</c:when>
				<c:otherwise>
					<span><a href="javascript:void(0)">欢迎您，${sessionScope.username }</a></span>
					<span>|</span> 
					<span><a href="javascript:void(0)" onclick="logout()">退出</a></span>
				</c:otherwise>
			</c:choose>
		</div>
		<!-- header -->
		<%@include file="common/header.jsp" %>
		<div class="main" style="margin-top: -30px;">
			<div class="article-main-box">
				<form id="article-form" action="" method="post">
					<div id="editor-wrap-div">
						<input type="text" name="title" id="article_title"
							placeholder="标题" />
						<textarea id="editor" name="editor"></textarea>
					</div>
					<div class="form-group">
						<label class="control-label">摘要</label>
						<div class="control-right">
							<small> <font color="#999999">默认自动提取您文章的前150字显示在文章摘要的位置，您也可以在这里自行编辑，限150字。</font>
							</small>
						</div>
						<div style="clear: both"></div>
						<textarea id="summary" rows="3" cols="121"></textarea>

						<!-- <label class="control-label">标签</label>
						<div style="clear: both"></div>
						<input type="text" id="category" list="itemlist" name="category">
						<datalist id="itemlist">
						<option>随笔</option>
						<option>编程</option>
						</datalist> -->
					</div>
				</form>
			</div>
			<div id="button">
				<button onclick="save()">保存</button>
			</div>
			
			
		</div>
	</div>


	<script>
		UE.getEditor('editor');
	</script>
	<script type="text/javascript" src='${contextPath }/static/js/common.js'></script>
	<script type="text/javascript" src='${contextPath }/static/js/jquery.min.js'></script>
</body>
</html>