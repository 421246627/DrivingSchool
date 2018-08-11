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
  </head>
<body>
  		<div style="width:800px;margin:auto;"><p style="border-bottom:1px solid #CCCCCC;padding:10px 0px;"><span style="font-family:Montserrat;font-weight:700;letter-spacing:1px;text-transform:uppercase;font-size:25px;">driving school</span></p><p style="font-size:18px;">尊敬的用户:</p><p>您已成为本校的一名学员,为了学习新的驾考知识,您需要前往本校网站的个人中心,提前预约体检,谢谢合作!</p><p>体检所需材料:身份证</p><p style="margin-top:50px;border-top:1px solid #CCCCCC;padding:10px 0px;color:#CCCCCC;">此为系统邮件，请勿回复；©driving school 2004-2018 All Right Reserved</p></div>
</body>
</html>
