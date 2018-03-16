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
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>小说风云榜</title>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/xs.css">
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
						<a class="navbar-brand" href="Index.action">小说风云榜</a>
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


	<div class="container">
		<div class="comple" style="height:40px"></div>
		<div class="main-body" style="background:#D6D6D6">


			<s:if test="#request.xlist!=null">
				<div class="rank-body">
					<s:iterator status="spin1" value="#request.xlist" id="s">
						<li id="list" id=<s:property value="#s.novel_id" />>
							<div class="book-img-box">
								<span class="rank-tag"><s:property
										value="#spin1.count+(pageNum-1)*8" /><cite></cite></span> <a
									href="javascript:;"><img
									src=<s:property value="#s.photo" /> alt="" title=""
									class="book-img" /></a>
							</div>
							<div class="book-mid-info">
								<a href="Javascript:;"><s:property value="#s.novelName" />&nbsp;&nbsp;|&nbsp;
									<s:property value="#s.author" /></a>
								<p class="author">
									首发：<a class="name" target="_blank"
										href="<s:property
											value="#s.link" />"><s:property
											value="#s.first" /></a>|<span>状态：<s:property
											value="#s.state" /></span>
								</p>
								<p class="intro">
									<s:property value="#s.intro" />
								</p>
								<p class="time">
									<span>开始：</span>
									<s:property value="#s.tstart" />
									|<span>结束：</span>
									<s:property value="#s.tend" />
								</p>
							</div>
							<div class="book-right-info">
								<div class="total">
									<p>
										<span>字数：</span>
										<s:property value="#s.wnum" />
									</p>

								</div>
								<div class="total recom">
									<p>
										<span>推荐：</span>
										<s:property value="#s.recom" />
									</p>

								</div>
								<s:a class="red-btn" href="One.action?no=%{#s.novelId}">小说详情</s:a>
							</div>
						</li>
					</s:iterator>
				</div>
				<div class="h-page">
					本榜共录入${request.page.totalRecord}本书籍，分${request.page.totalPage }页，当前为第${request.page.pageNum}页
					<br /> <a href="XS.action?pageNum=1">首页</a>
					<%--如果当前页为第一页时，就没有上一页这个超链接显示 --%>
					<c:if test="${request.page.pageNum ==1}">
						<c:forEach begin="${request.page.start}" end="${request.page.end}"
							step="1" var="i">
							<c:if test="${request.page.pageNum == i}">
								<a style="background-color: #e26228;border-color: #e26228;">
									${i}</a>
							</c:if>
							<c:if test="${request.page.pageNum != i}">
								<a href="XS.action?pageNum=${i}">${i}</a>
							</c:if>
						</c:forEach>
						<a href="XS.action?pageNum=${request.page.pageNum+1}">下一页</a>
					</c:if>
					<%--如果当前页不是第一页也不是最后一页，则有上一页和下一页这个超链接显示 --%>
					<c:if
						test="${request.page.pageNum > 1 && request.page.pageNum < request.page.totalPage}">
						<a href="XS.action?pageNum=${request.page.pageNum-1}">上一页</a>
						<c:forEach begin="${request.page.start}" end="${request.page.end}"
							step="1" var="i">
							<c:if test="${request.page.pageNum == i}">
								<a style="background-color: #e26228;border-color: #e26228;">${i}</a>
							</c:if>
							<c:if test="${request.page.pageNum != i}">
								<a href="XS.action?pageNum=${i}">${i}</a>
							</c:if>
						</c:forEach>
						<a href="XS.action?pageNum=${request.page.pageNum+1}">下一页</a>
					</c:if>

					<%-- 如果当前页是最后一页，则只有上一页这个超链接显示，下一页没有 --%>
					<c:if test="${request.page.pageNum == request.page.totalPage}">
						<a href="XS.action?pageNum=${request.page.pageNum-1}">上一页</a>
						<c:forEach begin="${request.page.start}" end="${request.page.end}"
							step="1" var="i">
							<c:if test="${request.page.pageNum == i}">
								<a style="background-color: #e26228;border-color: #e26228;">
									${i}</a>
							</c:if>
							<c:if test="${request.page.pageNum != i}">
								<a href="XS.action?pageNum=${i}">${i}</a>
							</c:if>
						</c:forEach>
					</c:if>
					<%--尾页 --%>
					<a href="XS.action?pageNum=${request.page.totalPage}">尾页</a>
				</div>
			</s:if>



			<s:if test="#request.ylist!=null">
				<div class="rank-body">
					<s:iterator status="spin1" value="#request.ylist" id="s">
						<li id="list" id=<s:property value="#s.novel_id" />>
							<div class="book-img-box">
								<span class="rank-tag"><s:property
										value="#spin1.count+(pageNum-1)*8" /><cite></cite></span> <a
									href="javascript:;"><img
									src=<s:property value="#s.photo" /> alt="" title=""
									class="book-img" /></a>
							</div>
							<div class="book-mid-info">
								<a href="Javascript:;"><s:property value="#s.novelName" />&nbsp;&nbsp;|&nbsp;
									<s:property value="#s.author" /></a>
								<p class="author">
									首发：<a class="name" target="_blank"
										href="<s:property
											value="#s.link" />"><s:property
											value="#s.first" /></a>|<span>状态：<s:property
											value="#s.state" /></span>
								</p>
								<p class="intro">
									<s:property value="#s.intro" />
								</p>
								<p class="time">
									<span>开始：</span>
									<s:property value="#s.tstart" />
									|<span>结束：</span>
									<s:property value="#s.tend" />
								</p>
							</div>
							<div class="book-right-info">
								<div class="total">
									<p>
										<span>字数：</span>
										<s:property value="#s.wnum" />
									</p>

								</div>
								<div class="total recom">
									<p>
										<span>推荐：</span>
										<s:property value="#s.recom" />
									</p>

								</div>
								<s:a class="red-btn" href="One.action?no=%{#s.novelId}">小说详情</s:a>
							</div>
						</li>
					</s:iterator>
				</div>
				<div class="h-page">
					本榜共录入${request.page.totalRecord}本书籍，分${request.page.totalPage }页，当前为第${request.page.pageNum}页
					<br /> <a href="TJ.action?pageNum=1">首页</a>
					<%--如果当前页为第一页时，就没有上一页这个超链接显示 --%>
					<c:if test="${request.page.pageNum ==1}">
						<c:forEach begin="${request.page.start}" end="${request.page.end}"
							step="1" var="i">
							<c:if test="${request.page.pageNum == i}">
								<a style="background-color: #e26228;border-color: #e26228;">
									${i}</a>
							</c:if>
							<c:if test="${request.page.pageNum != i}">
								<a href="TJ.action?pageNum=${i}">${i}</a>
							</c:if>
						</c:forEach>
						<a href="TJ.action?pageNum=${request.page.pageNum+1}">下一页</a>
					</c:if>
					<%--如果当前页不是第一页也不是最后一页，则有上一页和下一页这个超链接显示 --%>
					<c:if
						test="${request.page.pageNum > 1 && request.page.pageNum < request.page.totalPage}">
						<a href="TJ.action?pageNum=${request.page.pageNum-1}">上一页</a>
						<c:forEach begin="${request.page.start}" end="${request.page.end}"
							step="1" var="i">
							<c:if test="${request.page.pageNum == i}">
								<a style="background-color: #e26228;border-color: #e26228;">${i}</a>
							</c:if>
							<c:if test="${request.page.pageNum != i}">
								<a href="TJ.action?pageNum=${i}">${i}</a>
							</c:if>
						</c:forEach>
						<a href="TJ.action?pageNum=${request.page.pageNum+1}">下一页</a>
					</c:if>

					<%-- 如果当前页是最后一页，则只有上一页这个超链接显示，下一页没有 --%>
					<c:if test="${request.page.pageNum == request.page.totalPage}">
						<a href="TJ.action?pageNum=${request.page.pageNum-1}">上一页</a>
						<c:forEach begin="${request.page.start}" end="${request.page.end}"
							step="1" var="i">
							<c:if test="${request.page.pageNum == i}">
								<a style="background-color: #e26228;border-color: #e26228;">
									${i}</a>
							</c:if>
							<c:if test="${request.page.pageNum != i}">
								<a href="TJ.action?pageNum=${i}">${i}</a>
							</c:if>
						</c:forEach>
					</c:if>
					<%--尾页 --%>
					<a href="TJ.action?pageNum=${request.page.totalPage}">尾页</a>
				</div>
			</s:if>


			<s:if test="#request.zlist!=null">
				<div class="author-body">
					<s:iterator status="spin1" value="#request.zlist" id="s">
						<li id="list" id=<s:property value="#s.novel_id" />>
							<div class="book-img-box">
								<span class="rank-tag"><s:property
										value="#spin1.count+(pageNum-1)*8" /><cite></cite></span> <a
									href="javascript:;"><img
									src=<s:property value="#s.photo" /> alt="" title=""
									class="book-img" /></a>
							</div>
							<div class="author-mid-info">
								<p><a>作者笔名：<s:property
										value="#s.authorName" /></a></p>
								<p class="author">
									签约：<s:property value="#s.web" />
								</p>
								<p class="author-intro">
									<s:property value="#s.intro" />
								</p>
							</div>
							<div class="author-right-info">
								<div class="total">
									<p>
										<span>本站收录：</span>
										<s:property value="#s.finished" />
									</p>

								</div>
								<s:a class="red-btn" href="Per.action?no=%{#s.authorId}">作者详情</s:a>
							</div>
						</li>
					</s:iterator>
				</div>
				<div class="h-page">
					本站共录入${request.page.totalRecord}位作者，分${request.page.totalPage }页，当前为第${request.page.pageNum}页
					<br /> <a href="Au.action?pageNum=1">首页</a>
					<%--如果当前页为第一页时，就没有上一页这个超链接显示 --%>
					<c:if test="${request.page.pageNum ==1}">
						<c:forEach begin="${request.page.start}" end="${request.page.end}"
							step="1" var="i">
							<c:if test="${request.page.pageNum == i}">
								<a style="background-color: #e26228;border-color: #e26228;">
									${i}</a>
							</c:if>
							<c:if test="${request.page.pageNum != i}">
								<a href="Au.action?pageNum=${i}">${i}</a>
							</c:if>
						</c:forEach>
						<a href="Au.action?pageNum=${request.page.pageNum+1}">下一页</a>
					</c:if>
					<%--如果当前页不是第一页也不是最后一页，则有上一页和下一页这个超链接显示 --%>
					<c:if
						test="${request.page.pageNum > 1 && request.page.pageNum < request.page.totalPage}">
						<a href="Au.action?pageNum=${request.page.pageNum-1}">上一页</a>
						<c:forEach begin="${request.page.start}" end="${request.page.end}"
							step="1" var="i">
							<c:if test="${request.page.pageNum == i}">
								<a style="background-color: #e26228;border-color: #e26228;">${i}</a>
							</c:if>
							<c:if test="${request.page.pageNum != i}">
								<a href="Au.action?pageNum=${i}">${i}</a>
							</c:if>
						</c:forEach>
						<a href="Au.action?pageNum=${request.page.pageNum+1}">下一页</a>
					</c:if>

					<%-- 如果当前页是最后一页，则只有上一页这个超链接显示，下一页没有 --%>
					<c:if test="${request.page.pageNum == request.page.totalPage}">
						<a href="Au.action?pageNum=${request.page.pageNum-1}">上一页</a>
						<c:forEach begin="${request.page.start}" end="${request.page.end}"
							step="1" var="i">
							<c:if test="${request.page.pageNum == i}">
								<a style="background-color: #e26228;border-color: #e26228;">
									${i}</a>
							</c:if>
							<c:if test="${request.page.pageNum != i}">
								<a href="Au.action?pageNum=${i}">${i}</a>
							</c:if>
						</c:forEach>
					</c:if>
					<%--尾页 --%>
					<a href="Au.action?pageNum=${request.page.totalPage}">尾页</a>
				</div>
			</s:if>
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
						<li><a href="http://www.zongheng.com" target="_blank">纵横中文网</a></li>
						<li><a href="https://www.readnovel.com" target="_blank">小说阅读网</a></li>
						<li><a href="http://www.17k.com" target="_blank">17K小说网</a></li>
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


	</footer>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script
		src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>