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
    
    <title>驾校</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="alternate icon" type="image/png" href="assets/images/logo.png"><!--在title添加logo  -->
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
		<title>Driving School</title>
		<meta name="description" content="">
		<meta name="keywords" content="">
		<link href="assets/styles/app.min.css" rel="stylesheet">
		<style>
			#verificationCodes
			{
				display:none;
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
		<div class="tiser">
			<div id="tiserSlider" class="swiper-container">
				<div class="swiper-wrapper">
					<div style="background-image:url(assets/images/tiser/tiser1.jpg)" class="tiser__slide swiper-slide">
						<div class="tiser__body">
							<div class="container">
								<div class="row">
									<div class="tiser__body-inner">
										<div class="tiser__title-wrap">
											<h3 class="tiser__title">最   好   的    安   全   措   施</h3>
										</div>
										<p class="tiser__desc">开展多种形式的安全教育。驾驶中心和教练员提高对训练安全工作的认识,经常进行安全教育。驾驶中心每月进行一次安全教育,教练员每天进行一次安全教育。</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div style="background-image:url(assets/images/tiser/tiser1.jpg)" class="tiser__slide swiper-slide">
						<div class="tiser__body">
							<div class="container">
								<div class="row">
									<div class="tiser__body-inner">
										<div class="tiser__title-wrap">
											<h3 class="tiser__title">最   好   的   教   学   方   针</h3>
										</div>
										<p class="tiser__desc">实行安全教学、文明教学、目标责任、综合管理等多方面考核。严格执行教学计划和教学大纲,对阶段训练程序的实施以及授课时间等进行全面考核。实行一车一管的责任制度,认真总结教学经验。</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div style="background-image:url(assets/images/tiser/tiser1.jpg)" class="tiser__slide swiper-slide">
						<div class="tiser__body">
							<div class="container">
								<div class="row">
									<div class="tiser__body-inner">
										<div class="tiser__title-wrap">
											<h3 class="tiser__title">最   好   的   教   学   资   源</h3>
										</div>
										<p class="tiser__desc">现拥有东风、富康（含自动档）、桑塔纳、皮卡等各种车型教练车辆和一支技术精湛的教练员队伍。5000平方米的办公教学楼，设有500余人的无纸化交规考场，三个教室可供600人同时上理论课；7000余平方米的桩位训练场，可同时容纳近100台车桩训。</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tiser__pager">
				<div class="container">
					<div class="tiser__pager-item tiser__pager-item_active">
						<svg class="tiser__bus"><use xlink:href="assets/images/icon.svg#icon_bus"></use></svg>
						<div class="tiser__pager-name">驾 照 类 型 A</div>
						<div class="tiser__pager-desc">巴 士 驾 驶 学 习</div>
					</div>
					<div class="tiser__pager-item">
						<svg class="tiser__truck"><use xlink:href="assets/images/icon.svg#icon_truck"></use></svg>
						<div class="tiser__pager-name">驾 照 类 型 B</div>
						<div class="tiser__pager-desc">卡 车 驾 驶 学 习</div>
					</div>
					<div class="tiser__pager-item">
						<svg class="tiser__car"><use xlink:href="assets/images/icon.svg#icon_car2"></use></svg>
						<div class="tiser__pager-name">驾 照 类 型 C</div>
						<div class="tiser__pager-desc">汽 车 驾 驶 学 习</div>
					</div>
				</div>
			</div>
			<div class="tiser__find">
				<div class="container">
					<form action="usersAction/login_user" id="loginform" class="form col-md-4 col-md-offset- tiser__form" method="post">
						<h3 class="form__title">Login
							<span class="form__mark">
								<span class="form__mark-text">Driving School</span>
							</span>
						</h3>
						<p class="form__desc">把&nbsp;&nbsp;握&nbsp;&nbsp;方&nbsp;&nbsp;向&nbsp;&nbsp;的&nbsp;&nbsp;瞬&nbsp;&nbsp;间 ,&nbsp;&nbsp;有&nbsp;&nbsp;你&nbsp;&nbsp;有&nbsp;&nbsp;我&nbsp;&nbsp;...</p>
						<div class="form__row row">
							<div class="col-md-12">
								<div class="control-group control-group_fullwidth">
									<span class="control-remark control-group__item">
										<svg class="control-remark__icon"><use xlink:href="assets/images/icon.svg#icon_users"></use></svg>
									</span>
									<span class="inp">
										<span class="inp__box">
											<input class="inp__control" type="text" id="loginuserAccount" name="users.userAccount" placeholder="请输入你的账号..." />
										</span>
									</span>
								</div>
							</div>
						</div>
						<div class="form__row row">
							<div class="col-md-12">
								<div class="control-group control-group_fullwidth">
									<span class="control-remark control-group__item">
										<svg class="control-remark__icon"><use xlink:href="assets/images/icon.svg#icon_news"></use></svg>
									</span>
									<span class="inp">
										<span class="inp__box">
											<input class="inp__control" type="password" id="loginuserPassword" name="users.userPassword" placeholder="请输入你的密码..." />
										</span>
									</span>
								</div>
							</div>
						</div>
						<div class="form__row row">
							<div class="col-md-12">
								<input type="hidden" id="login_result" value="${requestScope.login_result}">
								<a class="btn btn_fullwidth" id="logina">登 录</a>
							</div>
						</div>
						<div class="form__row row">
							<div class="col-md-12">
								<a class="btn btn_fullwidth" id="registersa">注 册</a>
							</div>
						</div>
						<div class="form__row row">
							<div class="col-md-12">
								<div class="form__info">
									<p>精&nbsp;心&nbsp;施&nbsp;教&nbsp;,&nbsp;贴&nbsp;心&nbsp;服&nbsp;务&nbsp;</p><p>让&nbsp;您&nbsp;更&nbsp;好&nbsp;的&nbsp;体&nbsp;验&nbsp;到&nbsp;学&nbsp;车&nbsp;乐&nbsp;趣&nbsp;...</p>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="best">
			<div class="container">
				<div class="row">
					<div class="best__title col-md-12">
						<h2 class="title">
							<span class="title__mark">最 好 的 </span>特 点</h2>
					</div>
					<ul class="best__list">
						<li class="best__item col-md-4">
							<svg class="best__male"><use xlink:href="assets/images/icon.svg#icon_male"></use></svg>
							<h3 class="best__item-title">有 经 验 的 教 练</h3>
							<p class="best__item-desc">安全驾驶经历和相应车型驾驶经历应满足下列要求：申请小型汽车驾驶操作教练员资格的人员,具有5年以上安全驾驶经历,且有3年以上驾驶小型汽车的经历。</p>
							<a href="" class="best__item-more">观 看 教 练</a>
						</li>
						<li class="best__item col-md-4">
							<svg class="best__video"><use xlink:href="assets/images/icon.svg#icon_video"></use></svg>
							<h3 class="best__item-title">有 丰 富 的 视 频</h3>
							<p class="best__item-desc">具有驾照考试视频教程:路考(正考),路考(反考),考场项目(四项),倒车入库(车外视角),倒车入库(车内视角),场地五项,侧位停车,科目二考试场地,曲线行驶(车内视角)...</p>
							<a href="" class="best__item-more">观 看 视 频</a>
						</li>
						<li class="best__item col-md-4">
							<svg class="best__streamline"><use xlink:href="assets/images/icon.svg#icon_streamline"></use></svg>
							<h3 class="best__item-title">最 好 的 安 全 措 施</h3>
							<p class="best__item-desc">开展多种形式的安全教育,驾驶中心和教练员提高对训练安全工作的认识,经常进行安全教育。驾驶中心每月进行一次安全教育,教练员每天进行一次安全教育。</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="about">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="about__body">
							<div class="about__body-inner">
								<h2 class="title"><span class="title__mark">关 于 我 们 </span></h2>
								<p>陆路通学车网(http://192.168.100.16:8080/drivingSchool)是郑州市二七区AAA软件学院的一名学生利用互联网技术,专注于传统驾培行业运营方案的解决,并为用户提供专业的一站式驾培服务的互联网驾校。</p>
								<p>陆路通学车网以“营销+运营+管理+服务”的运营模式对其进行精细化高效管理,以“用户体验”为宗旨，努力为广大学员提供舒适愉悦的驾培体验!</p>
								<p>同时,易教练学车网还拥有通过率超高的教练团队,教学场地遍及郑州全市范围,每一位学员都能享受到专业学车顾问的跟踪服务,为您学车过程排忧解难。易教练学车网的建立,对学员而言是巨大的利好—学车体验更好、时间更短、成本更低、技能更强；对社会也是巨大的利好—解决学车难、学车贵、学车不方便等问题。</p>
								<a class="btn about__btn" href="drivingLicenseCostAction/find_drivingLicenseCost">
									<span class="btn__text">预  约  报  名</span>
								</a>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="discount">
							<h2 class="title discount__title">
								<span class="title__mark">SAVE $59 </span>ORDER NOW!</h2>
							<div class="discount__body">
								<p class="discount__desc">Only in November! Book learning and receive a&nbsp;discount&nbsp;of&nbsp;$&nbsp;59</p>
								<div class="countdown discount__countdown">
									<div id="countdown" class="countdown__timer">
										<span id="countdownLayout">
											<span class="countdown__item">
												<span>{hn}</span>
											</span>
											<span class="countdown__item">
												<span>{mn}</span>
											</span>
											<span class="countdown__item">
												<span>{sn}</span>
											</span>
										</span>
									</div>
									<div class="countdown__section">
										<div class="countdown__item-wrap">
											<input type="text" data-min="0" data-max="24" value="{hn}" data-width="52" data-bgColor="#000e1b" data-fgColor="#ffea00"
												data-thickness=".08" class="countdown__item-h" />
										</div>
										<span class="countdown__period">Hours</span>
									</div>
									<div class="countdown__section">
										<div class="countdown__item-wrap">
											<input type="text" data-min="0" data-max="60" value="{mn}" data-width="52" data-bgColor="#000e1b" data-fgColor="#ffea00"
												data-thickness=".08" class="countdown__item-m" />
										</div>
										<span class="countdown__period">Minutes</span>
									</div>
									<div class="countdown__section">
										<div class="countdown__item-wrap">
											<input type="text" data-min="0" data-max="60" value="0" data-width="52" data-bgColor="#000e1b" data-fgColor="#ffea00"
												data-thickness=".08" class="countdown__item-s" />
										</div>
										<span class="countdown__period">seconds</span>
									</div>
								</div>
								<a class="btn about__btn" href="drivingLicenseCostAction/find_drivingLicenseCost">
									<span class="btn__text">预 约  报  名</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="feature">
			<div class="feature__list">
				<div class="container">
					<div class="feature__row-list row">
						<div class="feature__item col-md-3">
							<div class="feature__icon">
								<svg class="feature__price"><use xlink:href="assets/images/icon.svg#icon_price"></use></svg>
							</div>
							<h3 class="feature__title">最好的服务</h3>
							<p class="feature__desc">为学员提供服务时,做到礼貌,谦和,热心,接待学员时,面带微笑,目光专注,来有迎声,去有送声。与学员会话时,亲切,诚恳,有问必答。</p>
						</div>
						<div class="feature__item col-md-3">
							<div class="feature__icon">
								<svg class="feature__timer"><use xlink:href="assets/images/icon.svg#icon_timer"></use></svg>
							</div>
							<h3 class="feature__title">最佳时间培训</h3>
							<p class="feature__desc">您可以在工作日下班后或周末选择您的团队!</p>
						</div>
						<div class="feature__item col-md-3">
							<div class="feature__icon">
								<svg class="feature__people"><use xlink:href="assets/images/icon.svg#icon_people"></use></svg>
							</div>
							<h3 class="feature__title">我们训练所有年龄</h3>
							<p class="feature__desc">只要您符合法定驾车年龄均可以报名!</p>
						</div>
						<div class="feature__item col-md-3">
							<div class="feature__icon">
								<svg class="feature__target"><use xlink:href="assets/images/icon.svg#icon_target"></use></svg>
							</div>
							<h3 class="feature__title">个人的方法</h3>
							<p class="feature__desc">对于每个人,我们都有自己的方法。</p>
						</div>
					</div>
				</div>
			</div>
			<div class="feature__list">
				<div class="container">
					<div class="feature__row-list row">
						<div class="feature__item col-md-3">
							<div class="feature__icon">
								<svg class="feature__teacher"><use xlink:href="assets/images/icon.svg#icon_teacher"></use></svg>
							</div>
							<h3 class="feature__title">平静的教练</h3>
							<p class="feature__desc">对你的实际培训将会很开心。</p>
						</div>
						<div class="feature__item col-md-3">
							<div class="feature__icon">
								<svg class="feature__stop"><use xlink:href="assets/images/icon.svg#icon_stop"></use></svg>
							</div>
							<h3 class="feature__title">重复的踏板</h3>
							<p class="feature__desc">配备有重复踏板的汽车。仪器总是为你提供保险。</p>
						</div>
						<div class="feature__item col-md-3">
							<div class="feature__icon">
								<svg class="feature__docs"><use xlink:href="assets/images/icon.svg#icon_docs"></use></svg>
							</div>
							<h3 class="feature__title">完整的文档</h3>
							<p class="feature__desc">完整的文档祝您考试通过!</p>
						</div>
						<div class="feature__item col-md-3">
							<div class="feature__icon">
								<svg class="feature__chair"><use xlink:href="assets/images/icon.svg#icon_chair"></use></svg>
							</div>
							<h3 class="feature__title">最好的课堂</h3>
							<p class="feature__desc">设备齐全的教室,一切都是按照规定和法律来做的</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="numbers">
			<div class="container">
				<div class="row">
					<ul class="numbers__list">
						<li class="numbers__list-item col-md-3">
							<h3 class="numbers__value">10 000+</h3>
							<p class="numbers__desc">毕业生的肯定</p>
						</li>
						<li class="numbers__list-item col-md-3">
							<h3 class="numbers__value">7</h3>
							<p class="numbers__desc">发展的年龄</p>
						</li>
						<li class="numbers__list-item col-md-3">
							<h3 class="numbers__value">24</h3>
							<p class="numbers__desc">工作时间</p>
						</li>
						<li class="numbers__list-item col-md-3">
							<h3 class="numbers__value">32</h3>
							<p class="numbers__desc">教师的数量</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="price price_index">
			<div class="container">
				<h2 class="title price__title">
					<span class="title__mark">报 名 费 用</span>
				</h2>
				<p class="desc">微笑是我们的语言,文明是我们的信念,教学是我们的责任,成功是我们的心愿!</p>
				<c:choose>
						<c:when test="${empty requestScope.drivingLicenseCosts }">
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
						</c:when>
						<c:otherwise>
							<div class="price-table">
								<div class="price-table__list row">
									<c:forEach items="${requestScope.drivingLicenseCosts }" var="d">
										<c:choose>
											<c:when test="${d.ct.classTypesName eq '全包班' }">
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
														<a class="btn price-table__btn" href="drivingLicenseCostAction/find_drivingLicenseCost">
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
														<a class="btn price-table__btn" href="drivingLicenseCostAction/find_drivingLicenseCost">
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
														<a class="btn price-table__btn" href="drivingLicenseCostAction/find_drivingLicenseCost">
															<span class="btn__text">预 约 报 名</span>
														</a>
													</div>
												</div>
											</c:when>
										</c:choose>
									</c:forEach>
								</div>
							</div>
						</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div class="review">
			<div class="review__container container">
				<div class="row">
					<h2 class="title review__title">
						<span class="title__mark">教 练 名 言</span>
					</h2>
					<div class="review__pager">
						<div class="review__pager-item">
							<img src="assets/images/reviewer/r1.jpg" alt="Andry Lincoln" />
						</div>
						<div class="review__pager-item">
							<img src="assets/images/reviewer/r2.jpg" alt="Andry Lincoln" />
						</div>
						<div class="review__pager-item">
							<img src="assets/images/reviewer/r3.jpg" alt="Andry Lincoln" />
						</div>
						<div class="review__pager-item">
							<img src="assets/images/reviewer/r4.jpg" alt="Andry Lincoln" />
						</div>
						<div class="review__pager-item">
							<img src="assets/images/reviewer/r1.jpg" alt="Andry Lincoln" />
						</div>
					</div>
					<!-- errorerror -->
					<div id="reviewSlider" class="review__list swiper-container">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="review__list-item col-md-12 col-lg-10 col-lg-offset-1">
									<blockquote class="review__block">
										<div class="review__block-body">
											<div class="review__block-text">
												<p>驾校的领航者，为您保驾护航。</p>
											</div>
											<footer class="review__block-footer">
												<div class="review__author">赵 教 练</div>
											</footer>
											<div class="review__styler">
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
											</div>
										</div>
									</blockquote>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="review__list-item col-md-12 col-lg-10 col-lg-offset-1">
									<blockquote class="review__block">
										<div class="review__block-body">
											<div class="review__block-text">
												<p>用心服务，优质教学，是您最好的选择。</p>
											</div>
											<footer class="review__block-footer">
												<div class="review__author">陈 教 练</div>
											</footer>
											<div class="review__styler">
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
											</div>
										</div>
									</blockquote>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="review__list-item col-md-12 col-lg-10 col-lg-offset-1">
									<blockquote class="review__block">
										<div class="review__block-body">
											<div class="review__block-text">
												<p>搭建驾校中的航母，驶向安全的彼岸。</p>
											</div>
											<footer class="review__block-footer">
												<div class="review__author">梁 教 练</div>
											</footer>
											<div class="review__styler">
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
											</div>
										</div>
									</blockquote>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="review__list-item col-md-12 col-lg-10 col-lg-offset-1">
									<blockquote class="review__block">
										<div class="review__block-body">
											<div class="review__block-text">
												<p>服务让您满意，技术保证安全。</p>
											</div>
											<footer class="review__block-footer">
												<div class="review__author">范 教 练</div>
											</footer>
											<div class="review__styler">
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
											</div>
										</div>
									</blockquote>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="review__list-item col-md-12 col-lg-10 col-lg-offset-1">
									<blockquote class="review__block">
										<div class="review__block-body">
											<div class="review__block-text">
												<p>好的学校，好的教练，才能成就一名好的司机。</p>
											</div>
											<footer class="review__block-footer">
												<div class="review__author">程 教 练</div>
											</footer>
											<div class="review__styler">
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
												<svg class="review__styler-icon"><use xlink:href="assets/images/icon.svg#icon_star"></use></svg>
											</div>
										</div>
									</blockquote>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="course course_index">
			<div class="container">
				<h2 class="title title_theme_white">
					<span class="title__mark">其 他 业 务</span>
				</h2>
				<p class="desc course__desc">搭建驾校中的航母，驶向安全的彼岸。</p>
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
												<a class="btn" href="drivingLicenseCostAction/find_drivingLicenseCost">
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
		<div class="gallery">
			<div class="gallery__container container">
				<h2 class="title gallery__title">
					<span class="title__mark">驾 校 </span> 风 采</h2>
				<p class="desc">精 湛 技 术 保 障 平 安 出 行 。</p>
			<div
					class="filter gallery__filter">
					<span data-filter=".gallery__list-item" class="filter__item filter__item_active">
						<span class="filter__item-text">全 部</span>
					</span>
					<span data-filter=".gallery__list-item_cars" class="filter__item">
						<span class="filter__item-text">汽 车</span>
					</span>
					<span data-filter=".gallery__list-item_autodrom" class="filter__item">
						<span class="filter__item-text">练 习 场 地</span>
					</span>
					<span data-filter=".gallery__list-item_class" class="filter__item">
						<span class="filter__item-text">教 室</span>
					</span>
			</div>
			<div class="gallery__list row">
				<div class="gallery__list-item gallery__list-item_class col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/classroom1.jpeg" class="gallery__fig-link">
							<img src="assets/photo/classroom1.jpeg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_class col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/classroom1.jpeg" class="gallery__fig-link">
							<img src="assets/photo/classroom1.jpeg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_class col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/classroom2.jpeg" class="gallery__fig-link">
							<img src="assets/photo/classroom2.jpeg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_class col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/classroom3.jpeg" class="gallery__fig-link">
							<img src="assets/photo/classroom3.jpeg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_class col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/classroom4.jpeg" class="gallery__fig-link">
							<img src="assets/photo/classroom4.jpeg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_class col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/classroom5.jpeg" class="gallery__fig-link">
							<img src="assets/photo/classroom5.jpeg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_class col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/classroom6.jpeg" class="gallery__fig-link">
							<img src="assets/photo/classroom6.jpeg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_class col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/classroom7.jpeg" class="gallery__fig-link">
							<img src="assets/photo/classroom7.jpeg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_cars col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/cars8.jpeg" class="gallery__fig-link">
							<img src="assets/photo/cars8.jpeg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_cars col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/cars1.jpg" class="gallery__fig-link">
							<img src="assets/photo/cars1.jpg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_cars col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/cars2.jpg" class="gallery__fig-link">
							<img src="assets/photo/cars2.jpg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_cars col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/cars3.jpg" class="gallery__fig-link">
							<img src="assets/photo/cars3.jpg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_cars col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/cars4.jpg" class="gallery__fig-link">
							<img src="assets/photo/cars4.jpg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_cars col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/cars7.jpg" class="gallery__fig-link">
							<img src="assets/photo/cars7.jpg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_autodrom col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/Autodrom1.jpg" class="gallery__fig-link">
							<img src="assets/photo/Autodrom1.jpg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_autodrom col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/Autodrom2.jpg" class="gallery__fig-link">
							<img src="assets/photo/Autodrom2.jpg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_autodrom col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/Autodrom3.jpg" class="gallery__fig-link">
							<img src="assets/photo/Autodrom3.jpg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_autodrom col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/Autodrom4.jpg" class="gallery__fig-link">
							<img src="assets/photo/Autodrom4.jpg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_autodrom col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/Autodrom5.jpg" class="gallery__fig-link">
							<img src="assets/photo/Autodrom5.jpg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_autodrom col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/Autodrom6.jpg" class="gallery__fig-link">
							<img src="assets/photo/Autodrom6.jpg" alt="" />
						</a>
					</figure>
				</div>
				<div class="gallery__list-item gallery__list-item_autodrom col-xs-6 col-md-3">
					<figure class="gallery__fig">
						<a href="assets/photo/Autodrom7.jpg" class="gallery__fig-link">
							<img src="assets/photo/Autodrom7.jpg" alt="" />
						</a>
					</figure>
				</div>
			</div>
		</div>
		</div>
		<div class="video">
			<div class="container">
				<div class="video__body">
					<a href="" class="video__body-inner">
						<span class="video__play">
							<svg class="video__play-icon"><use xlink:href="assets/images/icon.svg#icon_play"></use></svg>
						</span>
						<h2 class="title video__title">
							<span class="title__mark">观 看 </span>视 频 演 示</h2>
						<p class="desc video__desc">车 好 不 如 驾 的 好 , 校 好 才 是 真 的 好 。</p>
					</a>
				</div>
			</div>
		</div>
		<div class="popup"></div>
		<div class="instructor">
			<div class="container">
				<h2 class="title">
					<span class="title__mark">教 练 指 导</span>
				</h2>
				<p class="desc">安 全 驾 驶 , 从 这 里 开 始 。</p>
				<div
					class="instructor__list">
					<div id="instructorSlider" class="swiper-container">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="instructor__list-item row">
									<figure class="instructor__fig col-md-5 col-lg-6">
										<img src="assets/images/reviewer/b1.jpg" alt="" />
									</figure>
									<div class="instructor__body col-md-7 col-lg-6">
										<h4 class="instructor__name">赵 教 练</h4>
										<div class="instructor__type">理 论 指 导</div>
										<blockquote class="instructor__quote">
											<div class="instructor__quote-inner">当你已经学车一段时间时,请时刻提醒自己为了生命安全一定要认真动脑学习而不要只知道说学车好难,师傅好凶,考官好坏,因为你和他人都一样是人,且只有一条宝贵的生命!</div>
										</blockquote>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="instructor__list-item row">
									<figure class="instructor__fig col-md-5 col-lg-6">
										<img src="assets/images/reviewer/b1.jpg" alt="" />
									</figure>
									<div class="instructor__body col-md-7 col-lg-6">
										<h4 class="instructor__name">范 教 练</h4>
										<div class="instructor__type">理 论 指 导</div>
										<blockquote class="instructor__quote">
											<div class="instructor__quote-inner">当你给了钱开始学车时,请一定拜托教练为了你和家人及路人的安全,请他对你严格要求!</div>
										</blockquote>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="instructor__list-item row">
									<figure class="instructor__fig col-md-5 col-lg-6">
										<img src="assets/images/reviewer/b1.jpg" alt="" />
									</figure>
									<div class="instructor__body col-md-7 col-lg-6">
										<h4 class="instructor__name">梁 教 练</h4>
										<div class="instructor__type">理 论 指 导</div>
										<blockquote class="instructor__quote">
											<div class="instructor__quote-inner">当你学车过程中因为开的差而被教育时,请体谅并感谢你的教练,因为他是为了你和你的家人的幸福才会说你!</div>
										</blockquote>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="instructor__list-item row">
									<figure class="instructor__fig col-md-5 col-lg-6">
										<img src="assets/images/reviewer/b1.jpg" alt="" />
									</figure>
									<div class="instructor__body col-md-7 col-lg-6">
										<h4 class="instructor__name">陈 教 练</h4>
										<div class="instructor__type">理 论 指 导</div>
										<blockquote class="instructor__quote">
											<div class="instructor__quote-inner">当你学有所成拿到驾照上路时,请时刻记住安全第一,生命珍贵!祝你成为一个合格的驾驶员。</div>
										</blockquote>
									</div>
								</div>
							</div>
						</div>
					</div>
			</div>
			<div class="col-md-6 col-md-offset-5 col-lg-offset-6">
				<div class="instructor__pager">
					<div class="instructor__pager-item">
						<img src="assets/images/reviewer/r1.jpg" alt="Ivanov Alexey" />
					</div>
					<div class="instructor__pager-item">
						<img src="assets/images/reviewer/r2.jpg" alt="Ivanov Alexey" />
					</div>
					<div class="instructor__pager-item">
						<img src="assets/images/reviewer/r3.jpg" alt="Ivanov Alexey" />
					</div>
					<div class="instructor__pager-item">
						<img src="assets/images/reviewer/r4.jpg" alt="Ivanov Alexey" />
					</div>
				</div>
			</div>
		</div>
		</div>
		<div id="registers" class="contact">
			<div id="contactMap" class="contact__map"></div>
			<div class="contact__inner">
				<form action="usersAction/register_user" class="form contact__form" id="registerform" method="post">
					<div class="contact__head">
						<div class="form__row row">
							<div class="col-md-6">
								<div class="contact__adr">
									<div class="contact__head-icon">
										<svg class="contact__icon-pin"><use xlink:href="assets/images/icon.svg#icon_pin"></use></svg>
									</div>河南省-郑州市-二七区</div>
							</div>
							<div class="col-md-6">
								<div class="contact__phone">
									<div class="contact__head-icon">
										<svg class="contact__icon-phone"><use xlink:href="assets/images/icon.svg#icon_phone"></use></svg>
									</div>+ 150 9307 7197</div>
							</div>
						</div>
					</div>
					<div class="form__row row">
							<div class="col-md-12">
								<div class="control-group control-group_fullwidth">
									<span class="control-remark control-group__item">
										<svg class="control-remark__icon"><use xlink:href="assets/images/icon.svg#icon_users"></use></svg>
									</span>
									<span class="inp">
										<span class="inp__box">
											<input class="inp__control" type="text" id="userAccount" name="users.userAccount" placeholder="请输入注册账号..." />
										</span>
									</span>
								</div>
							</div>
					</div>
					<div class="form__row row">
							<div class="col-md-12">
								<div class="control-group control-group_fullwidth">
									<span class="control-remark control-group__item">
										<svg class="control-remark__icon"><use xlink:href="assets/images/icon.svg#icon_news"></use></svg>
									</span>
									<span class="inp">
										<span class="inp__box">
											<input class="inp__control" type="password" id="userPassword" name="users.userPassword" placeholder="请输入注册密码..." />
										</span>
									</span>
								</div>
							</div>
					</div>
					<div class="form__row row">
							<div class="col-md-12">
								<div class="control-group control-group_fullwidth">
									<span class="control-remark control-group__item">
										<svg class="control-remark__icon"><use xlink:href="assets/images/icon.svg#icon_news"></use></svg>
									</span>
									<span class="inp">
										<span class="inp__box">
											<input class="inp__control" type="password" id="enterPassword" name="enterPassword" placeholder="请输入确认密码..." />
										</span>
									</span>
								</div>
							</div>
					</div>
					<div class="form__row row">
							<div class="col-md-12">
								<div class="control-group control-group_fullwidth">
									<span class="control-remark control-group__item">
										<svg class="control-remark__icon"><use xlink:href="assets/images/icon.svg#icon_mail"></use></svg>
									</span>
									<span class="inp">
										<span class="inp__box">
											<input class="inp__control" type="email" id="bindEmail" name="users.bindEmail" placeholder="请输入绑定邮箱..." />
										</span>
									</span>
								</div>
							</div>
					</div>
					<div class="form__row row" id="verificationCodes">
							<div class="col-md-12">
								<div class="control-group control-group_fullwidth">
									<span class="control-remark control-group__item">
										<svg class="control-remark__icon"><use xlink:href="assets/images/icon.svg#icon_news"></use></svg>
									</span>
									<span class="inp">
										<span class="inp__box">
											<input class="inp__control" type="text" id="verificationCode" name="verificationCode" placeholder="请输入邮箱验证码..." />
										</span>
									</span>
								</div>
							</div>
					</div>
					<div class="form__row row">
						<div class="col-md-12">
							<input class="btn btn_fullwidth" type="button" id="registerbutton" value="注 册">
							<input type="hidden" value="${requestScope.register_result }" id="register_result">
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="faq">
			<div class="container">
				<h2 class="title">
					<span class="title__mark">常 见 问 题</span>
				</h2>
				<ul class="faq__list">
					<li class="faq__item faq__item_active row">
						<div class="col-md-7">
							<div class="faq__question">路 考 的 预 约 时 间 是 多 长 !</div>
							<div class="faq__answer">驾驶证考试须知的，科目一和科目二间隔时间，在科目一及格核发驾驶技能准考证明满20日后，预约科目二考试，报考另外10种准驾车型的，在科目一及格核发驾驶技能准考证明满10日后，预约科目二考试。在科目一及格核发驾驶技能准考证明满60日后，预约科目三开始考试，这是考A1,A2的时间，如果是B1,B2的话，是在科目一及格后40天，预科考试3开始考试。考试内容科目一：机动车驾驶人考试内容分为道路交通安全法律、法规和相关知识考试科目。科目二：场地驾驶技能考试科目，科目三：道路驾驶技能和安全文明驾驶常识考试科目。</div>
						</div>
					</li>
					<li class="faq__item row">
						<div class="col-md-7">
							<div class="faq__question">我 今 年 16 岁 能 在 郑 州 拿 到 驾 照 吗 ?</div>
							<div class="faq__answer">根据《机动车驾驶证申领和使用规定》十一条申请机动车驾驶证的人的年龄条件要求如下:
								<p>小汽车：C1、C2、C5驾照</p>
								<p>申请年龄：18~70周岁</p>
								<p>大型货车、重型、中型载货汽车：B2驾照</p>
								<p>申请年龄：20~50周岁</p>
								<p>牵引车：A2驾照</p>
								<p>申请年龄：24~50周岁，并且需要B1或B2三年以上驾龄</p>
							</div>
						</div>
					</li>
					<li class="faq__item row">
						<div class="col-md-7">
							<div class="faq__question">考 驾 照 前 需 要 准 备 什 么 ?</div>
							<div class="faq__answer">只要年龄在18岁以上，70岁以下，四肢健全、身心健康即可申领小型汽车驾驶执照，也即大家常说的C1证。详细地讲，申领驾驶证的身体条件对年龄、身高、视力、辨色力、听力、上肢、下肢、躯干、颈部都有相应规定。大家可以从所在地车管所网站下载《机动车驾驶人身体条件证明》表格，到所在地县级或者部队团级以上医疗机构参加体检，体检合格后即可到驾校报名考试，报名时还需要准备近期白底一寸免冠照片4张及相应电子版照片，以便采集人像信息。对于非居住地户籍的朋友来说，需要到暂住地辖区派出所开暂住证明，之后才可以办理驾驶证申领业务。</div>
						</div>
					</li>
					<li class="faq__item row">
						<div class="col-md-7">
							<div class="faq__question">考 试 流 程 是 什 么 ?</div>
							<div class="faq__answer">
<p>科目一：主要考核道路交通安全法律法规、交通信号、通行规则等最基本的知识。考试时间45分钟，试卷由判断题和单选题构成，共100道，满分100分，90分合格。</p>
<p>科目二(场考)：小型汽车场地考试共5项，倒车入库、坡道起步和定点停车、侧方停车、曲线行驶、直角转弯。</p>
<p>科目三(路考)：道路驾驶技能考试。基本项目有16项，包括上车准备、起步、直线行驶、变更车道、通过路口、靠边停车、通过人行横道线、通过学校区域、通过公共汽车站、会车、超车、掉头、夜间行驶、加减挡位操作、路口左转弯、路口右转弯。小型汽车考试里程不少于3公里。</p>
<p>科目四：安全文明驾驶常识考试。试卷由50道题目组成，题目以案例、图片、动画等形式为主，题型为判断题、单项选择题和多项选择题，满分100分，90分合格。</p>
<p>科目四：考试内容：安全文明驾驶常识考试要内容包括，安全文明驾驶操作要求、恶劣气象和复杂道路条件下的安全驾驶知识、爆胎等紧急情况下的临危处置方法以及发生交通事故后的处置知识等内容。考试时间：30分钟。考试题型：考试试卷由50道题目组成，题目以案例、图片、动画等形式为主，题型为判断题、单项选择题和多项选择题。 考试分值：满分100分，90分合格。</p></div>
						</div>
					</li>
					<li class="faq__item row">
						<div class="col-md-7">
							<div class="faq__question">科 目 二 考 试 5 次 没 通 过 怎 么 办 ?</div>
							<div class="faq__answer">
<p>任意科目，每次预约考试，都有：正常考试机会一次，当场补考机会一次。如果连续预约考试五次(连补考的机会算，共考试10次)，均无法通过的话，之前已通过的科目成绩作废，重新从科目一开始学习并考核。 您注意，如果实行上边这条规定的地区，已经把考试期限从两年有效改为三年有效。如果您被教练催交不该交的钱，可以去投诉交警大队他。因为报名费的部分不用重复交的，只需要补交考试的相关费用就行!</p>
<p>按照有关规定，在驾驶技能准考证明有效期3年内，科目二和科目三只有5次考试机会，一旦其中一项5次考试机会都没及格，学员就必须从头开始交费报名，费用与新学员一样。</p>
<p>驾考科目二、三只能各考五次，未过就要重新交学车费?没错!根据公安部123号令、124号令，在科目二和科目三道路驾驶技能考试第五次预约考试仍不合格的，已经考试合格的其他科目成绩作废，若想拿驾照，只能重新报名交学费。</p></div>
						</div>
					</li>
				</ul>
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
		<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyBRrnhl1mCfuWpxL4Ame0cyS8fcV7xoyLk"></script>
		<script src="assets/scripts/jquery.formstyler.js"></script>
		<script src="assets/scripts/jquery.countdown.js"></script>
		<script src="assets/scripts/jquery.magnific-popup.min.js"></script>
		<script src="assets/scripts/swiper.min.js"></script>
		<script src="assets/scripts/jquery.knob.js"></script>
		<script src="assets/scripts/rome.min.js"></script>
		<script src="assets/scripts/isotope.pkgd.min.js"></script>
		<script src="assets/scripts/app.min.js"></script>
		<script src="assets/scripts/jquery.scrollTo.js"></script>
		<script>
				var verificationcode="";//验证码
				var repetition=true;//账号是否重复
				function checkemail()
				{
					var reg=/^([a-zA-Z0-9]+[_|-|.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|-|.]?)*[a-zA-Z0-9]+.[a-zA-Z]{2,3}$/gi;
					var bindEmail=$("#bindEmail").val();
					if(reg.test(bindEmail))
					return true;
					else
					return false;
				}
				$("#bindEmail").blur(//获取验证码
				function()
				{
					var reg=/^([a-zA-Z0-9]+[_|-|.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|-|.]?)*[a-zA-Z0-9]+.[a-zA-Z]{2,3}$/gi;
					var bindEmail=$("#bindEmail").val();
					if(reg.test(bindEmail))
					{
						$.ajax({
							url:"usersAction/CheckEmail",
							type:"post",
							data:{bindEmail:bindEmail},
							dataType:"json",
							success:function(data)
							{
								verificationcode=data;
								$("#verificationCodes").css("display","block");
							},
							error:function(XMLHttpRequest, textStatus, errorThrown)
							{
								alert(XMLHttpRequest.readyState);
								alert(XMLHttpRequest.status);
							}
						});
					}
					else
					{
						alert("邮箱输入错误,请重新输入!");
					}
				});
				function checkuserAccountlength()
				{
					var userAccount=$("#userAccount").val();
					if(userAccount.length>5)
					return true;
					else
					return false;
				}
				function checkuserpasswordlenth()//校验密码长度是否大于6
				{
					var password=$("#userPassword").val();
					if(password.length>5)
					return true;
					else
					return false;
				}
				function checkverificationCode()//检验验证码是否正确
				{
					var code=$("#verificationCode").val();
					if(verificationcode==code)
					return true;
					else
					return false;
				}
				function checkenterpassword()//校验两次密码输入是否一致
				{
					var password=$("#userPassword").val();
					var enterpassword=$("#enterPassword").val();
					if(password==enterpassword)
					return true;
					else
					return false;
				}
				function checkuserAccountrepetition()//校验账号是否重复
				{
					var userAccount=$("#userAccount").val();
					 $.ajax({
						 url:"usersAction/CheckuserAccountrepetition",
						 type:"post",
						 data:{userAccount:userAccount},
						 dataType:"json",
						 success:function(data)
						 {
							 repetition=data;
							 if(repetition)
							 {
								 alert("抱歉,您输入的账号已经被注册,请重新输入!");
							 }
						 },
						 error:function(xhr,msg)
						 {
							 alert(msg);
						 }
					 });
				}
				$("#userAccount").blur(function(){
					if(!checkuserAccountlength())
					alert("账号长度不能小于六位,请重新输入!");
					else
					{
						checkuserAccountrepetition();
					}
				});
				$("#userPassword").blur(function(){
					if(!checkuserpasswordlenth())
					alert("密码长度不能小于六位,请重新输入!");						
				});
				$("#enterPassword").blur(function(){//焦点离开确定密码框校验两次密码是否一致
					if(!checkenterpassword())
					alert("两次密码输入不一致,请重新输入!");
				});
				$("#verificationCode").blur(function(){//焦点离开校验验证码是否正确
					if(!checkverificationCode())
					alert("邮箱验证码输入不正确,请重新输入!");
				});
				$("#registerbutton").click(
					function()
					{
						if(checkuserpasswordlenth())
						{
							if(!repetition)
							{
								if(checkenterpassword())
								{
									if(checkemail())
									{
										if(checkverificationCode())
										{
											$("#registerform").submit();
										}
										else
										alert("邮箱验证码输入不正确,请重新输入!");
									}
									else
									alert("邮箱格式不正确,请重新填写!");
								}
								else
								alert("两次密码输入不一致,请重新输入!");
							}
							else
							alert("抱歉,您输入的账号已经被注册,请重新输入!");
						}
						else
						alert("账号长度不能小于六位,请重新输入!");
					}
				);
				$().ready(function()
				{
					
					var register_result=$("#register_result").val();
					if(null!=register_result&&"false"==register_result)
					{
						alert("抱歉,注册失败,请重新注册!");
					}
					var login_result=$("#login_result").val();
					if(null!=login_result&&"false"==login_result)
					{
						alert("账号或密码输入错误,请重新输入!");
					}
				});
				$("#registersa").click(
					function()
					{
						$.scrollTo('#registers',1500); 
					}
				);
				function checkloginuserAccount()//检查登录账号
				{
					var loginuserAccount=$("#loginuserAccount").val();
					if(loginuserAccount.length>5)
					return true;
					else
					return false;
				}
				function checkloginuserPassword()
				{
					var userPassword=$("#loginuserPassword").val();
					if(userPassword.length>0)
					return true;
					else
					return false;
				}
				$("#logina").click(
					function()
					{
						if(checkloginuserAccount())
						{
							if(checkloginuserPassword())
							{
								$("#loginform").submit();
							}
							else
							{
								alert("密码不能为空,请重新输入!");
							}
						}
						else
						{
							alert("账号为空或者账号格式不正确!");
						}
					}
				);
		</script>
	</body>
</html>
