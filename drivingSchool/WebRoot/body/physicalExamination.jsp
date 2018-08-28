<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'physicalExamination.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="jquery/jquery-1.9.1.js"></script>
	<link rel="stylesheet" href="bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.min.css">
	<script src="bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="alternate icon" type="image/png" href="assets/images/logo.png"><!--在title添加logo  -->
	<link href="assets/styles/app.min.css" rel="stylesheet">
  </head>
<body class="page" style="background-color:#F5F9FC;">
<input type="hidden" id="Applyresult" value="${requestScope.Applyresult }">
<input type="hidden" id="update_physicalExaminationResult" value="${requestScope.update_physicalExaminationResult }">
<input type="hidden" id="delete_physicalExaminationResult" value="${requestScope.delete_physicalExaminationResult }">
<div class="content">
	<div class="address">
		<h2 class="title"><span class="title__mark">预 约 </span>信 息</h2>
		<div class="address__data container" style="margin-top:50px;">
			<c:choose>
				<c:when test="${empty requestScope.physicalExamination}">
				<div class="row">
					<div class="data col-md-12">
						<div class="address__data-item">
							<form action="physicalExaminationAction/insert_physicalExamination" method="post" id="physicalExaminationfrom" class="form">
								<span class="address__data-value" style="padding:0px;">
									<div class="form__row row">
										<div class="form__row-mobile col-md-12">
											<div class="control-group control-group_fullwidth">
												<span class="control-remark control-group__item">t</span>
												<span class="inp">
													<span class="inp__box">
														<input type="text" class="inp__control" id="applyDate" placeholder="请选择您的预约时间..." name="applyDate" readonly class="form_datetime">
													</span>
												</span>
											</div>
										</div>
									</div>
								</span>
								<span class="address__data-value" style="padding:0px;">
									<div class="form__row row">
										<div class="col-md-12">
											<a class="btn btn_fullwidth" id="submitbutton">预 约</a>
										</div>
									</div>
								</span>
							</form>
							</span>
						</div>
					</div>
				</div>
				</c:when>
				<c:otherwise>
				<div class="row">
					<div class="data col-md-12">
						<div class="address__data-item">
							<form action="physicalExaminationAction/update_physicalExamination" method="post" id="physicalExaminationfrom" class="form">
											<span class="address__data-value" style="padding:0px;">
												<div class="form__row row">
													<div class="form__row-mobile col-md-12">
														<div class="control-group control-group_fullwidth">
															<span class="control-remark control-group__item">t</span>
															<span class="inp">
																<span class="inp__box">
																	<input type="hidden" id="physicalExaminationId" name="physicalExaminations.physicalExaminationId" value="${requestScope.physicalExamination.physicalExaminationId }">
																	<input type="text" class="inp__control" id="applyDate" placeholder="请选择您的预约时间..." name="physicalExaminations.applyDate" value="${fn:substring(requestScope.physicalExamination.applyDate,0,fn:indexOf(requestScope.physicalExamination.applyDate,' ')) }" readonly class="form_datetime">
																</span>
															</span>
														</div>
													</div>
												</div>
											</span>
											<span class="address__data-value" style="padding:0px;">
											<div class="form__row row">
												<div class="form__row-mobile col-md-12">
													<div class="control-group control-group_fullwidth">
														<span class="control-remark control-group__item">a</span>
														<span class="inp">
															<span class="inp__box">
																<input type="text" class="inp__control" disabled="disabled" value="${requestScope.studentApply.exerciseFloor.exerciseFloorName }">
															</span>
														</span>
													</div>
												</div>
											</div>
											</span>
											<c:choose>
												<c:when test="${requestScope.physicalExamination.stateId eq '015b538e-2582-4634-8b63-ab0743b9682f' }">
													<span class="address__data-value" style="padding:0px;">
														<div class="form__row row">
															<div class="col-xs-6">
																<input type="submit" class="btn btn_fullwidth" value="修 改"/>
															</div>
															<div class="col-xs-6">
																<a class="btn btn_fullwidth" href="physicalExaminationAction/delete_physicalExamination?physicalExaminations.physicalExaminationId=${requestScope.physicalExamination.physicalExaminationId }">取 消 预 约</a>
															</div>
														</div>
													</span>
												</c:when>
												<c:otherwise>
												<span class="address__data-value" style="padding:0px;">
													<div class="form__row row">
														<div class="col-xs-12">
															<a class="btn btn_fullwidth" style="text-align:center;color:white;background-color:#e64346;border:0px;">体检信息已确认,不能进行修改!</a>
														</div>
													</div>
												</span>
												</c:otherwise>
											</c:choose>
									</form>
								</div>
							</div>
							</div>
							</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
	</div>
</div>
</body>
<script type="text/javascript">
	//日期插件
	$("#applyDate").datetimepicker({
		format: 'yyyy-mm-dd',//显示格式
		todayHighlight: 1,//今天高亮
		minView: "month",//设置只显示到月份
		startView:2,
		forceParse: 0,
		showMeridian: 1,
		autoclose: 1,//选择后自动关闭
		language: 'cn',
		startDate:new Date(),
		daysOfWeekDisabled:[0,4,3,1,6],
		keyboardNavigation:false
	});
	$().ready(
		function()
		{
			var Applyresult=$("#Applyresult").val();
			var delete_physicalExaminationResult=$("#delete_physicalExaminationResult").val();
			var update_physicalExaminationResult=$("#update_physicalExaminationResult").val();
			if(Applyresult.length>0&&Applyresult=="false")
			{
				alert("预约失败,请重试或联系平台客服150 9307 7197");
			}
			if(delete_physicalExaminationResult.length>0&&delete_physicalExaminationResult=="false")
			{
				alert("取消预约失败,请重试或联系平台客服150 9307 7197");
			}
			if(update_physicalExaminationResult.length>0&&update_physicalExaminationResult=="false")
			{
				alert("修改预约信息失败,请重试或联系平台客服150 9307 7197");
			}
		}
	);
	$("#submitbutton").click(
		function()
		{
			var applyDate=$("#applyDate").val();
			if(null!=applyDate&&applyDate.length>0)
			{
				$("#physicalExaminationfrom").submit();
			}
			else
			{
				alert("预约失败,请选择您的预约信息,谢谢合作!");
			}
		}
	);
</script>
</html>
