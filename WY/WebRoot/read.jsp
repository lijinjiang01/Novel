<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title><s:property value="#request.novel.novelName" /><s:property value="chapter.chapterName" /></title>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/read.css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav class="navbar navbar-default" role="navigation">
				
					<div class="navbar-header">
						<a class="navbar-brand" href="javascript:;"><s:property
								value="chapter.chapterName" /></a>
					</div>
					<div class="collapse navbar-collapse nav"
						id="bs-example-navbar-collapse-1">
						<s:form action="Search" method="post" target="_blank" class="navbar-form navbar-left search">
							<div class="form-group">
								<input type="text" name="info" class="form-control" placeholder="请输入书名或作者名">
							</div>
							<button type="submit" class="btn btn-default">检索</button>
						</s:form>
						<ul>
							<li><a href="XS.action?pageNum=1"
								style="text-decoration: none;">字数榜</a></li>
							<li><a href="TJ.action?pageNum=1"
								style="text-decoration: none;">推荐榜</a></li>
							<li><a href="Au.action?pageNum=1"
								style="text-decoration: none;">大神榜</a></li>
						</ul>

						<a href="javascript:;" class="login_btn" id="login-btn">登录/注册</a>
					</div>
				</nav>
			</div>
		</div>
	</div>

	<div class="container container2">
		<div class="read-main-wrap font-family01"
			style="font-size: 18px; z-index: 101;" id="j_readMainWrap">
			<div id="j_chapterBox" style="background:#EDEDED">
				<div class="chapter-control dib-wrap menu_top">
					<a id="j_chapterPrev" href="Read.action?no=${chapter.chapterId-1}"
						style="text-decoration: none;">上一章</a><span>|</span> <a
						href="One.action?no=${chapter.novelId}"
						style="text-decoration: none;">目录</a><span>|</span> <a
						id="j_chapterNext" href="Read.action?no=${chapter.chapterId+1}"
						style="text-decoration: none;">下一章</a>
				</div>
				<div class="text-wrap" id="chapter-340041926">
					<div class="main-text-wrap">
						<div class="text-head">
							<h3 class="j_chapterName">
								<s:property value="chapter.chapterName" />
							</h3>
						</div>
						<div class="read-content j_readContent">${chapter.content}</div>
					</div>
				</div>
				<div class="chapter-control dib-wrap">
					<a id="j_chapterPrev" href="Read.action?no=${chapter.chapterId-1}"
						style="text-decoration: none;">上一章</a><span>|</span> <a
						href="One.action?no=${chapter.novelId}"
						style="text-decoration: none;">目录</a><span>|</span> <a
						id="j_chapterNext" href="Read.action?no=${chapter.chapterId+1}"
						style="text-decoration: none;">下一章</a>
				</div>
			</div>
		</div>

	</div>

	<footer class="container">
		<div class="wrapper footer">
			<ul>
				<li class="links">
					<ul>
						<li><a href="http://www.hongxiu.com" target="_blank">红袖添香</a></li>
						<li><a href="http://www.qidian.com" target="_blank">起点中文网</a></li>
						<li><a href="http://book.easou.com" target="_blank">宜搜小说网</a></li>
						<li><a href="http://www.jjwxc.net" target="_blank">晋江文学城</a></li>
					</ul>
				</li>

				<li class="links">
					<ul>
						<li><a href="http://www.xxsy.net" target="_blank">潇湘书院</a></li>
						<li><a href="http://www.17k.com" target="_blank">17K小说网</a></li>
						<li><a href="http://www.zongheng.com" target="_blank">纵横中文网</a></li>
						<li><a href="https://www.readnovel.com" target="_blank">小说阅读网</a></li>
					</ul>
				</li>

				<li class="links">
					<ul>
						<li><a href="http://book.qq.com" target="_blank">腾讯文学</a></li>
						<li><a href="http://chuangshi.qq.com" target="_blank">创世中文网</a></li>
						<li><a href="http://www.zhulang.com" target="_blank">逐浪小说网</a></li>
						<li><a href="https://www.xs8.cn" target="_blank">言情小说吧</a></li>
					</ul>
				</li>
			</ul>
		</div>

		<div class="copyrights wrapper">
			Copyright © 2017 <a href="index.html" target="_blank"
				style="text-decoration: none;">JinJiang</a>. All Rights Reserved.
		</div>

		<script
			src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
		<script
			src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</footer>
	<!--  end footer  -->
</body>
</html>
