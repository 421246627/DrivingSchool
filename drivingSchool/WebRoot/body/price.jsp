<%@ page language="java" import="java.util.*,com.drivingSchool.entity.drivingLicenseCost" pageEncoding="UTF-8"%>
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
		<title>驾考价格</title>
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
								<a href="drivingLicenseCostAction/find_drivingLicenseCostThree" class="nav__link">主 页</a>
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
								<a href="coachAction/load_coach" class="nav__link">预 约 教 练</a>
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
						<h1 class="title-page">价 格</h1>
						<div class="breadcrumbs">
							<ul class="breadcrumbs__list">
								<li class="breadcrumbs__item">
									<a href="" class="breadcrumbs__link">主 页</a>
								</li>
								<li class="breadcrumbs__item">价 格</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content">
			<div class="container">
				<h2 class="title">驾 考
						<span class="title__mark">价 格</span>
					</h2>
					<p class="desc course__desc">这 里 有 一 群 秉 持 完 美 主 义 的 培 训 者。</p>
				<div class="price-table">
					<c:choose>
						<c:when test="${requestScope.studentApply.stateId eq '554a242a-b6a1-491f-bf95-2f3b9bd4cef2' }">
							<div class="col-xs-12">
								<a class="btn btn_fullwidth" href="personalcenterAction/load_personalcenter">您已关闭之前驾考支付页面,点击查看详细信息!</a>
							</div>
						</c:when>
						<c:otherwise>
							<c:choose>
								<c:when test="${empty requestScope.drivingLicenseCosts }">
									<div class="price-table__list row">
										<div class="swiper-slide">
											<div class="review__list-item col-md-12 col-lg-10 col-lg-offset-1">
												<blockquote class="review__block">
													<div class="review__block-body">
														<div class="review__block-text">
															<p>十分抱歉,未能找到驾考套餐,请联系平台客服,谢谢合作!</p>
														</div>
														<footer class="review__block-footer">
															<div class="review__author">+150 9307 7197</div>
														</footer>
													</div>
												</blockquote>
											</div>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<%
										request.setAttribute("dindex",0);
									%>
									<c:forEach items="${requestScope.drivingLicenseCosts }" var="d">
											<%
												int dindex=Integer.parseInt(request.getAttribute("dindex").toString());
												if(dindex==0||dindex%3==0)
												{
													dindex=dindex+1;
													if(0!=dindex)
													{
														%>
															</div>
														<%
													}
													%>
														<div class="price-table__list row" style="margin-top:50px;">
													<%
												}
												else
												{
													dindex=dindex+1;
												}
												request.setAttribute("dindex",dindex);
													%>
															<c:choose>
																<c:when test="${d.drivingLicenseCostId eq '3aafdeaa-2d4f-40f7-9363-51f75ee2e502' }">
																	<div class="col-md-4 col-md-push-4">
																		<div class="price-table__item price-table__item_best">
																			<div class="price-table__best">
																				<svg class="price-table__star"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg> bestsellers
																				<svg class="price-table__star"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
																			</div>
																			<div class="price-table__value">￥ ${d.price}</div>
																			<h3 class="price-table__name">${d.ct.classTypesName} ${d.dlt.drivingLicenseTypeName}</h3>
																			<ul class="price-table__feature-list">
																				<li class="price-table__feature-item">完整的课程理论</li>
																				<li class="price-table__feature-item">全驾驶课程</li>
																				<li class="price-table__feature-item">教练的细心指导</li>
																				<li class="price-table__feature-item">暂住证办理</li>
																				<li class="price-table__feature-item">练车券全包</li>
																				<li class="price-table__feature-item">温馨的服务</li>
																				<li class="price-table__feature-item">舒心的心理辅导</li>
																			</ul>
																			<a class="btn price-table__btn">
																				<input type="hidden" value="${d.drivingLicenseCostId }">
																				<span class="btn__text">预 约 报 名</span>
																			</a>
																			<div class="price-table__stars">
																				<svg class="price-table__star"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
																				<svg class="price-table__star"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
																				<svg class="price-table__star"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
																			</div>
																		</div>
																	</div>
																</c:when>
																<c:when test="${d.ct.classTypesName eq '全包班' }">
																	<div class="col-md-4">
																		<div class="price-table__item">
																			<div class="price-table__value">￥ ${d.price }</div>
																			<h3 class="price-table__name">${d.ct.classTypesName} ${d.dlt.drivingLicenseTypeName}</h3>
																			<ul class="price-table__feature-list">
																				<li class="price-table__feature-item">完整的课程理论</li>
																				<li class="price-table__feature-item">全驾驶课程</li>
																				<li class="price-table__feature-item">教练的细心指导</li>
																				<li class="price-table__feature-item">暂住证办理</li>
																				<li class="price-table__feature-item">练车券全包</li>
																				<li class="price-table__feature-item">温馨的服务</li>
																				<li class="price-table__feature-item">舒心的心理辅导</li>
																			</ul>
																			<a class="btn price-table__btn">
																				<input type="hidden" value="${d.drivingLicenseCostId }">
																				<span class="btn__text">预 约 报 名</span>
																			</a>
																		</div>
																	</div>
																</c:when>
																<c:when test="${d.ct.classTypesName eq '特惠班' }">
																	<div class="col-md-4 col-md-pull-4">
																		<div class="price-table__item">
																			<div class="price-table__value">￥ ${d.price }
																			<span class="price-table__discount">特惠</span></div>
																			<h3 class="price-table__name">${d.ct.classTypesName} ${d.dlt.drivingLicenseTypeName}</h3>
																			<ul class="price-table__feature-list">
																				<li class="price-table__feature-item">完整的课程理论</li>
																				<li class="price-table__feature-item">全驾驶课程</li>
																				<li class="price-table__feature-item">教练的细心指导</li>
																				<li class="price-table__feature-item">不含暂住证</li>
																				<li class="price-table__feature-item">不含练车券</li>
																				<li class="price-table__feature-item">温馨的服务</li>
																				<li class="price-table__feature-item">舒心的心理辅导</li>
																			</ul>
																			<a class="btn price-table__btn">
																				<input type="hidden" value="${d.drivingLicenseCostId }">
																				<span class="btn__text">预 约 报 名</span>
																			</a>
																		</div>
																	</div>
																</c:when>
																<c:when test="${d.ct.classTypesName eq '大包班' }">
																	<div class="col-md-4">
																		<div class="price-table__item">
																			<div class="price-table__value">￥ ${d.price }</div>
																			<h3 class="price-table__name">${d.ct.classTypesName} ${d.dlt.drivingLicenseTypeName}</h3>
																			<ul class="price-table__feature-list">
																				<li class="price-table__feature-item">完整的课程理论</li>
																				<li class="price-table__feature-item">全驾驶课程</li>
																				<li class="price-table__feature-item">教练的细心指导</li>
																				<li class="price-table__feature-item">暂住证办理</li>
																				<li class="price-table__feature-item">不含练车券</li>
																				<li class="price-table__feature-item">温馨的服务</li>
																				<li class="price-table__feature-item">舒心的心理辅导</li>
																			</ul>
																			<a class="btn price-table__btn">
																				<input type="hidden" value="${d.drivingLicenseCostId }">
																				<span class="btn__text">预 约 报 名</span>
																			</a>
																		</div>
																	</div>
																</c:when>
															</c:choose>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<input type="hidden" id="practiceCarVoucherserror" value="${requestScope.practiceCarVoucherserror }">
			<div class="course course_theme_light" style="margin-top:50px;">
				<div class="container">
					<h2 class="title">其 他
						<span class="title__mark">业 务</span>
					</h2>
					<p class="desc course__desc">搭 建 驾 校 中 的 航 母 , 驶 向 安 全 的 彼 岸。</p>
					<c:choose>
					<c:when test="${empty requestScope.otherCosts }">
						<div class="swiper-slide">
								<div class="review__list-item col-md-12 col-lg-10 col-lg-offset-1">
									<blockquote class="review__block">
										<div class="review__block-body">
											<div class="review__block-text">
												<p>十分抱歉,未能找到其他套餐,请联系平台客服,谢谢合作!</p>
											</div>
											<footer class="review__block-footer">
												<div class="review__author">+150 9307 7197</div>
											</footer>
										</div>
									</blockquote>
								</div>
							</div>
					</c:when>
					<c:otherwise>
						<ul class="course__list row">
							<c:forEach items="${requestScope.otherCosts }" var="o">
								<li class="course__list-item col-md-4">
									<div class="course__item">
										<div class="course__item-head">
											<svg class="course__icon-guard"><use xlink:href="assets/images/icon.svg#icon_guard"></use></svg>
											<h3 class="course__item-name">${o.otherCostName } </h3>
										</div>
										<div class="course__price">
											<div class="course__price-item">
												<div class="course__price-kind">${o.otherCostName }</div>
												<div class="course__price-value">￥ ${o.price }</div>
											</div>
											<div class="course__price-item">
												<div class="course__price-kind">手 续 费</div>
												<div class="course__price-value">￥ 0</div>
											</div>
										</div>
										<div class="course__item-popup">
											<div class="course__item-popup-name">${o.moreInfo }</div>
											<div class="course__item-popup-action">
												<a class="btn btn_fullwidth" onclick="otherCostAlipay(this)">
													<input type="hidden" value="${o.otherCostId }">
													<span class="btn__text">购 买</span>
												</a>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</c:otherwise>
				</c:choose>
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
								<a href="drivingLicenseCostAction/find_drivingLicenseCostThree" class="nav__link">主 页</a>
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
								<a href="coachAction/load_coach" class="nav__link">预 约 教 练</a>
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
					var practiceCarVoucherserror=$("#practiceCarVoucherserror").val();
					if(practiceCarVoucherserror.length>0&&practiceCarVoucherserror=="true")
					{
						alert("抱歉,您的练车券已用完,包车培训需要练车券,请购买练车券!");
					}
					var otherCostAlipayresult='${requestScope.otherCostAlipayresult}';
					if(otherCostAlipayresult.length>0&&otherCostAlipayresult=="false")
					{
						alert("抱歉,支付失败,请重试或联系平台客服 150 9307 7197");
					}
				}
			);
			$(".price-table__btn").click(
				function()
				{
					var drivingLicenseCostId=$(this).children("input").val();
					var stateId='${requestScope.studentApply.stateId }';
					if(stateId.length==0)
					{
						window.location.href="exerciseFloorAction/find_exerciseFloor?drivingLicenseCostId="+drivingLicenseCostId;
					}
					else
					{
						alert("抱歉,您已购买过驾考套餐,不能重复购买!");
					}
				}
			);
			function otherCostAlipay(data)
			{
				var supplementaryExamination='${requestScope.studentApply.supplementaryExamination}';//补考状态
				var ClassTypesId='${requestScope.studentApply.classTypesId}';//班级类别
				var otherCostId=$(data).children("input").val();
				if(otherCostId=="4a7e5903-02a3-4d68-8333-3fab2183a059")
				{
					if(ClassTypesId=="cba61b77-4fc8-4257-8fc9-861ab5f6871b"||ClassTypesId=="2eacb980-478b-46e2-a9b4-b4369950a1cd")
					{
						alert("您购买的驾考套餐无需购买暂住证,本平台帮您代办!");
					}
					else
					{
						window.location.href="orderInfoAction/insert_orderInfo?otherCostId="+otherCostId;
					}
				}
				else if(otherCostId=="9bae02f5-e900-4c10-b014-3302b3a90a46")
				{
					if(ClassTypesId=="2eacb980-478b-46e2-a9b4-b4369950a1cd")
					{
						alert("您购买的驾考套餐无需购买练车券,前去预约练车即可!");
					}
					else
					{
						window.location.href="orderInfoAction/insert_orderInfo?otherCostId="+otherCostId;
					}
				}
				else if(otherCostId=="1dc5bf46-58eb-4d7f-84f6-db1e67835420")
				{
					if(supplementaryExamination=="true")
					{
						alert("您当前无需缴纳补考费,前去预约考试即可!");
					}
					else
					{
						window.location.href="orderInfoAction/insert_orderInfo?otherCostId="+otherCostId;
					}
				}
			}
		</script>
	</body>

</html>

