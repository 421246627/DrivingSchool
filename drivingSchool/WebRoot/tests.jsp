<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'tests.jsp' starting page</title>
    
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
	<style>
		#startTime
		{
			width:230px;
		}
	</style>
  </head>
<body>
	<input type="text" class="time-input form-control" id="startTime" placeholder="起始日期" name="begin_time" readonly class="form_datetime">
</body>
<script type="text/javascript">
//日期插件
$("#startTime").datetimepicker({
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
</script>

</html>
