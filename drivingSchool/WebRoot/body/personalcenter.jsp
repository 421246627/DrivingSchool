<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
	<base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="alternate icon" type="image/png" href="assets/images/logo.png"><!--在title添加logo  -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimal-ui">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="imagetoolbar" content="no">
		<meta name="msthemecompatible" content="no">
		<meta name="cleartype" content="on">
		<meta name="HandheldFriendly" content="True">
		<meta name="format-detection" content="telephone=no">
		<meta name="format-detection" content="address=no">
		<meta name="theme-color" content="#ffffff">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
		<link sizes="57x57" href="apple-touch-icon-57x57.png" rel="apple-touch-icon">
		<link sizes="114x114" href="apple-touch-icon-114x114.png" rel="apple-touch-icon">
		<link sizes="72x72" href="apple-touch-icon-72x72.png" rel="apple-touch-icon">
		<link sizes="144x144" href="apple-touch-icon-144x144.png" rel="apple-touch-icon">
		<link sizes="60x60" href="apple-touch-icon-60x60.png" rel="apple-touch-icon">
		<link sizes="120x120" href="apple-touch-icon-120x120.png" rel="apple-touch-icon">
		<link sizes="76x76" href="apple-touch-icon-76x76.png" rel="apple-touch-icon">
		<link sizes="152x152" href="apple-touch-icon-152x152.png" rel="apple-touch-icon">
		<link sizes="180x180" href="apple-touch-icon-180x180.png" rel="apple-touch-icon">
		<link sizes="192x192" href="favicon-192x192.png" rel="icon" type="image/png">
		<link sizes="160x160" href="favicon-160x160.png" rel="icon" type="image/png">
		<link sizes="96x96" href="favicon-96x96.png" rel="icon" type="image/png">
		<link sizes="16x16" href="favicon-16x16.png" rel="icon" type="image/png">
		<link sizes="32x32" href="favicon-32x32.png" rel="icon" type="image/png">
		<link rel="manifest" href="manifest.json">
		<title>个人中心</title>
		<meta name="description" content="">
		<meta name="keywords" content="">
		<link href="assets/styles/app.min.css" rel="stylesheet">
	</head>

	<body class="page">
		<div class="header">
			<div class="header__row container">
				<div class="row">
					<div class="col-md-5">
						<div class="logo">
							<a href="index.html" class="logo__link">
								<svg class="logo__icon"><use xlink:href="assets/images/icon.svg#icon_logo"></use></svg>
								<span class="logo__text">driving school</span>
							</a>
						</div>
					</div>
					<div class="header__contact col-md-3">
						<div class="header__address">
							<svg class="header__pin"><use xlink:href="assets/images/icon.svg#icon_pin"></use></svg>河南省-郑州市-二七区</div>
					</div>
					<div class="header__contact col-md-2">
						<a href="tel:+908887775544" class="header__phone">
							<svg class="header__phone-icon"><use xlink:href="assets/images/icon.svg#icon_phone"></use></svg>+ 150 9307 7197</a>
					</div>
					<div class="header__contact col-md-2">
						<a class="btn header__callback" href="">
							<span class="btn__text">联 系 我 们</span>
						</a>
					</div>
				</div>
			</div>
			<div class="nav">
				<div class="nav__btn-wrap">
					<button class="btn nav__btn" type="button">
						<span class="btn__text">
							<span class="nav__icon"></span>
						</span>
					</button>
				</div>
				<div class="nav__body container">
					<div class="nav__inner">
						<div class="nav__close"></div>
						<ul class="nav__list">
							<li class="nav__item">
								<a href="drivingLicenseCostAction/find_drivingLicenseCostThree" class="nav__link nav__link_has-sub nav__link_active">主 页</a>
								<ul class="nav__sub">
									<li class="nav__item">
										<a href="drivingLicenseCostAction/find_drivingLicenseCostThree" class="nav__link">主 页</a>
									</li>
									<li class="nav__item">
										<a href="index-moto.html" class="nav__link">Motorcycle Training</a>
									</li>
									<li class="nav__item">
										<a href="index-ext.html" class="nav__link">Extremal Driving</a>
									</li>
									<li class="nav__item">
										<a href="index-dop.html" class="nav__link">Safety Driving</a>
									</li>
									<li class="nav__item">
										<a href="landing-inst.html" class="nav__link">Personal Teacher</a>
									</li>
									<li class="nav__item">
										<a href="landing.html" class="nav__link">Selection of teachers</a>
									</li>
								</ul>
							</li>
							<li class="nav__item">
								<a href="about.jsp" class="nav__link">关 于 我 们</a>
							</li>
							<li class="nav__item">
								<a href="personalcenterAction/load_personalcenter" class="nav__link">个 人 中 心</a>
							</li>
							<li class="nav__item">
								<a href="drivingLicenseCostAction/find_drivingLicenseCost" class="nav__link">价 格</a>
							</li>
							<li class="nav__item">
								<a href="faq.html" class="nav__link">faq</a>
							</li>
							<li class="nav__item">
								<a href="course.html" class="nav__link">courses</a>
							</li>
							<li class="nav__item">
								<a href="review.html" class="nav__link">reviews</a>
							</li>
							<li class="nav__item">
								<a href="photo.html" class="nav__link">photo</a>
							</li>
							<li class="nav__item">
								<a href="blog.html" class="nav__link nav__link_has-sub">blog</a>
								<ul class="nav__sub">
									<li class="nav__item">
										<a href="blog.html" class="nav__link">Page Blog</a>
									</li>
									<li class="nav__item">
										<a href="article.html" class="nav__link">Single Blog</a>
									</li>
								</ul>
							</li>
							<li class="nav__item">
								<a href="address.html" class="nav__link">contacts</a>
							</li>
							<li class="nav__item">
								<a href="coachAction/load_coach" class="nav__link nav__link_has-sub">预 约 教 练</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="head-page">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h1 class="title-page">个 人 中 心</h1>
						<div class="breadcrumbs">
							<ul class="breadcrumbs__list">
								<li class="breadcrumbs__item">
									<a href="" class="breadcrumbs__link">主 页</a>
								</li>
								<li class="breadcrumbs__item">个 人 中 心</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content">
			<div class="address">
				<div class="address__city">
					<div class="container">
						<div class="filter filter_theme_white address__filter">
							<a href="personalcenterAction/load_personalcenter" class="filter__item filter__item_active">
								<span class="filter__item-text">信 息 修 改</span>
							</a>
							<a class="filter__item" href="drivingLicenseMessageAction/load_drivingLicenseMessageAction" target="iframebody">
								<span class="filter__item-text">驾 考 信 息</span>
								<input type="hidden" id="update_studentApplyResult" value="${requestScope.update_studentApplyResult }">
								<input type="hidden" id="alipayerror" value="${requestScope.alipayerror}">
							</a>
							<c:choose>
								<c:when test="${empty requestScope.studentApply }"></c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${requestScope.studentApply.stateId eq '554a242a-b6a1-491f-bf95-2f3b9bd4cef2'}"></c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${requestScope.studentApply.stateId eq '3fb3680e-9d67-4d80-87f2-7d4a6c4d977b' }">
													<a class="filter__item" href="physicalExaminationAction/load_physicalExamination" target="iframebody">
														<span class="filter__item-text">预 约 体 检</span>
													</a>
												</c:when>
												<c:otherwise>
													<a class="filter__item">
														<span class="filter__item-text">订 单 信 息</span>
													</a>
													<a class="filter__item">
														<span class="filter__item-text">预 约 考 试</span>
													</a>
													<a class="filter__item" href="coachAction/load_coach">
														<span class="filter__item-text">预 约 练 车</span>
													</a>
												</c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
							<a href="usersAction/quit_users" class="filter__item">
								<span class="filter__item-text">退 出 登 录</span>
							</a>
						</div>
					</div>
				</div>
				<div id="addressMap" class="address__map" style="height:150px;"></div>
				<div class="add-form">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<iframe id="iframebody" src="body/users.jsp" name="iframebody" style="width:100%;border:0px;"></iframe>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="sertificate">
				<div class="container">
					<h2 class="title title_theme_white">
						<span class="title__mark">SERTIFICATE</span>
					</h2>
					<ul class="sertificate__list row">
						<li class="sertificate__item col-xs-6 col-md-2">
							<div class="sertificate__thumb">
								<svg class="zoom"><use xlink:href="assets/images/icon.svg#icon_search"></use></svg>
								<img src="assets/cert/cert1.jpg" alt="" />
							</div>
						</li>
						<li class="sertificate__item col-xs-6 col-md-2">
							<div class="sertificate__thumb">
								<svg class="zoom"><use xlink:href="assets/images/icon.svg#icon_search"></use></svg>
								<img src="assets/cert/cert2.jpg" alt="" />
							</div>
						</li>
						<li class="sertificate__item col-xs-6 col-md-2">
							<div class="sertificate__thumb">
								<svg class="zoom"><use xlink:href="assets/images/icon.svg#icon_search"></use></svg>
								<img src="assets/cert/cert1.jpg" alt="" />
							</div>
						</li>
						<li class="sertificate__item col-xs-6 col-md-2">
							<div class="sertificate__thumb">
								<svg class="zoom"><use xlink:href="assets/images/icon.svg#icon_search"></use></svg>
								<img src="assets/cert/cert2.jpg" alt="" />
							</div>
						</li>
						<li class="sertificate__item col-xs-6 col-md-2">
							<div class="sertificate__thumb">
								<svg class="zoom"><use xlink:href="assets/images/icon.svg#icon_search"></use></svg>
								<img src="assets/cert/cert1.jpg" alt="" />
							</div>
						</li>
						<li class="sertificate__item col-xs-6 col-md-2">
							<div class="sertificate__thumb">
								<svg class="zoom"><use xlink:href="assets/images/icon.svg#icon_search"></use></svg>
								<img src="assets/cert/cert2.jpg" alt="" />
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="nav">
				<div class="nav__btn-wrap">
					<button class="btn nav__btn" type="button">
						<span class="btn__text">
							<span class="nav__icon"></span>
						</span>
					</button>
				</div>
				<div class="nav__body container">
					<div class="nav__inner">
						<div class="nav__close"></div>
						<ul class="nav__list">
							<li class="nav__item">
								<a href="index.html" class="nav__link nav__link_has-sub">Home</a>
								<ul class="nav__sub">
									<li class="nav__item">
										<a href="index.html" class="nav__link">Home</a>
									</li>
									<li class="nav__item">
										<a href="index-moto.html" class="nav__link">Motorcycle Training</a>
									</li>
									<li class="nav__item">
										<a href="index-ext.html" class="nav__link">Extremal Driving</a>
									</li>
									<li class="nav__item">
										<a href="index-dop.html" class="nav__link">Safety Driving</a>
									</li>
									<li class="nav__item">
										<a href="landing-inst.html" class="nav__link">Personal Teacher</a>
									</li>
									<li class="nav__item">
										<a href="landing.html" class="nav__link">Selection of teachers</a>
									</li>
								</ul>
							</li>
							<li class="nav__item">
								<a href="about.html" class="nav__link">about</a>
							</li>
							<li class="nav__item">
								<a href="feature.html" class="nav__link">features</a>
							</li>
							<li class="nav__item">
								<a href="price.html" class="nav__link">price</a>
							</li>
							<li class="nav__item">
								<a href="faq.html" class="nav__link">faq</a>
							</li>
							<li class="nav__item">
								<a href="course.html" class="nav__link">courses</a>
							</li>
							<li class="nav__item">
								<a href="review.html" class="nav__link">reviews</a>
							</li>
							<li class="nav__item">
								<a href="photo.html" class="nav__link">photo</a>
							</li>
							<li class="nav__item">
								<a href="blog.html" class="nav__link nav__link_has-sub">blog</a>
								<ul class="nav__sub">
									<li class="nav__item">
										<a href="blog.html" class="nav__link">Page Blog</a>
									</li>
									<li class="nav__item">
										<a href="article.html" class="nav__link">Single Blog</a>
									</li>
								</ul>
							</li>
							<li class="nav__item">
								<a href="address.html" class="nav__link nav__link_active">contacts</a>
							</li>
							<li class="nav__item">
								<a href="teachers.html" class="nav__link nav__link_has-sub">teachers</a>
								<ul class="nav__sub">
									<li class="nav__item">
										<a href="teachers.html" class="nav__link">teachers</a>
									</li>
									<li class="nav__item">
										<a href="teacher.html" class="nav__link">Teacher Profile</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="footer__body container">
				<div class="row">
					<div class="footer__section col-md-3">
						<div class="footer__about">
							<h4 class="footer__title">about</h4>
							<p class="footer__text">have been serving NYC with its 8 branches and completed 5k+ students in last 10 years. We have a team of experienced
								and certified trainers who will help you from the start to end of a driving lesson.</p>
							<div class="logo footer__logo">
								<a href="index.html" class="logo__link">
									<svg class="logo__icon"><use xlink:href="assets/images/icon.svg#icon_logo"></use></svg>
									<span class="logo__text">driving school</span>
								</a>
							</div>
						</div>
					</div>
					<div class="footer__section col-md-3">
						<div class="footer__blog">
							<h4 class="footer__title">blog</h4>
							<article class="footer__post">
								<a href="" class="footer__post-wrap">
									<h5 class="footer__post-title">Mountains car travel</h5>
									<p class="footer__text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor...</p>
								</a>
							</article>
							<article class="footer__post">
								<a href="" class="footer__post-wrap">
									<h5 class="footer__post-title">Mountains car travel</h5>
									<p class="footer__text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor...</p>
								</a>
							</article>
							<a href="" class="footer__more">
								See all posts
								<svg class="footer__more-icon"><use xlink:href="assets/images/icon.svg#icon_right"></use></svg>
							</a>
						</div>
					</div>
					<div class="footer__section col-md-3">
						<div class="footer__instagramm">
							<h4 class="footer__title">Instagram</h4>
							<ul class="footer__instagramm-list">
								<li class="footer__instagramm-item">
									<a href="assets/images/inst/i1.jpg" class="footer__instagramm-link">
										<svg class="zoom"><use xlink:href="assets/images/icon.svg#icon_search"></use></svg>
										<img src="assets/images/inst/i1.jpg" alt="" />
									</a>
								</li>
								<li class="footer__instagramm-item">
									<a href="assets/images/inst/i2.jpg" class="footer__instagramm-link">
										<svg class="zoom"><use xlink:href="assets/images/icon.svg#icon_search"></use></svg>
										<img src="assets/images/inst/i2.jpg" alt="" />
									</a>
								</li>
								<li class="footer__instagramm-item">
									<a href="assets/images/inst/i3.jpg" class="footer__instagramm-link">
										<svg class="zoom"><use xlink:href="assets/images/icon.svg#icon_search"></use></svg>
										<img src="assets/images/inst/i3.jpg" alt="" />
									</a>
								</li>
								<li class="footer__instagramm-item">
									<a href="assets/images/inst/i4.jpg" class="footer__instagramm-link">
										<svg class="zoom"><use xlink:href="assets/images/icon.svg#icon_search"></use></svg>
										<img src="assets/images/inst/i4.jpg" alt="" />
									</a>
								</li>
								<li class="footer__instagramm-item">
									<a href="assets/images/inst/i5.jpg" class="footer__instagramm-link">
										<svg class="zoom"><use xlink:href="assets/images/icon.svg#icon_search"></use></svg>
										<img src="assets/images/inst/i5.jpg" alt="" />
									</a>
								</li>
								<li class="footer__instagramm-item">
									<a href="assets/images/inst/i6.jpg" class="footer__instagramm-link">
										<svg class="zoom"><use xlink:href="assets/images/icon.svg#icon_search"></use></svg>
										<img src="assets/images/inst/i6.jpg" alt="" />
									</a>
								</li>
								<li class="footer__instagramm-item">
									<a href="assets/images/inst/i7.jpg" class="footer__instagramm-link">
										<svg class="zoom"><use xlink:href="assets/images/icon.svg#icon_search"></use></svg>
										<img src="assets/images/inst/i7.jpg" alt="" />
									</a>
								</li>
								<li class="footer__instagramm-item">
									<a href="assets/images/inst/i8.jpg" class="footer__instagramm-link">
										<svg class="zoom"><use xlink:href="assets/images/icon.svg#icon_search"></use></svg>
										<img src="assets/images/inst/i8.jpg" alt="" />
									</a>
								</li>
								<li class="footer__instagramm-item">
									<a href="assets/images/inst/i9.jpg" class="footer__instagramm-link">
										<svg class="zoom"><use xlink:href="assets/images/icon.svg#icon_search"></use></svg>
										<img src="assets/images/inst/i9.jpg" alt="" />
									</a>
								</li>
							</ul>
							<a href="" class="footer__more">
								See all posts
								<svg class="footer__more-icon"><use xlink:href="assets/images/icon.svg#icon_right"></use></svg>
							</a>
						</div>
					</div>
					<div class="footer__section col-md-3">
						<div class="footer__hours">
							<h4 class="footer__title">Opening Hours</h4>
							<div class="footer__hours-item">
								<div class="footer__hours-day">Monday</div>
								<div class="footer__hours-separ"></div>
								<div class="footer__hours-time">08:00 - 18:00</div>
							</div>
							<div class="footer__hours-item">
								<div class="footer__hours-day">Tuesday</div>
								<div class="footer__hours-separ"></div>
								<div class="footer__hours-time">08:00 - 18:00</div>
							</div>
							<div class="footer__hours-item">
								<div class="footer__hours-day">Wednesday</div>
								<div class="footer__hours-separ"></div>
								<div class="footer__hours-time">08:00 - 18:00</div>
							</div>
							<div class="footer__hours-item">
								<div class="footer__hours-day">Thursday</div>
								<div class="footer__hours-separ"></div>
								<div class="footer__hours-time">08:00 - 18:00</div>
							</div>
							<div class="footer__hours-item">
								<div class="footer__hours-day">Friday</div>
								<div class="footer__hours-separ"></div>
								<div class="footer__hours-time">08:00 - 18:00</div>
							</div>
							<div class="footer__hours-item">
								<div class="footer__hours-day">Saturday</div>
								<div class="footer__hours-separ"></div>
								<div class="footer__hours-time">08:00 - 13:30</div>
							</div>
							<div class="footer__hours-item">
								<div class="footer__hours-day">Sunday</div>
								<div class="footer__hours-separ"></div>
								<div class="footer__hours-time">Closed</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="dev">
			<div class="container">
				<div class="dev__item">
					Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
				</div>
			</div>
		</div>
		<script>
			window.jQuery || document.write('<script src="assets/scripts/jquery-3.1.0.min.js"><\/script>');

		</script>
		<!---<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyBRrnhl1mCfuWpxL4Ame0cyS8fcV7xoyLk"></script>--->
		<script src="assets/scripts/jquery.formstyler.js"></script>
		<script src="assets/scripts/jquery.countdown.js"></script>
		<script src="assets/scripts/jquery.magnific-popup.min.js"></script>
		<script src="assets/scripts/swiper.min.js"></script>
		<script src="assets/scripts/jquery.knob.js"></script>
		<script src="assets/scripts/rome.min.js"></script>
		<script src="assets/scripts/isotope.pkgd.min.js"></script>
		<script src="assets/scripts/app.min.js"></script>
		<script>
			$().ready(
				function()
				{
					var alipaystate='${requestScope.alipaystate}';
					if(alipaystate.length>0&&alipaystate=="false")
					{
						if(confirm("您已关闭之前驾考支付页面,点击确认按钮查看详细信息!"))
						{
							$("#iframebody").attr("src","drivingLicenseMessageAction/load_drivingLicenseMessageAction");
						}
					}
				}
			);
			function reinitIframe()//ifream自适应高度
			{
				var iframe = document.getElementById("iframebody");
				try{
				var bHeight = iframe.contentWindow.document.body.scrollHeight;
				var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
				var height = Math.max(bHeight, dHeight);
				iframe.height = height;
				console.log(height);
				}catch (ex){}
			}
			window.setInterval("reinitIframe()",200);//ifream自适应高度
		</script>
	</body>
</html>

