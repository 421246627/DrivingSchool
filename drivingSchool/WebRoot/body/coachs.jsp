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
    <title>预约教练</title>
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
		<title>Teachers</title>
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
								<ul class="nav__sub">
									<li class="nav__item">
										<a href="coachAction/load_coach" class="nav__link">预 约 教 练</a>
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
						<h1 class="title-page">教 练</h1>
						<div class="breadcrumbs">
							<ul class="breadcrumbs__list">
								<li class="breadcrumbs__item">
									<a href="" class="breadcrumbs__link">主 页</a>
								</li>
								<li class="breadcrumbs__item">预 约 教 练</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content">
			<div class="teacher">
				<c:choose>
					<c:when test="${empty requestScope.practiceDriving }">
						<div class="teacher-list">
							<div class="container">
								<h2 class="title"><span class="title__mark">教 练 </span> 信 息</h2>
								<c:choose>
									<c:when test="${empty requestScope.coachs }">
										<div class="address__data container" style="width:100%;margin-top:50px;">
											<div class="row">
												<div class="data col-md-12" style="text-align:center;">
													<div class="address__data-item">
														<span class="address__data-value" style="letter-spacing:5px;">抱歉,暂未查询到教练信息,请重试或联系平台客服!</span>
														<span class="address__data-value">+ 150 9307 7197</span>
													</div>
												</div>
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<ul class="teacher-list__list row">
											<c:forEach items="${requestScope.coachs}" var="c">
												<li class="teacher-list__item col-md-4">
													<div class="badge">
														<a href="coachAction/find_coachBycoachId?coachId=${c.coachId }" class="badge__wrap">
															<div class="badge__head">
																<div class="badge__fig">
																	<img src="${c.photo }" style="width:100%;height:100%;"/>
																</div>
																<div class="badge__head-body">
																	<div class="badge__name">${c.coachName }</div>
																	<div class="badge__rating">${c.exercisefloor.exerciseFloorName }</div>
																	<div class="badge__car">${c.vehicleinfo.vehiclemodel.vehicleModelName }</div>
																	<div class="badge__category">${c.drivinglicensetype.drivingLicenseTypeName }</div>
																</div>
															</div>
															<div class="badge__body" style="word-break:keep-all;">
																<div class="badge__data">
																	<span class="badge__data-term">性别:</span>
																	<span class="badge__data-separ"></span>
																	<span class="badge__data-desc">${c.gender }</span>
																</div>
																<div class="badge__data">
																	<span class="badge__data-term">驾照类型:</span>
																	<span class="badge__data-separ"></span>
																	<span class="badge__data-desc">${c.drivinglicensetype.drivingLicenseTypeName }</span>
																</div>
																<div class="badge__data">
																	<span class="badge__data-term">教授科目:</span>
																	<span class="badge__data-separ"></span>
																	<span class="badge__data-desc">${c.subjecttype.subjectTypeName }</span>
																</div>
															</div>
														</a>
													</div>
												</li>
											</c:forEach>
										</ul>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<div class="teacher-list">
							<div class="container">
								<h2 class="title"><span class="title__mark">预 约 </span> 信 息</h2>
									<input type="hidden" id="cancel_practiceDrivingresult" value="${requestScope.cancel_practiceDrivingresult }">
									<form action="practiceDrivingAction/Cancel_practiceDriving" class="form" method="post">
										<ul class="teacher-list__list row">
												<li class="teacher-list__item col-md-12">
													<div class="badge">
															<div class="badge__head">
																<div class="badge__fig">
																	<img src="${requestScope.practiceDriving.coach.photo }" style="width:100%;height:100%;"/>
																</div>
																<div class="badge__head-body">
																	<div class="badge__name">${requestScope.practiceDriving.coach.coachName }</div>
																	<div class="badge__rating">${requestScope.practiceDriving.coach.exercisefloor.exerciseFloorName }</div>
																	<div class="badge__car">${requestScope.practiceDriving.coach.vehicleinfo.vehiclemodel.vehicleModelName }</div>
																	<div class="badge__category">${requestScope.practiceDriving.coach.drivinglicensetype.drivingLicenseTypeName }</div>
																</div>
															</div>
															<div class="badge__body" style="white-space:nowrap;">
																<div class="badge__data">
																	<span class="badge__data-term">性别:</span>
																	<span class="badge__data-separ"></span>
																	<span class="badge__data-desc">${requestScope.practiceDriving.coach.gender }</span>
																</div>
																<div class="badge__data">
																	<span class="badge__data-term">驾照类型:</span>
																	<span class="badge__data-separ"></span>
																	<span class="badge__data-desc">${requestScope.practiceDriving.coach.drivinglicensetype.drivingLicenseTypeName }</span>
																</div>
																<div class="badge__data">
																	<span class="badge__data-term">预约科目:</span>
																	<span class="badge__data-separ"></span>
																	<span class="badge__data-desc">${requestScope.practiceDriving.coach.subjecttype.subjectTypeName }</span>
																</div>
																<div class="badge__data">
																	<span class="badge__data-term">预约时间:</span>
																	<span class="badge__data-separ"></span>
																	<span class="badge__data-desc">${fn:substring(requestScope.practiceDriving.appointmentDate,0,10) }</span>
																</div>
															</div>
														</a>
													</div>
												</li>
										</ul>
										<c:choose>
											<c:when test="${requestScope.practiceDriving.stateId eq '015b538e-2582-4634-8b63-ab0743b9682f' }">
												<div class="form__row row">
													<div class="col-md-12">
														<button class="btn btn_fullwidth" type="submit">
															<input type="hidden" id="practiceDrivingId" name="practicedriving.practiceDrivingId" value="${requestScope.practiceDriving.practiceDrivingId }">
															<span class="btn__text">取 消 预 约</span>
														</button>
													</div>
												</div>
											</c:when>
											<c:otherwise>
												<div class="form__row row">
													<div class="btn btn_fullwidth" style="text-align:center;color:white;background-color:#e64346;border:0px;">
														<span>教练已确定预约订单,不可取消!</span>
													</div>
												</div>
											</c:otherwise>
										</c:choose>
									</form>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${empty requestScope.OneToOnecoachs }"></c:when>
					<c:otherwise>
						<div class="teacher-list">
							<div class="container">
								<h2 class="title"><span class="title__mark">优 惠 </span> 包 车</h2>
										<ul class="teacher-list__list row">
											<c:forEach items="${requestScope.OneToOnecoachs}" var="c">
												<li class="teacher-list__item col-md-4">
													<div class="badge">
														<a href="coachAction/find_coachBycoachId?coachId=${c.coachId }" class="badge__wrap">
															<div class="badge__head">
																<div class="badge__fig">
																	<img src="${c.photo }" style="width:100%;height:100%;"/>
																</div>
																<div class="badge__head-body">
																	<div class="badge__name">${c.coachName }</div>
																	<div class="badge__rating">${c.exercisefloor.exerciseFloorName }</div>
																	<div class="badge__car">${c.vehicleinfo.vehiclemodel.vehicleModelName }</div>
																	<div class="badge__category">${c.drivinglicensetype.drivingLicenseTypeName }</div>
																</div>
															</div>
															<div class="badge__body" style="word-break:keep-all;">
																<div class="badge__data">
																	<span class="badge__data-term">性别:</span>
																	<span class="badge__data-separ"></span>
																	<span class="badge__data-desc">${c.gender }</span>
																</div>
																<div class="badge__data">
																	<span class="badge__data-term">驾照类型:</span>
																	<span class="badge__data-separ"></span>
																	<span class="badge__data-desc">${c.drivinglicensetype.drivingLicenseTypeName }</span>
																</div>
																<div class="badge__data">
																	<span class="badge__data-term">教授科目:</span>
																	<span class="badge__data-separ"></span>
																	<span class="badge__data-desc">${c.subjecttype.subjectTypeName }</span>
																</div>
															</div>
														</a>
													</div>
												</li>
											</c:forEach>
										</ul>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
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
			$().ready(
				function()
				{
					var cancel_practiceDrivingresult=$("#cancel_practiceDrivingresult").val();
					if(cancel_practiceDrivingresult.length>0&&cancel_practiceDrivingresult=="false")
					{
						alert("抱歉,取消预约失败,请重试或联系平台客服 150 9307 7197");
					}
				}
			);
		</script>
	</body>
</html>
