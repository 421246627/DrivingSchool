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
    <title>报名</title>
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
		<meta name="description" content="">
		<meta name="keywords" content="">
		<link href="assets/styles/app.min.css" rel="stylesheet">
		<style>
			br{
				text-align:center;
			}
		</style>
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
		</div>
		<div class="head-page">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h1 class="title-page">报 名 中 心</h1>
						<div class="breadcrumbs">
							<ul class="breadcrumbs__list">
								<li class="breadcrumbs__item">
									<a href="" class="breadcrumbs__link">主 页</a>
								</li>
								<li class="breadcrumbs__item">报 名 中 心</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content" style="padding:0px">
			<div class="add-form">
				<div class="container">
					<h2 class="title">
						<span class="title__mark">填  写</span> 信 息:</h2>
					<form action="studentApplyAction/insert_studentApply" method="post" id="studentApplyform" class="form" target="_blank">
						<div class="form__row row">
							<div class="form__row-mobile col-md-6">
								<div class="control-group control-group_fullwidth">
									<span class="control-remark control-group__item">n</span>
									<span class="inp">
										<span class="inp__box">
											<input class="inp__control" type="text" id="studentName" name="studentapply.studentName" placeholder="请输入您的姓名..." />
											<input type="hidden" id="sex" name="studentapply.sex">
											<input type="hidden" id="drivingLicenseCostId" name="drivingLicenseCostId" value="${requestScope.drivingLicenseCostId }">
										</span>
									</span>
								</div>
							</div>
							<div class="col-md-6">
								<div class="control-group control-group_fullwidth">
									<span class="control-remark control-group__item">i</span>
									<span class="inp">
										<span class="inp__box">
											<input class="inp__control" type="text" id="identityCard" name="studentapply.identityCard" placeholder="请输入您的身份证号..." />
										</span>
									</span>
								</div>
							</div>
						</div>
						<div class="form__row row">
							<div class="form__row-mobile col-md-6">
								<div class="control-group control-group_fullwidth">
									<span class="control-remark control-group__item">p</span>
									<span class="inp">
										<span class="inp__box">
											<input class="inp__control" type="text" id="phone" name="studentapply.phone" placeholder="请输入您的手机号..." />
										</span>
									</span>
								</div>
							</div>
							<div class="col-md-6">
								<select class="select select_iconed" id="exerciseFloorId" name="studentapply.exerciseFloorId">
									<c:choose>
										<c:when test="${empty requestScope.exerciseFloors }">
											<option value="empty">训 练 场 暂 无 , 请 联 系 客 服  150 9307 7197</option>
										</c:when>
										<c:otherwise>
											<option value="unselected">请 选 择 训 练 场 地 !</option>
											<c:forEach items="${requestScope.exerciseFloors }" var="e">
												<option value="${e.exerciseFloorId }">${e.exerciseFloorName }</option>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</select>
								<svg class="for-select"><use xlink:href="assets/images/icon.svg#icon_car"></use></svg>
							</div>
						</div>
						<div class="form__row row">
							<div class="col-md-12">
								<a class="btn btn_fullwidth" id="submitbutton">去 支 付</a>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="sertificate">
				<div class="container">
					<h2 class="title title_theme_white">
						<span class="title__mark">荣 誉 证 书</span>
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
							<h4 class="footer__title">关 于 我 们</h4>
							<p class="footer__text">在过去的1年里,在郑州拥有8个训练场地,完成了5000多名学生。我们有一支经验丰富的队伍还有认证的培训师,从驾驶课开始到结束都会给你帮助。</p>
							<div class="logo footer__logo">
								<a href="index.jsp" class="logo__link">
									<svg class="logo__icon"><use xlink:href="assets/images/icon.svg#icon_logo"></use></svg>
									<span class="logo__text">driving school</span>
								</a>
							</div>
						</div>
					</div>
					<div class="footer__section col-md-3">
						<div class="footer__blog">
							<h4 class="footer__title">评 论</h4>
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
								观 看 所 有 评 论
								<svg class="footer__more-icon"><use xlink:href="assets/images/icon.svg#icon_right"></use></svg>
							</a>
						</div>
					</div>
					<div class="footer__section col-md-3">
						<div class="footer__instagramm">
							<h4 class="footer__title">动 态</h4>
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
								观 看 所 有 评 论
								<svg class="footer__more-icon"><use xlink:href="assets/images/icon.svg#icon_right"></use></svg>
							</a>
						</div>
					</div>
					<div class="footer__section col-md-3">
						<div class="footer__hours">
							<h4 class="footer__title">营 业 时 间</h4>
							<div class="footer__hours-item">
								<div class="footer__hours-day">星 期 一</div>
								<div class="footer__hours-separ"></div>
								<div class="footer__hours-time">08:00 - 20:00</div>
							</div>
							<div class="footer__hours-item">
								<div class="footer__hours-day">星 期 二</div>
								<div class="footer__hours-separ"></div>
								<div class="footer__hours-time">08:00 - 20:00</div>
							</div>
							<div class="footer__hours-item">
								<div class="footer__hours-day">星 期 三</div>
								<div class="footer__hours-separ"></div>
								<div class="footer__hours-time">08:00 - 20:00</div>
							</div>
							<div class="footer__hours-item">
								<div class="footer__hours-day">星 期 四</div>
								<div class="footer__hours-separ"></div>
								<div class="footer__hours-time">08:00 - 20:00</div>
							</div>
							<div class="footer__hours-item">
								<div class="footer__hours-day">星 期 五</div>
								<div class="footer__hours-separ"></div>
								<div class="footer__hours-time">08:00 - 20:00</div>
							</div>
							<div class="footer__hours-item">
								<div class="footer__hours-day">星 期 六</div>
								<div class="footer__hours-separ"></div>
								<div class="footer__hours-time">08:00 - 22:00</div>
							</div>
							<div class="footer__hours-item">
								<div class="footer__hours-day">星 期 日</div>
								<div class="footer__hours-separ"></div>
								<div class="footer__hours-time">08:00 - 22:00</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="dev">
			<div class="container">
				<div class="dev__item">
					版权 &copy; 2018年。公司名称版权所有 A309</div>
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
			var identityCardresult=false;
			var phoneresult=false;
			$("#identityCard").blur(
				function()
				{
					var idcard=$("#identityCard").val();
					$.ajax({
						url:"http://api.k780.com/?app=idcard.get&idcard="+idcard+"&appkey=10003&sign=b59bc3ef6191eb9f747dd4e83c99f2a4&format=json&jsoncallback=data",
						type: "get",
						dataType:"jsonp",
						jsonpCallback:'data',
						success:function(data)
						{
							if(data.success==1)
							{
								identityCardresult=true;
								$("#sex").val(data.result.sex);
							}
							else
							{
								identityCardresult=false;
								alert("身份证输入错误,请重新输入!");
							}
						},
						error:function(xml,msg,XMLHttpRequest)
						{
							alert(XMLHttpRequest.readyState);
						}
					});
					
				}
			);
			$("#phone").blur(
				function()
				{
					var phone=$("#phone").val();
					$.ajax({
						url:"http://api.k780.com/?app=phone.get&phone="+phone+"&appkey=10003&sign=b59bc3ef6191eb9f747dd4e83c99f2a4&format=json&jsoncallback=data",
						type:"get",
						dataType:"jsonp",
						jsonpCallback:"data",
						success:function(data)
						{
							if(data.success==1&&data.result.status=="ALREADY_ATT")
							phoneresult=true;
							else
							{
								phoneresult=false;
								alert("手机号输入错误,请重新输入!");
							}
						},
						error:function(xml,msg,XMLHttpRequest)
						{
							alert(XMLHttpRequest.readyState);
						}
					});
				}
			);
			function checkstudentName()
			{
				var studentName=$("#studentName").val();
				var reg = new RegExp("[\\u4E00-\\u9FFF]+","g");
				if(reg.test(studentName))
				return true;
				else
				return false;
			}
			$("#studentName").blur(
				function()
				{
					if(!checkstudentName())
					alert("名字格式输入错误,请重新输入!");
				}
			);
			function checkexerciseFloorId()
			{
				var exerciseFloorId=$("#exerciseFloorId").val();
				if(exerciseFloorId!="empty"&&exerciseFloorId!="unselected")
				return true;
				else
				return false;
			}
			$("#submitbutton").click(
				function()
				{
					if(checkstudentName())
					{
						if(identityCardresult)
						{
							if(phoneresult)
							{
								if(checkexerciseFloorId())
								{
									$("#studentApplyform").submit();
								}
								else
								{
									alert("训练场地未选择,请选择训练场地!");
								}
							}
							else
							{
								alert("手机号输入错误,请重新输入!");
							}
						}
						else
						{
							alert("身份证输入错误,请重新输入!");
						}
					}
					else
					{
						alert("名字格式输入错误,请重新输入!");
					}
				}
			);
		</script>
	</body>
</html>
