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
		<div class="content" style="padding:0px">
			<div class="add-form">
				<div class="container">
					<h2 class="title"><span class="title__mark">驾 考</span> 信 息:</h2>
					<c:choose>
						<c:when test="${requestScope.studentApply.stateId eq '554a242a-b6a1-491f-bf95-2f3b9bd4cef2' }">
							<form action="studentApplyAction/student_Alipay" method="post" id="studentApplyform" class="form" target="_blank">
								<div class="form__row row">
									<div class="form__row-mobile col-md-6">
										<div class="control-group control-group_fullwidth">
											<span class="control-remark control-group__item">n</span>
											<span class="inp">
												<span class="inp__box">
													<input class="inp__control" type="text" id="studentName" value="${requestScope.studentApply.studentName }" name="studentapply.studentName" placeholder="请输入您的姓名..." />
													<input type="hidden" id="sex" value="${requestScope.studentApply.sex }" name="studentapply.sex">
												</span>
											</span>
										</div>
									</div>
									<div class="col-md-6">
										<div class="control-group control-group_fullwidth">
											<span class="control-remark control-group__item">i</span>
											<span class="inp">
												<span class="inp__box">
													<input class="inp__control" type="text" id="identityCard" value="${requestScope.studentApply.identityCard }" name="studentapply.identityCard" placeholder="请输入您的身份证号..." />
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
													<input class="inp__control" type="text" id="phone" name="studentapply.phone" value="${requestScope.studentApply.phone }" placeholder="请输入您的手机号..."/>
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
													<c:forEach items="${requestScope.exerciseFloors }" var="e">
														<c:choose>
															<c:when test="${e.exerciseFloorId eq stu.exerciseFloorId }">
																<option value="unselected" value="${e.exerciseFloorId }">${e.exerciseFloorName }</option>
															</c:when>
															<c:otherwise>
																<option value="${e.exerciseFloorId }">${e.exerciseFloorName }</option>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</select>
										<svg class="for-select"><use xlink:href="assets/images/icon.svg#icon_car"></use></svg>
									</div>
								</div>
								<div class="container">
									<div class="price-table">
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
																								<c:choose>
																									<c:when test="${d.drivingLicenseCostId eq requestScope.drivingLicenseCost.drivingLicenseCostId }"><input type="radio" name="drivingLicenseCostId" value="${d.drivingLicenseCostId }" checked></c:when>
																									<c:otherwise><input type="radio" name="drivingLicenseCostId" value="${d.drivingLicenseCostId }"></c:otherwise>
																								</c:choose>
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
																								<c:choose>
																									<c:when test="${d.drivingLicenseCostId eq requestScope.drivingLicenseCost.drivingLicenseCostId }"><input type="radio" name="drivingLicenseCostId" value="${d.drivingLicenseCostId }" checked></c:when>
																									<c:otherwise><input type="radio" name="drivingLicenseCostId" value="${d.drivingLicenseCostId }"></c:otherwise>
																								</c:choose>
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
																								<c:choose>
																									<c:when test="${d.drivingLicenseCostId eq requestScope.drivingLicenseCost.drivingLicenseCostId }"><input type="radio" name="drivingLicenseCostId" value="${d.drivingLicenseCostId }" checked></c:when>
																									<c:otherwise><input type="radio" name="drivingLicenseCostId" value="${d.drivingLicenseCostId }"></c:otherwise>
																								</c:choose>
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
																								<c:choose>
																									<c:when test="${d.drivingLicenseCostId eq requestScope.drivingLicenseCost.drivingLicenseCostId }"><input type="radio" name="drivingLicenseCostId" value="${d.drivingLicenseCostId }" checked></c:when>
																									<c:otherwise><input type="radio" name="drivingLicenseCostId" value="${d.drivingLicenseCostId }"></c:otherwise>
																								</c:choose>
																							</div>
																						</div>
																					</c:when>
																				</c:choose>
														</c:forEach>
													</c:otherwise>
												</c:choose>
									</div>
								</div>
								<div class="form__row row" style="margin-top:30px;">
									<div class="col-md-12">
										<a class="btn btn_fullwidth" id="submitbutton">立 即 支 付</a>
									</div>
								</div>
							</form>
						</c:when>
						<c:otherwise>
							<div class="address__data container" style="margin-top:50px;">
								<div class="row">
									<div class="data col-md-4">
										<div class="address__data-item">
											<span class="address__data-value" style="text-transform:Lowercase;"><div id="photo" style="background-image:url(${requestScope.studentApply.studentPhoto});width:100px;height:100px;text-transform:Lowercase;background-size:100% 100%;"></div></span>
										</div>
									</div>
									<div class="col-md-4">
										<div class="address__data-item">
											<span class="address__data-value">${requestScope.studentApply.studentName }</span>
											<span class="address__data-value">${requestScope.studentApply.sex }</span>
											<span class="address__data-value">${requestScope.studentApply.identityCard }</span>
											<span class="address__data-value">${requestScope.studentApply.phone }</span>
										</div>
									</div>
									<div class="col-md-4">
										<div class="address__data-item">
											<span class="address__data-value">${requestScope.studentApply.emailAddress }</span>
											<span class="address__data-value">${requestScope.studentApply.exerciseFloor.exerciseFloorName }</span>
											<span class="address__data-value">${requestScope.drivingLicenseCost.dlt.drivingLicenseTypeName }  ${requestScope.drivingLicenseCost.ct.classTypesName }</span>
											<span class="address__data-value">${requestScope.subjectType.subjectTypeName }</span>
										</div>
									</div>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
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
						url:"http://api.k780.com/?app=phone.get&phone="+phone+"&appkey=35615&sign=02c9df17e74b95b32ff1052952354176&format=json&jsoncallback=data",
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
						var identitycard='${requestScope.studentApply.identityCard}';
						var idcard=$("#identityCard").val();
						if(identitycard==idcard)
						{
							identityCardresult=true;
						}
						if(identityCardresult)
						{
							var phone1='${requestScope.studentApply.phone}';
							var phone2=$("#phone").val();
							if(phone1==phone2)
							{
								phoneresult=true;
							}
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
			$(".price-table__item").click(
				function()
				{
					$(this).children("input").prop("checked",true);
				}
			);
		</script>
	</body>
</html>
