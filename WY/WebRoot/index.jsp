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
<title>小说风云榜</title>
<link rel="shortcut icon" href="favicon.ico">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">



<!-- Bootstrap css -->
<link type="text/css" rel='stylesheet' href="css/bootstrap.min.css">

<!-- End Bootstrap css -->


<!-- Fancybox -->
<link type="text/css" rel='stylesheet'
	href="js/fancybox/jquery.fancybox.css">
<!-- End Fancybox -->
<link type="text/css" rel='stylesheet' href="fonts/fonts.css">
<link type='text/css' rel='stylesheet' href='css/Open+Sans.css'>
<link type='text/css' rel='stylesheet' href='css/Merriweather.css'>
<link type="text/css" data-themecolor="default" rel='stylesheet'
	href="css/main-default.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>
<body>
	<div class="mask-l"
		style="background-color: #fff; width: 100%; height: 100%; position: fixed; top: 0; left:0; z-index: 9999999;"></div>
	<!--removed by integration-->
	<header>
		<div class="container b-header__box b-relative">

			<div class="b-left">
				<h1 class="f-primary-l c-default">小说风云榜</h1>
			</div>

			<div class="b-header-r b-right b-header-r--icon">

				<div
					class="b-top-nav-show-slide f-top-nav-show-slide b-right j-top-nav-show-slide">
					<i class="fa fa-align-justify"></i>
				</div>
				<nav class="b-top-nav f-top-nav b-right j-top-nav">


					<ul class="b-top-nav__1level_wrap">
						<li class="btn login_btn"><a href="#" id="login-btn">登录/注册<span
								class="b-ico-dropdown"></span></a></li>
						<li class="btn login_btn"><a href="Au.action?pageNum=1"><i
								class="fa fa-user b-menu-1level-ico"></i>大神榜 <span
								class="b-ico-dropdown"></span></a></li>
						<li class="btn login_btn"><a href="TJ.action?pageNum=1"><i
								class="fa fa-thumbs-up b-menu-1level-ico"></i>推荐榜 <span
								class="b-ico-dropdown"></span></a></li>
						<li class="btn login_btn"><a href="XS.action?pageNum=1"><i
								class="fa fa-pencil b-menu-1level-ico"></i>字数榜 <span
								class="b-ico-dropdown"></span></a></li>
						<li class="btn login_btn is-active-top-nav__1level"><a
							href="#"><i class="fa fa-home b-menu-1level-ico"></i>主页 <span
								class="b-ico-dropdown"></span></a></li>
					</ul>

				</nav>
			</div>
		</div>
	</header>
	<div class="j-menu-container"></div>

	<div class="l-main-container">

		<div class="b-breadcrumbs f-breadcrumbs">
			<div class="container">
				<ul>
					<li><a href="#"><i class="fa fa-home"></i>首页</a></li>
				</ul>
			</div>
		</div>

		<div class="l-inner-page-container">
			<div class="container">
				<div class="row">
					<div class="col-md-9 col-md-push-3">
						<div class="b-blog-listing__block">
							<div class="b-blog-listing__block-top">
								<div class=" view view-sixth">
									<img data-retina="" src="img/home/JH.jpg" alt="">

								</div>
							</div>
							<div class="b-infoblock-with-icon b-blog-listing__infoblock">
								<a href="#"
									class="b-infoblock-with-icon__icon f-infoblock-with-icon__icon fade-in-animate hidden-xs">
									<i class="fa fa-pencil"></i>
								</a>
								<div
									class="b-infoblock-with-icon__info f-infoblock-with-icon__info">
									<a href="#"
										class="f-infoblock-with-icon__info_title b-infoblock-with-icon__info_title f-primary-l b-title-b-hr f-title-b-hr">
										庄子 </a>
									<div
										class="f-infoblock-with-icon__info_text b-infoblock-with-icon__info_text f-primary-b b-blog-listing__pretitle">
										作者：<a href="JavaScript:;" class="f-more">庄子</a>&nbsp;&nbsp;&nbsp;别名：
										<a href="javascript:;" class="f-more">《南华经》</a>&nbsp;&nbsp;&nbsp;<a>时间：</a>
										<a href="javascript:;" class="f-more">战国时期</a>
									</div>
									<div
										class="f-infoblock-with-icon__info_text b-infoblock-with-icon__info_text c-primary b-blog-listing__text">
										《庄子》又名《南华经》，是道家经文，是战国中期庄子及其后学所著，到了汉代以后，便尊之为《南华经》，且封庄子为南华真人。其书与《老子》《周易》合称“三玄”。《庄子》一书主要反映了庄子的批判哲学、艺术、美学、审美观等。其内容丰富，博大精深，涉及哲学、人生、政治、社会、艺术、宇宙生成论等诸多方面。<br>
										庄子的文章，想象奇幻，构思巧妙，多彩的思想世界和文学意境，文笔汪洋恣肆，具有浪漫主义的艺术风格，瑰丽诡谲，意出尘外，乃先秦诸子文章的典范之作。庄子之语看似夸言万里，想象漫无边际，然皆有根基，重于史料议理。鲁迅先生说：“其文则汪洋辟阖，仪态万方，晚周诸子之作，莫能先也。”被誉为“钳揵九流，括囊百氏”。<br>
										《庄子》与《归藏》、《黄帝四经》、《老子》，共为中华民族的几部源头性经典，它们不仅是哲学跟文化的重要载体，而且是古代圣哲关于文学、美学、艺术、审美的智慧结晶。庄子等道家思想是历史上除了儒学外被定为官学与道举的学说。<br>
										《庄子》不仅是一本哲学名作，更是文学、审美学上的寓言杰作典范。更是对中国文学、审美的发展有着不可分割的深远影响。庄子寓言的出版和研究使得中国文化的优秀传统得以继承和发展，中华民族的精神得以发扬，在现实意义上，更为社会主义文明的建设做出了不可忽视的精神铺垫。
									</div>
									<!-- <div
										class="f-infoblock-with-icon__info_text b-infoblock-with-icon__info_text">
										<a href="javascript:;" class="f-more f-primary-b">Read
											more</a>
									</div> -->
								</div>
							</div>
						</div>
						<div class="b-blog-listing__block">
							<div class="b-video-player b-blog-listing__block-top">
								<!-- <iframe src="mp4/凡人修仙传.mp4?title=0&amp;byline=0&amp;portrait=0&amp;badge=0" width="870" height="460" frameborder="0"></iframe> -->
								<video controls="" name="media">
									<source
										src="mp4/凡人修仙传.mp4?title=0&amp;byline=0&amp;portrait=0&amp;badge=0"
										type="video/mp4">
								</video>
							</div>
							<div class="b-infoblock-with-icon b-blog-listing__infoblock">
								<a href="#"
									class="b-infoblock-with-icon__icon f-infoblock-with-icon__icon fade-in-animate hidden-xs">
									<i class="fa fa-video-camera"></i>
								</a>
								<div
									class="b-infoblock-with-icon__info f-infoblock-with-icon__info">
									<a href="#"
										class="f-infoblock-with-icon__info_title b-infoblock-with-icon__info_title f-primary-l b-title-b-hr f-title-b-hr">
										凡人修仙传 </a>
									<div
										class="f-infoblock-with-icon__info_text b-infoblock-with-icon__info_text f-primary-b b-blog-listing__pretitle">
										作者：<a href="#" class="f-more">忘语</a>&nbsp;&nbsp;&nbsp;首发：<a
											href="#" class="f-more">起点中文网</a> 于 2008年02月20日 <a href="#"
											class="f-more b-blog-listing__additional-text f-primary"><i
											class="fa fa-comment"></i>12 推荐</a>
									</div>
									<div
										class="f-infoblock-with-icon__info_text b-infoblock-with-icon__info_text c-primary b-blog-listing__text">
										《凡人》一书写于2008年2月20日，共历时五年零七个月，于2013年9月23日完结，字数总达七百多万。09年12月底，起点年终总结，推出“凡人流”，承认《凡人》为“凡人流”开派作品。在网络文学上掀起不小的波澜，后来自然引起不少的跟风之作，却少有凡人的韵味。<br>
										2017年11月1日，经过近四年的沉淀，凡人终于在书迷的期盼下，开始了仙界篇的连载。有道是：他日仙界重相逢，一句道友尽沧桑……
									</div>
									<div
										class="f-infoblock-with-icon__info_text b-infoblock-with-icon__info_text">
									</div>
								</div>
							</div>
						</div>

						<!-- <div class="b-pagination f-pagination">
							<ul>
								<li><a href="#">First</a></li>
								<li><a class="prev" href="#"><i
										class="fa fa-angle-left"></i></a></li>
								<li class="is-active-pagination"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a class="next" href="#"><i
										class="fa fa-angle-right"></i></a></li>
								<li><a href="#">Last</a></li>
							</ul>
						</div> -->
					</div>
					<div class="visible-xs-block visible-sm-block b-hr"></div>
					<div class="col-md-3 col-md-pull-9">
						<s:form action="Search" method="get" target="_blank"
							cssClass="dark-matter" theme="simple">
							<div class="row">
								<div class="col-md-12">
									<div class="b-form-row b-input-search">
										<s:form action="Search" method="post" target="_blank" class="navbar-form navbar-left search">
							<div class="form-group">
								<input type="text" style="float: left;width:75%;margin-right:5%" name="info" class="form-control" placeholder="请输入书名或作者名">
							</div>
							<button type="submit" class="btn btn-default">检索</button>
						</s:form>
									</div>
								</div>
							</div>
						</s:form>
						<div class="row b-col-default-indent">
							<div class="col-md-12">
								<div class="b-categories-filter">
									<h4
										class="f-primary-b b-h4-special f-h4-special--gray f-h4-special">推荐榜
										前八位</h4>
									<ul>
										<s:if test="#request.elist!=null">
											<s:iterator status="spin2" value="#request.elist" id="e">
												<li><s:a class="f-categories-filter_name"
														href="One.action?no=%{#e.novelId}">
														<i class="fa fa-book"></i>
														<s:property value="#e.novelName" />
													</s:a> <span
													class="b-categories-filter_count f-categories-filter_count"><s:property
															value="#e.recom" /></span></li>
											</s:iterator>
										</s:if>
									</ul>
								</div>
							</div>
							<div class="col-md-12">
								<h4
									class="f-primary-b b-h4-special  f-h4-special--gray f-h4-special">大神榜
									前五位</h4>

								<div
									class="b-blog-short-post b-blog-short-post--img-hover-bordered b-blog-short-post--w-img f-blog-short-post--w-img row">
									<s:if test="#request.tlist!=null">
										<s:iterator status="spin2" value="#request.tlist" id="t">
											<div
												class="b-blog-short-post--popular col-md-12  col-xs-12 f-primary-b @@hidden">
												<div class="b-blog-short-post__item_img">
													<s:a href="Per.action?no=%{#t.authorId}">
														<img data-retina src=<s:property value="#t.photo" />
															class="auimg" />
													</s:a>
												</div>
												<div class="b-remaining">
													<div
														class="b-blog-short-post__item_text f-blog-short-post__item_text">
														<s:property value="#t.intro" />
													</div>
													<div
														class="b-blog-short-post__item_date f-blog-short-post__item_date f-primary-it">
														笔名：
														<s:property value="#t.authorName" />
													</div>
												</div>
											</div>
										</s:iterator>
									</s:if>
								</div>
							</div>
						</div>
						<div class="row b-col-default-indent">
							<div class="col-md-12">
								<h4
									class="f-primary-b b-h4-special f-h4-special--gray f-h4-special">搜索标签</h4>
								<div>
									<a class="f-tag b-tag" href="#">东方玄幻</a> <a class="f-tag b-tag"
										href="#">异世大陆</a> <a class="f-tag b-tag" href="#">历史神话</a> <a
										class="f-tag b-tag" href="#">另类幻想</a> <a class="f-tag b-tag"
										href="#">传统武侠</a> <a class="f-tag b-tag" href="#">修真文明</a> <a
										class="f-tag b-tag" href="#">幻想修仙</a> <a class="f-tag b-tag"
										href="#">现代修真</a> <a class="f-tag b-tag" href="#">神话修真</a> <a
										class="f-tag b-tag" href="#">古典仙侠</a> <a class="f-tag b-tag"
										href="#">虚拟网游</a> <a class="f-tag b-tag" href="#">游戏异界</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



	</div>

	<footer>
		<div class="b-footer-primary">
			<div class="container">
				<div class="row">
					<div class="col-sm-4 col-xs-12 f-copyright b-copyright">
						Copyright © 2014 - All Rights Reserved .More Templates <a
							href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
						- Collect from <a href="http://www.cssmoban.com/" title="网页模板"
							target="_blank">网页模板</a>
					</div>
					<div class="col-sm-8 col-xs-12">
						<div
							class="b-btn f-btn b-btn-default b-right b-footer__btn_up f-footer__btn_up j-footer__btn_up">
							<a href="#"><i class="fa fa-chevron-up"></i></a>
						</div>
						<nav class="b-bottom-nav f-bottom-nav b-right hidden-xs">
							<ul>
								<li><a href="#">Homepage</a></li>
								<li class="is-active-bottom-nav"><a href="#">Headers</a></li>
								<li><a href="#">Portfolio</a></li>
								<li><a href="#">Blog</a></li>
								<li><a href="#">Pages</a></li>
								<li><a href="#">Shortcode</a></li>
								<li><a href="#">Shop</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</footer>


	<script src="js/jquery/jquery-1.11.1.min.js"></script>
	<!-- bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- end bootstrap -->


	<!-- Modules -->
	<script src="js/modules/color-themes.js"></script>
	<!-- End Modules -->
	<!-- Google services -->
	<!-- <script type="text/javascript" src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization','version':'1','packages':['corechart']}]}"></script>
 -->
	<!-- end Google services -->
	<!-- Fancybox -->
	<script src="js/fancybox/jquery.fancybox.pack.js"></script>
	<script src="js/fancybox/jquery.mousewheel.pack.js"></script>
	<script src="js/fancybox/jquery.fancybox.custom.js"></script>
	<!-- End Fancybox -->
	<script src="js/cookie.js"></script>
</body>
</html>