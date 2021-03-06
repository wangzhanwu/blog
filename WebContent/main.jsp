<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="common/default.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>首页</title>
	<meta name="description" content="main.jsp" />
	<meta name="keywords" content="blog" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="${contextPath }/static/css/main.css" />
	<script type="text/javascript" src='${contextPath }/static/js/calendar.js'></script>
	<script type="text/javascript" src='${contextPath }/static/js/jquery.min.js'></script>
	<script type="text/javascript" src='${contextPath }/static/js/common.js'></script>
</head>

<body onload="loadData()">
	<c:if test="${!empty sessionScope.articles}">
		<c:forEach items="${sessionScope.articles}" var = "article">
				<script>console.log(article)</script>
		</c:forEach>
	</c:if>
	
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
		<div id="main">
			<div id="mainContent">
				<div class="forFlow">
				
				
				
				
				
					<div class="postTitle">
							<a id="homepage1_HomePageDays_DaysList_ctl01_DayList_TitleUrl_0"
								class="postTitle2"
								href="http://www.cnblogs.com/zhengyanbin2016/p/7381513.html">表达式</a>
						</div>
						<div class="postCon">
							<div class="c_b_p_desc">
								摘要: Lakeshore
								表达式什么是表达式？表达式，是由数字、算符、数字分组符号（括号）、自由变量和约束变量等以能求得数值的有意义排列方法所得的组合。约束变量在表达式中已被指定数值，而自由变量则可以在表达式之外另行指定数值。表达式的运用可以最大限度的增强逻辑的运算，常用的表达式分为算术表达式与逻辑表达式。算术表达式算术表达式是最常用的表达式，又称为数值表达式。它是通过算术运算符来进行运算的数学公式，常...<a
									href="http://www.cnblogs.com/zhengyanbin2016/p/7381513.html"
									class="c_b_p_desc_readmore">阅读全文</a>
							</div>
						</div>
						<div class="clear"></div>
						<div class="postDesc">
							posted @ 2017-08-17 14:37 郑彦彬 阅读(5) 评论(0) <a
								href="https://i.cnblogs.com/EditPosts.aspx?postid=7381513"
								rel="nofollow">编辑</a>
						</div>
						<div class="clear"></div>

						<div class="postSeparator"></div>

						<div class="postTitle">
							<a id="homepage1_HomePageDays_DaysList_ctl01_DayList_TitleUrl_1"
								class="postTitle2"
								href="http://www.cnblogs.com/zhengyanbin2016/p/7381502.html">通用条件</a>
						</div>
						<div class="postCon">
							<div class="c_b_p_desc">
								摘要:
								精灵，按钮，文本框等大多数实例都具有的条件，我们定义为通用条件。这些条件是最基本，最常用的条件。快速链接：通用条件其它当实例创建时网络当图片加载完毕实例自定义变量比较自定义变量大小与位置比较水平坐标，比较垂直坐标，比较宽度，比较高度，比较透明度，显隐状态，是否在屏幕内碰撞碰撞角度顺时针旋转，处于两角度之间当实例创建时：当所选实例创建时触发。【一次性触发】当游戏中包含所选实例的场景加载时，实例才会被...<a
									href="http://www.cnblogs.com/zhengyanbin2016/p/7381502.html"
									class="c_b_p_desc_readmore">阅读全文</a>
							</div>
						</div>
						<div class="clear"></div>
						<div class="postDesc">
							posted @ 2017-08-17 14:36 郑彦彬 阅读(4) 评论(0) <a
								href="https://i.cnblogs.com/EditPosts.aspx?postid=7381502"
								rel="nofollow">编辑</a>
						</div>
						<div class="clear"></div>

						<div class="postSeparator"></div>

						<div class="postTitle">
							<a id="homepage1_HomePageDays_DaysList_ctl01_DayList_TitleUrl_2"
								class="postTitle2"
								href="http://www.cnblogs.com/zhengyanbin2016/p/7381507.html">通用动作</a>
						</div>
						<div class="postCon">
							<div class="c_b_p_desc">
								摘要:
								精灵，按钮，文本框等大多数实例都具有的动作，我们定义为通用动作。这些动作是最基本，最常用的动作。快速链接：通用动作角度顺时针旋转，逆时针旋转，旋转到指定角度，旋转指向指定坐标，设置角度，根据指定坐标设置角度其他制造，销毁，启用大小与位置朝指定角度移动，朝自身方向移动，坐标，相对其它实例坐标，缩放，水平缩放，垂直缩放，大小，水平坐标，垂直坐标外观镜像，显隐，透明度实例自定义变量运算加法，减法，设置值...<a
									href="http://www.cnblogs.com/zhengyanbin2016/p/7381507.html"
									class="c_b_p_desc_readmore">阅读全文</a>
							</div>
						</div>
						<div class="clear"></div>
						<div class="postDesc">
							posted @ 2017-08-17 14:36 郑彦彬 阅读(9) 评论(0) <a
								href="https://i.cnblogs.com/EditPosts.aspx?postid=7381507"
								rel="nofollow">编辑</a>
						</div>
						<div class="clear"></div>

						<div class="postSeparator"></div>

						<div class="postTitle">
							<a id="homepage1_HomePageDays_DaysList_ctl01_DayList_TitleUrl_3"
								class="postTitle2"
								href="http://www.cnblogs.com/zhengyanbin2016/p/7381493.html">通用属性</a>
						</div>
						<div class="postCon">
							<div class="c_b_p_desc">
								摘要:
								场景中选中实例后，右侧面板会显示基本属性。*注：添加声音，触屏，数组，微信，函数组件后产生的实例只支持基本属性中的“名称”和“全局”，不支持其他属性。名称：
								实例的名称。GUID: 实例的内部ID。基本属性中唯一不可修改的属性。全局：
								设置实例是否是全局存在的。默认为“否”。如果设置为“否”表示实例会随着所在场景的退出而销毁。如果设置为“是”，则实例不会随着所在场景的退出而销毁，场景切换后，实例依...<a
									href="http://www.cnblogs.com/zhengyanbin2016/p/7381493.html"
									class="c_b_p_desc_readmore">阅读全文</a>
							</div>
						</div>
						<div class="clear"></div>
						<div class="postDesc">
							posted @ 2017-08-17 14:35 郑彦彬 阅读(8) 评论(0) <a
								href="https://i.cnblogs.com/EditPosts.aspx?postid=7381493"
								rel="nofollow">编辑</a>
						</div>
						<div class="clear"></div>

						<div class="postSeparator"></div>

						<div class="postTitle">
							<a id="homepage1_HomePageDays_DaysList_ctl01_DayList_TitleUrl_4"
								class="postTitle2"
								href="http://www.cnblogs.com/zhengyanbin2016/p/7381479.html">Lakeshore用户手册</a>
						</div>
						<div class="postCon">
							<div class="c_b_p_desc">
								摘要:
								1.场景场景是游戏的基本组成部分，开始界面，结束界面，每个关卡都是一个场景。游戏中基于游戏的情节，可以在各个场景间跳转。2.精灵精灵可以理解为图片的容器。如果需要在游戏场景中插入一个静态图片，那么就需要把图片放置在一个精灵内来呈现。游戏制作中，通过对精灵的操作实现图片的移动，变形，旋转等动作。3.实例游戏中可以操控的基本单位。实例可以是一个文本框，可以是一个动画人物，可以是背景图，也可以是包含图片...<a
									href="http://www.cnblogs.com/zhengyanbin2016/p/7381479.html"
									class="c_b_p_desc_readmore">阅读全文</a>
							</div>
						</div>
						<div class="clear"></div>
						<div class="postDesc">
							posted @ 2017-08-17 14:33 郑彦彬 阅读(20) 评论(0) <a
								href="https://i.cnblogs.com/EditPosts.aspx?postid=7381479"
								rel="nofollow">编辑</a>
						</div>
						<div class="clear"></div>
					
				</div>
			</div>
			<!-- 侧边栏 -->
			<%@include file="common/sideBar.jsp" %>
		</div>
	</div>
	
	<script>
		//只需实例化calendar实例即可，传入的参数为html对象的id，举个例子如下
		new calendar('calendar');
	</script>
</body>
</html>