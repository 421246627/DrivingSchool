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
		<title>教 练 信 息</title>
		<meta name="description" content="">
		<meta name="keywords" content="">
		<link href="assets/styles/app.min.css" rel="stylesheet">
		<style>
			#appointmenttime #forenoon
			{
				height:200px;
			}
			#appointmentdate #forenoon
			{
				height:400px;
			}
			#appointmenttime #afternoon,#appointmentdate #afternoon
			{
				height:350px;
			}
			#appointmenttime #forenoon,#appointmenttime #afternoon,#appointmentdate #forenoon,#appointmentdate #afternoon
			{
				border-collapse:separate;
				border-spacing:0px 10px;
				width:100%;
				text-align:center;
			}
			#appointmenttime #afternoon .lefttd,#appointmenttime #forenoon .lefttd,#appointmentdate #afternoon .lefttd,#appointmentdate #forenoon .lefttd
			{
				border:2px solid #F7F8F8;
				border-top-left-radius:5px;
				border-bottom-left-radius:5px;
				width:50%;
				margin-bottom:5px;
			}
			#appointmenttime #afternoon .appointmenttd,#appointmenttime #forenoon .appointmenttd,#appointmentdate #afternoon .appointmenttd,#appointmentdate #forenoon .appointmenttd
			{
				width:50%;
				border-top-right-radius:5px;
				border-bottom-right-radius:5px;
				background-color:#4B83EB;
				color:white;
			}
			#appointmenttime #afternoon .fulltd,#appointmenttime #forenoon .fulltd,#appointmentdate #afternoon .fulltd,#appointmentdate #forenoon .fulltd
			{
				width:50%;
				border-top-right-radius:5px;
				border-bottom-right-radius:5px;
				background-color:#e64346;
				color:white;
			}
			#appointmenttime #afternoon .fulltd,#appointmenttime #forenoon .fulltd,#appointmenttime #afternoon .appointmenttd,#appointmenttime #forenoon .appointmenttd,#appointmentdate #afternoon .fulltd,#appointmentdate #forenoon .fulltd,#appointmentdate #afternoon .appointmenttd,#appointmentdate #forenoon .appointmenttd
			{
				letter-spacing:10px;
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
						<h1 class="title-page" style="letter-spacing:10px;">${requestScope.coach.coachName }</h1>
						<div class="breadcrumbs">
							<ul class="breadcrumbs__list">
								<li class="breadcrumbs__item">
									<a href="" class="breadcrumbs__link">主 页</a>
								</li>
								<li class="breadcrumbs__item">
									<a href="" class="breadcrumbs__link">预 约 教 练</a>
								</li>
								<li class="breadcrumbs__item" style="letter-spacing:5px;">${requestScope.coach.coachName }</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content">
			<div class="profile">
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<div class="profile__fig">
								<div class="profile__fig-img">
									<img src="${requestScope.coach.photo }" style="width:250px;height:250px;" />
								</div>
								<div class="profile__fig-thumb">
									<img src="assets/images/teacher/thumb1.jpg" alt="" />
								</div>
								<div class="profile__fig-thumb">
									<img src="assets/images/teacher/thumb2.jpg" alt="" />
								</div>
								<div class="profile__fig-thumb">
									<img src="assets/images/teacher/thumb3.jpg" alt="" />
								</div>
								<div class="profile__fig-thumb">
									<img src="assets/images/teacher/thumb4.jpg" alt="" />
								</div>
								<div class="profile__fig-thumb">
									<img src="assets/images/teacher/thumb5.jpg" alt="" />
								</div>
							</div>
						</div>
						<div class="col-md-9">
							<div class="profile__head">
								<input type="hidden" id="coachId" value="${requestScope.coach.coachId }">
								<div class="profile__name" style="letter-spacing:10px;">${requestScope.coach.coachName }</div>
								<div class="profile__rating">
									<svg class="profile__rating-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
									<svg class="profile__rating-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
									<svg class="profile__rating-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
									<svg class="profile__rating-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
									<svg class="profile__rating-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
								</div>
								<div class="profile__car">${requestScope.coach.vehicleinfo.vehiclemodel.vehicleModelName }</div>
								<div class="profile__category">${requestScope.coach.drivinglicensetype.drivingLicenseTypeName }</div>
							</div>
							<div class="profile__section">
								<a class="btn profile__call" id="appointmenttimea">
									<span class="btn__text">预 约</span>
								</a>
								<a class="btn btn_theme_blue profile__call" id="publishmessagea">
									<span class="btn__text">发 表 留 言</span>
								</a>
								<div class="profile__data" style="word-break:keep-all;">
									<div class="profile__data-item">
										<span class="profile__data-term">性别:</span>
										<span class="profile__data-separ"></span>
										<span class="profile__data-value">${requestScope.coach.gender }</span>
									</div>
									<div class="profile__data-item">
										<span class="profile__data-term">训练场地:</span>
										<span class="profile__data-separ"></span>
										<span class="profile__data-value">${requestScope.coach.exercisefloor.exerciseFloorName }</span>
									</div>
									<div class="profile__data-item">
										<span class="profile__data-term">教授科目:</span>
										<span class="profile__data-separ"></span>
										<span class="profile__data-value">${requestScope.coach.subjecttype.subjectTypeName }</span>
									</div>
								</div>
							</div>
							<div class="profile__section">
								<h2 class="title">
									<span class="title__mark">个 人 简 介</span>
								</h2>
								<div class="profile__desc" style="text-indent:25px">${requestScope.coach.coachName} 教练在长达5年的教学培训中,自己先后完成对DrivingSchool驾校平台的多名学员的培训和取证,受到上级领导和学校的肯定,得到了学员的认可和信任,这些成绩的取得,有一下几点感受。</div>
								<div class="profile__desc" style="text-indent:25px">一、我知道驾校是道路交通安全的摇篮,作为一名机动车教练员,我肩负着为社会培养高素质驾驶员的重任。严格遵守驾校的各项规章制度,严格遵守道路交通规则和安全操作规程。注重理论知识学习,坚持与时俱进,只有认真学习新的道路交通安全法则和驾驶技能,不断充实提高自己。才能在工作中,向学生传授驾驶技能,而且对其进思工想道德教育,使学员形成文明行车,安全礼让行车的驾驶观,只有学员在入校学习之初,牢固树立正确的安全观,才能防止开“英雄车”的学员出现,用身边的事教育学员,用血的教训警醒每一个学习驾驶的人,几年来,通过我培训的学员,没有发生重大交通事故,保证了行车安全,为社会做出了贡献。</div>
								<div class="profile__desc" style="text-indent:25px">二、坚持质量兴校的原则,认真执行学年教学计划,理论联系实际,不断研究教学方法,改进教学手段,热情接待学校安排我车上的每一批、每一位学员,对每位学员做到公平、负责、耐心答问,教学中本着“精心教练,以人为本”的教学宗旨,因材施教,把握每位学员的思想情绪,了解每位学员的特点,扬长避短,调动和引导每位学员的积极性,对一些接受能力较慢的学员更是做到耐心细致,因材施教,使每位学员都能掌握驾驶技能和安全操作规程。对那些学习悟性差的学员,我更是不厌其烦地手把手教育,让他们准确无误地学会每一个操作规程,从不责备学员,在我的教育理念中,一直坚持“只有笨拙的教练,没有学不好的学生”,因此,在我和学员的共同努力和配合下,收到了可喜的教学成果,在学校和学员中形成了和好的口碑。</div>
								<div class="profile__desc" style="text-indent:25px">三、在教学过程中,我认真加强学员管理,严格学员纪律。道路驾驶时,严格遵守道路交通规则及安全操作规程;场地训练时,提前做好安全操作规程的宣讲以及做到及时提请,避免意外的发生。自己以身作则,言传身教,做到上车是师徒,下车是朋友,在家都要父母帮助,因此,他们的生活自理能力很差,我在学习之外也向他们传授做人的基本常识,学习自己的事自己做,不然今后驾驶车辆外出,遇到问题就不会处理,同样也不是一个合格的学员。在教学中也会遇到熟人,朋友介绍来学习驾驶的学员,我一视同仁,严格要求,严格管理,学习考试中从不马马虎虎,搞“人情教学”保证教学质量,只有让他们真正学习好了,才对得起他们,努力营造良好的教学环境,让学员在轻松友好的环境氛围下学习。</div>
							</div>
							<div class="profile__section">
								<div class="cars">
									<h2 class="title">
										<span class="title__mark">所 属 车 辆</span>
									</h2>
									<div class="row">
										<div class="col-md-4">
											<div class="cars__fig">
												<img src="${requestScope.coach.vehicleinfo.photo }" style="width:260px;height:175px;" />
											</div>
											<div class="cars__name">${requestScope.coach.vehicleinfo.vehiclemodel.vehicleModelName }</div>
											<div class="cars__rating">
												<svg class="cars__rating-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="cars__rating-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="cars__rating-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="cars__rating-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="cars__rating-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
											</div>
										</div>
									</div>
								</div>
							</div>
							<input type="hidden" id="fullerror" var="${requestScope.fullerror }">
							<input type="hidden" id="insertpracticeDrivingresult" var="${requestScope.insertpracticeDrivingresult }">
							<c:choose>
								<c:when test="${empty requestScope.practiceDrivingappointmentDate }">
									<div class="profile__section" id="appointmentdate">
										<div class="cars">
											<h2 class="title">
												<span class="title__mark">预 约 时 间</span>
											</h2>
											<blockquote class="quote quote_type_block">
												<div class="col-md-12" style="margin-bottom:20px;text-align:center;border-bottom:1px solid #D9E4EE;">
													<div class="quote__author"><input type="text" style="width:300px;text-align:center;font-size:18px;" disabled="disabled" class="inp__control" value="${requestScope.dates.date1 }——${requestScope.dates.date15 }" ></div>
												</div>
												<div class="form__row row">
												<div class="col-md-12">
													<div class="col-md-6">
														<table id="forenoon">
															<tr>
																<td class="lefttd">${requestScope.dates.date1 }</td>
																<c:choose>
																	<c:when test="${requestScope.dateresult.date1 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:when test="${requestScope.dateresult.date1 eq '-1' }"><td class="fulltd">逾期</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">${requestScope.dates.date2 }</td>
																<c:choose>
																	<c:when test="${requestScope.dateresult.date2 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">${requestScope.dates.date3 }</td>
																<c:choose>
																	<c:when test="${requestScope.dateresult.date3 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">${requestScope.dates.date4 }</td>
																<c:choose>
																	<c:when test="${requestScope.dateresult.date4 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">${requestScope.dates.date5 }</td>
																<c:choose>
																	<c:when test="${requestScope.dateresult.date5 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">${requestScope.dates.date6 }</td>
																<c:choose>
																	<c:when test="${requestScope.dateresult.date6 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">${requestScope.dates.date7 }</td>
																<c:choose>
																	<c:when test="${requestScope.dateresult.date7 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">${requestScope.dates.date8 }</td>
																<c:choose>
																	<c:when test="${requestScope.dateresult.date8 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
														</table>
													</div>
													<div class="col-md-6">
														<table id="afternoon">
															<tr>
																<td class="lefttd">${requestScope.dates.date9 }</td>
																<c:choose>
																	<c:when test="${requestScope.dateresult.date9 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">${requestScope.dates.date10 }</td>
																<c:choose>
																	<c:when test="${requestScope.dateresult.date10 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">${requestScope.dates.date11 }</td>
																<c:choose>
																	<c:when test="${requestScope.dateresult.date11 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">${requestScope.dates.date12 }</td>
																<c:choose>
																	<c:when test="${requestScope.dateresult.date12 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">${requestScope.dates.date13 }</td>
																<c:choose>
																	<c:when test="${requestScope.dateresult.date13 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">${requestScope.dates.date14 }</td>
																<c:choose>
																	<c:when test="${requestScope.dateresult.date14 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">${requestScope.dates.date15 }</td>
																<c:choose>
																	<c:when test="${requestScope.dateresult.date15 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
														</table>
													</div>
												</div>
												</div>
											</blockquote>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="profile__section" id="appointmenttime">
										<div class="cars">
											<h2 class="title">
												<span class="title__mark">预 约 时 间</span>
											</h2>
											<blockquote class="quote quote_type_block">
												<div class="col-md-12" style="margin-bottom:20px;text-align:center;border-bottom:1px solid #D9E4EE;">
													<div class="quote__author"><input type="text" style="text-align:center;font-size:18px;" class="inp__control" id="appointmentDate" name="appointmentDate"  data-options="{'type':'YYYY-MM-DD','beginYear':2018,'endYear':2088,'limitTime':'today'}" ></div>
												</div>
												<div class="form__row row">
												<div class="col-md-12">
													<div class="col-md-6">
														<h2 class="title" style="font-size:20px;text-align:center;"><span class="title__mark" >上 午</span></h2>
														<table id="forenoon">
															<tr>
																<td class="lefttd">08:00</td>
																<c:choose>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date8 eq '2' }"><td class="fulltd">已约</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date8 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date8 eq '-1' }"><td class="fulltd">逾期</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">09:00</td>
																<c:choose>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date9 eq '2' }"><td class="fulltd">已约</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date9 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date9 eq '-1' }"><td class="fulltd">逾期</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">10:00</td>
																<c:choose>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date10 eq '2' }"><td class="fulltd">已约</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date10 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date10 eq '-1' }"><td class="fulltd">逾期</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">11:00</td>
																<c:choose>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date11 eq '2' }"><td class="fulltd">已约</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date11 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date11 eq '-1' }"><td class="fulltd">逾期</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
														</table>
													</div>
													<div class="col-md-6">
														<h2 class="title" style="font-size:20px;text-align:center;"><span class="title__mark">下 午</span></h2>
														<table id="afternoon">
															<tr>
																<td class="lefttd">14:00</td>
																<c:choose>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date14 eq '2' }"><td class="fulltd">已约</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date14 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date14 eq '-1' }"><td class="fulltd">逾期</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">15:00</td>
																<c:choose>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date15 eq '2' }"><td class="fulltd">已约</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date15 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date15 eq '-1' }"><td class="fulltd">逾期</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">16:00</td>
																<c:choose>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date16 eq '2' }"><td class="fulltd">已约</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date16 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date16 eq '-1' }"><td class="fulltd">逾期</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">17:00</td>
																<c:choose>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date17 eq '2' }"><td class="fulltd">已约</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date17 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date17 eq '-1' }"><td class="fulltd">逾期</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">18:00</td>
																<c:choose>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date18 eq '2' }"><td class="fulltd">已约</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date18 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date18 eq '-1' }"><td class="fulltd">逾期</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">19:00</td>
																<c:choose>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date19 eq '2' }"><td class="fulltd">已约</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date19 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date19 eq '-1' }"><td class="fulltd">逾期</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
															<tr>
																<td class="lefttd">20:00</td>
																<c:choose>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date20 eq '1' }"><td class="fulltd">满员</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date20 eq '-1' }"><td class="fulltd">逾期</td></c:when>
																	<c:when test="${requestScope.practiceDrivingappointmentDate.date20 eq '2' }"><td class="fulltd">已约</td></c:when>
																	<c:otherwise><td class="appointmenttd">预约</td></c:otherwise>
																</c:choose>
															</tr>
														</table>
													</div>
												</div>
												</div>
											</blockquote>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
							<div class="profile__section">
								<h2 class="title">
									<span class="title__mark">留 言</span>
								</h2>
								<ul class="profile__review">
									<li class="profile__review-item">
										<blockquote class="quote quote_type_block">
											<div class="quote__header">
												<figure class="quote__fig">
													<img src="assets/images/reviewer/r1.jpg" alt="" />
												</figure>
												<div class="quote__author">梁 鹏 宇 </div>
												<div class="quote__rating"></div>
												<a href="" class="quote__answer"></a>
											</div>
											<div class="quote__body">哈哈哈哈哈哈范德萨发阿萨德发的三发多少范德萨发阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯顿发送到法撒旦是都</div>
										</blockquote>
									</li>
									<li class="profile__review-item">
										<blockquote class="quote quote_type_block">
											<div class="quote__header">
												<figure class="quote__fig">
													<img src="assets/images/reviewer/r2.jpg" alt="" />
												</figure>
												<div class="quote__author">陈 炳 冰</div>
												<div class="quote__rating"></div>
												<a href="" class="quote__answer"></a>
											</div>
											<div class="quote__body">哈哈哈哈哈哈范德萨发阿萨德发的三发多少范德萨发阿斯蒂芬阿斯蒂芬阿斯蒂芬阿斯顿发送到法撒旦是都</div>
										</blockquote>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="add-form" id="publishmessages">
				<div class="container">
					<h2 class="title">
						<span class="title__mark">发表 </span>留言</h2>
					<form action="#" class="form">
						<div class="form__row row">
							<div class="col-md-12">
								<textarea class="textarea textarea_fullwidth" placeholder="请 输 入 留 言 信 息 ..." id="zzz"></textarea>
							</div>
						</div>
						<div class="form__row row">
							<div class="col-md-12">
								<button class="btn btn_fullwidth" type="submit">
									<span class="btn__text">发 表</span>
								</button>
							</div>
						</div>
					</form>
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
		<script src="assets/scripts/jquery.scrollTo.js"></script>
		<script src="jquery/jquery.date.js"></script>
		<script>
			function getDateToString(date)
			{
				var year = date.getFullYear();
				var month = date.getMonth()+1;
				var day = date.getDate();
				if(month<10) month ="0"+month;
				if(day<10) day ="0"+day;
				return year+"-"+month+"-"+day;
			}
			$().ready(
				function()
				{
					$("#appointmentDate").val(getDateToString(new Date()));
					var fullerror=$("#fullerror").val();
					var insertpracticeDrivingresult=$("#insertpracticeDrivingresult").val();
					if(fullerror.length>0&&fullerror=="true")
					{
						alert("抱歉,您预约的时间学员已满,请更换日期!");
					}
					if(insertpracticeDrivingresult.length>0&&insertpracticeDrivingresult=="false")
					{
						alert("抱歉,预约失败,请重试或联系平台客服 150 9307 7197");
					}
				}
			);
			$("#publishmessagea").click(
				function()
				{
					$.scrollTo('#publishmessages',1500); 
				}
			);
			$("#appointmenttimea").click(
				function()
				{
					
					var appointmenttime=document.getElementById("appointmenttime");
					if(null==appointmenttime)
					$.scrollTo('#appointmentdate',1500);
					else
					$.scrollTo('#appointmenttime',1500);
				}
			);
			//日期插件
			$.date("#appointmentDate");
			$("#d-confirm").click(
				function()
				{
					 var coachId=$("#coachId").val();
					//根据所选日期查询预约时间信息
					$.ajax({
						url:"coachAction/find_practiceDriving_appointmentDate",
						type:"post",
						data:{coachId:coachId,appointmentDate:$("#appointmentDate").val()},
						dataType:"json",
						success:function(data)
						{
							$("#forenoon tr").remove();
							$("#afternoon tr").remove();
							var forenoonhtml="";
							if(data.date8=="-1")
							forenoonhtml+="<tr><td class='lefttd'>08:00</td><td class='fulltd'>逾期</td></tr>";
							else if(data.date8=="0")
							forenoonhtml+="<tr><td class='lefttd'>08:00</td><td class='appointmenttd' onclick='appointmenttime(this)'>预约</td></tr>";
							else if(data.date8=="1")
							forenoonhtml+="<tr><td class='lefttd'>08:00</td><td class='fulltd'>满员</td></tr>";
							else if(data.date8=="2")
							forenoonhtml+="<tr><td class='lefttd'>08:00</td><td class='fulltd'>已约</td></tr>";
							if(data.date9=="-1")
							forenoonhtml+="<tr><td class='lefttd'>09:00</td><td class='fulltd'>逾期</td></tr>";
							else if(data.date9=="0")
							forenoonhtml+="<tr><td class='lefttd'>09:00</td><td class='appointmenttd' onclick='appointmenttime(this)'>预约</td></tr>";
							else if(data.date9=="1")
							forenoonhtml+="<tr><td class='lefttd'>09:00</td><td class='fulltd'>满员</td></tr>";
							else if(data.date9=="2")
							forenoonhtml+="<tr><td class='lefttd'>09:00</td><td class='fulltd'>已约</td></tr>";
							if(data.date10=="-1")
							forenoonhtml+="<tr><td class='lefttd'>10:00</td><td class='fulltd'>逾期</td></tr>";
							else if(data.date10=="0")
							forenoonhtml+="<tr><td class='lefttd'>10:00</td><td class='appointmenttd' onclick='appointmenttime(this)'>预约</td></tr>";
							else if(data.date10=="1")
							forenoonhtml+="<tr><td class='lefttd'>10:00</td><td class='fulltd'>满员</td></tr>";
							else if(data.date10=="2")
							forenoonhtml+="<tr><td class='lefttd'>10:00</td><td class='fulltd'>已约</td></tr>";
							if(data.date11=="-1")
							forenoonhtml+="<tr><td class='lefttd'>11:00</td><td class='fulltd'>逾期</td></tr>";
							else if(data.date11=="0")
							forenoonhtml+="<tr><td class='lefttd'>11:00</td><td class='appointmenttd' onclick='appointmenttime(this)'>预约</td></tr>";
							else if(data.date11=="1")
							forenoonhtml+="<tr><td class='lefttd'>11:00</td><td class='fulltd'>满员</td></tr>";
							else if(data.date11=="2")
							forenoonhtml+="<tr><td class='lefttd'>11:00</td><td class='fulltd'>已约</td></tr>";
							$("#forenoon").html(forenoonhtml);
							var afternoonhtml="";
							if(data.date14=="-1")
							afternoonhtml+="<tr><td class='lefttd'>14:00</td><td class='fulltd'>逾期</td></tr>";
							else if(data.date14=="0")
							afternoonhtml+="<tr><td class='lefttd'>14:00</td><td class='appointmenttd' onclick='appointmenttime(this)'>预约</td></tr>";
							else if(data.date14=="1")
							afternoonhtml+="<tr><td class='lefttd'>14:00</td><td class='fulltd'>满员</td></tr>";
							else if(data.date14=="2")
							afternoonhtml+="<tr><td class='lefttd'>14:00</td><td class='fulltd'>已约</td></tr>";
							if(data.date15=="-1")
							afternoonhtml+="<tr><td class='lefttd'>15:00</td><td class='fulltd'>逾期</td></tr>";
							else if(data.date15=="0")
							afternoonhtml+="<tr><td class='lefttd'>15:00</td><td class='appointmenttd' onclick='appointmenttime(this)'>预约</td></tr>";
							else if(data.date15=="1")
							afternoonhtml+="<tr><td class='lefttd'>15:00</td><td class='fulltd'>满员</td></tr>";
							else if(data.date15=="2")
							afternoonhtml+="<tr><td class='lefttd'>15:00</td><td class='fulltd'>已约</td></tr>";
							if(data.date16=="-1")
							afternoonhtml+="<tr><td class='lefttd'>16:00</td><td class='fulltd'>逾期</td></tr>";
							else if(data.date16=="0")
							afternoonhtml+="<tr><td class='lefttd'>16:00</td><td class='appointmenttd' onclick='appointmenttime(this)'>预约</td></tr>";
							else if(data.date16=="1")
							afternoonhtml+="<tr><td class='lefttd'>16:00</td><td class='fulltd'>满员</td></tr>";
							else if(data.date16=="2")
							afternoonhtml+="<tr><td class='lefttd'>16:00</td><td class='fulltd'>已约</td></tr>";
							if(data.date17=="-1")
							afternoonhtml+="<tr><td class='lefttd'>17:00</td><td class='fulltd'>逾期</td></tr>";
							else if(data.date17=="0")
							afternoonhtml+="<tr><td class='lefttd'>17:00</td><td class='appointmenttd' onclick='appointmenttime(this)'>预约</td></tr>";
							else if(data.date17=="1")
							afternoonhtml+="<tr><td class='lefttd'>17:00</td><td class='fulltd'>满员</td></tr>";
							else if(data.date17=="2")
							afternoonhtml+="<tr><td class='lefttd'>17:00</td><td class='fulltd'>已约</td></tr>";
							if(data.date18=="-1")
							afternoonhtml+="<tr><td class='lefttd'>18:00</td><td class='fulltd'>逾期</td></tr>";
							else if(data.date18=="0")
							afternoonhtml+="<tr><td class='lefttd'>18:00</td><td class='appointmenttd' onclick='appointmenttime(this)'>预约</td></tr>";
							else if(data.date18=="1")
							afternoonhtml+="<tr><td class='lefttd'>18:00</td><td class='fulltd'>满员</td></tr>";
							else if(data.date18=="2")
							afternoonhtml+="<tr><td class='lefttd'>18:00</td><td class='fulltd'>已约</td></tr>";
							if(data.date19=="-1")
							afternoonhtml+="<tr><td class='lefttd'>19:00</td><td class='fulltd'>逾期</td></tr>";
							else if(data.date19=="0")
							afternoonhtml+="<tr><td class='lefttd'>19:00</td><td class='appointmenttd' onclick='appointmenttime(this)'>预约</td></tr>";
							else if(data.date19=="1")
							afternoonhtml+="<tr><td class='lefttd'>19:00</td><td class='fulltd'>满员</td></tr>";
							else if(data.date19=="2")
							afternoonhtml+="<tr><td class='lefttd'>19:00</td><td class='fulltd'>已约</td></tr>";
							if(data.date20=="-1")
							afternoonhtml+="<tr><td class='lefttd'>20:00</td><td class='fulltd'>逾期</td></tr>";
							else if(data.date20=="0")
							afternoonhtml+="<tr><td class='lefttd'>20:00</td><td class='appointmenttd' onclick='appointmenttime(this)'>预约</td></tr>";
							else if(data.date20=="1")
							afternoonhtml+="<tr><td class='lefttd'>20:00</td><td class='fulltd'>满员</td></tr>";
							else if(data.date20=="2")
							afternoonhtml+="<tr><td class='lefttd'>20:00</td><td class='fulltd'>已约</td></tr>";
							$("#afternoon").html(afternoonhtml);
						},
						error:function(XMLHttpRequest, textStatus, errorThrown)
						{
							alert(XMLHttpRequest.readyState);
							alert(XMLHttpRequest.status);
						}
					});
				}
			);
			function appointmenttime(data)
			{
				var appointmentDate=$("#appointmentDate").val();
				var time=$(data).prev().text();
				window.location.href="practiceDrivingAction/OneToOne_insert_practiceDriving?appointmentDate="+appointmentDate+" "+time+"&coachId="+$("#coachId").val();
			}
			$(".appointmenttd").click(
				function()
				{
					var appointmenttime=document.getElementById("appointmenttime");
					if(null==appointmenttime)
					{
						var time=$(this).prev().text();
						window.location.href="practiceDrivingAction/commoninsert_practiceDriving?appointmentDate="+time+"&coachId="+$("#coachId").val();
					}
					else
					{
						var appointmentDate=$("#appointmentDate").val();
						var time=$(this).prev().text();
						window.location.href="practiceDrivingAction/OneToOne_insert_practiceDriving?appointmentDate="+appointmentDate+" "+time+"&coachId="+$("#coachId").val();
					}
				}
			);
		</script>
	</body>
</html>

