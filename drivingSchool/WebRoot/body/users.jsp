<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'insert_book.jsp' starting page</title>
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
	<script src="jquery/jquery-1.9.1.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
		<style>
			#userbody
			{
				width:100%;
				height:100%;
			}
			#usertable
			{
				width:100%;
				height:200px;
				display:inline-block;
				margin:0px;
				border:1px solid red;
			}
			#usertable #td1,#usertable #bindEmail
			{
				width:400px;
			}
			#usertable #td2
			{
				text-align:right;
			}
			#usertable td
			{
				height:66.6px;
			}
			#usertable td a
			{
				color:#61C9FE;
			}
			.form-group input 
			{
				width:100%;
				height:30px;
			}
			.form-group label
			{
				font-weight: bold;
			}
			#bindEmaildiv
			{
				display:none;
			}
			#updateuserPassworddiv
			{
				display:none;
			}
			#photo a
			{
				width:200px;
				height:200px;
				line-height:200px;
				text-align:center;
				display:none;
				text-decoration:none;
				font-size:20px;
			}
			#photo
			{
				width:200px;
				height:200px;
				display:inline-block;
				vertical-align:top;<!--添加文本之后div偏离原来位置添加该句即可 -->
				
			}
			body
			{
				background-color:#F5F9FC;
			}
		</style>
  </head>
<body class="page">
<div class="content">
	<div class="address">
		<h2 class="title"><span class="title__mark">个 人 </span>信 息</h2>
		<div class="address__data container" style="margin-top:50px;">
			<div class="row">
				<div class="data col-md-4">
					<div class="address__data-item">
						<span class="address__data-value"><div id="photo" style="background-image:url(${sessionScope.user.photo});background-size:100% 100%;"><a>修改头像</a></div></span>
					</div>
				</div>
				<div class="col-md-4">
					<div class="address__data-item">
						<span class="address__data-value">${sessionScope.user.userName }</span>
						<span class="address__data-value" id="bindEmail">${sessionScope.user.bindEmail }</span>
					</div>
				</div>
				<div class="col-md-4">
					<div class="address__data-item">
						<span class="address__data-value"><a  data-toggle="modal" data-target="#updateusername">修改名称</a></span>
						<span class="address__data-value"><a data-toggle="modal" data-target="#updatebindemail" id="updatebindemaila">修改绑定邮箱</a></span>
						<span class="address__data-value"><a data-toggle="modal" data-target="#updateuserPassword" id="updateuserPassworda">修改密码</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="updateusername" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="exampleModalLabel">修改名称</h4>
	      </div>
	      <div class="modal-body">
	        <form id="updateusernamefrom" action="usersAction/update_userName" method="post">
	          <div class="form-group">
	            <label for="recipient-name" class="control-label">用户名称:</label>
	            <input type="text" class="form-control" name="users.userName" id="userName">
	            <input type="hidden" id="updateuserNameResult" value="${requestScope.updateuserNameResult }">
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal" style="background-color:#FFEA00;border:0;color:black;">关闭</button>
	        <button type="button" id="updateusernamebutton" class="btn btn-primary" data-dismiss="modal" style="background-color:#FFEA00;border:0;color:black;"">提交</button>
	      </div>
	    </div>
	  </div>
</div>
<div class="modal fade" id="updatebindemail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="exampleModalLabel">修改绑定邮箱</h4>
	      </div>
	      <div class="modal-body">
	        <form id="updatebindemailfrom" action="usersAction/update_bindEmail" method="post">
	          <div class="form-group">
	            <label for="recipient-name" class="control-label">邮箱验证码:</label>
	            <input type="text" class="form-control" id="verificationcodes">
	          </div>
	          <div class="form-group" id="bindEmaildiv">
	            <label for="recipient-name" class="control-label">邮箱地址:</label>
	            <input type="text" class="form-control" name="users.bindEmail" id="updatebindEmailvalue">
	            <input type="hidden" id="updatebindEmailResult" value="${requestScope.updatebindEmailResult }">
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal" style="background-color:#FFEA00;border:0;color:black;">关闭</button>
	        <button id="updatebindEmailbutton" class="btn btn-primary" style="background-color:#FFEA00;border:0;color:black;">提交</button>
	      </div>
	    </div>
	  </div>
</div>
<div class="modal fade" id="updateuserPassword" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="exampleModalLabel">修改密码</h4>
	      </div>
	      <div class="modal-body">
	        <form id="updateuserPasswordfrom" action="usersAction/update_userPassword" method="post">
	          <div class="form-group">
	            <label for="recipient-name" class="control-label">邮箱验证码:</label>
	            <input type="text" class="form-control" id="updateuserPasswordverificationcodes">
	          </div>
	          <div id="updateuserPassworddiv">
	          	<div class="form-group">
		            <label for="recipient-name" class="control-label">密码:</label>
		            <input type="password" class="form-control" name="users.userPassword" id="updateuserPasswordvalue">
		            <input type="hidden" id="updateuserPasswordResult" value="${requestScope.updateuserPasswordResult }">
		          </div>
		          <div class="form-group">
		            <label for="recipient-name" class="control-label">确认密码:</label>
		            <input type="password" class="form-control" id="enterupdateuserPasswordvalue">
		          </div>
		      </div>
	        </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal" style="background-color:#FFEA00;border:0;color:black;">关闭</button>
	        <button id="updateuserPasswordbutton" class="btn btn-primary" style="background-color:#FFEA00;border:0;color:black;">提交</button>
	      </div>
	    </div>
	  </div>
</div>
<div class="modal fade" id="updatephoto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
	<form id="updatephotoform" action="usersAction/update_photo" method="post" enctype="multipart/form-data">
		<input type="file" name="photos" id="photovalue" onchange="photochange(this)">
		<input type="hidden" id="updateuserphotoResult" value="${requestScope.updateuserphotoResult }">
	 </form>
</div>
</div>
  </body>
  <script>
  	$("#updateusernamebutton").click(
  		function()
  		{
  			var userName=$("#userName").val();
  			if(userName.length>0)
  			{
				$("#updateusernamefrom").submit();
  			}
  			else
  			{
  				alert("用户名称不能为空,请重新填写!");
  			}
  		}
  	);
  	$().ready(
  		function()
  		{
  			var updateuserNameResult=$("#updateuserNameResult").val();
  			var updatebindEmailResult=$("#updatebindEmailResult").val();
  			var updateuserPasswordResult=$("#updateuserPasswordResult").val();
  			var updateuserphotoResult=$("#updateuserphotoResult").val();
  			if(null!=updateuserNameResult&&updateuserNameResult=="false")
  			{
  				alert("修改用户名称失败,请重试!");
  			}
  			if(null!=updatebindEmailResult&&updatebindEmailResult=="false")
  			{
  				alert("修改绑定邮箱失败,请重试!");
  			}
  			if(null!=updateuserPasswordResult&&updateuserPasswordResult=="false")
  			{
  				alert("修改用户密码失败,请重试!");
  			}
  			if(null!=updateuserphotoResult&&updateuserphotoResult=="false")
  			{
  				alert("修改用户头像失败,请重试!");
  			}
  		}
  	);
  	var verificationcode="";//验证码
	function checkemail()
	{
		var reg=/^([a-zA-Z0-9]+[_|-|.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|-|.]?)*[a-zA-Z0-9]+.[a-zA-Z]{2,3}$/gi;
		var bindEmail=$("#updatebindEmailvalue").val();
		if(reg.test(bindEmail))
		return true;
		else
		return false;
	}
  	$("#updatebindEmailvalue").blur(
  		function()
  		{
  			if(!checkemail())
  			{
  				alert("邮箱地址输入错误,请重新输入!");
  			}
  		}
  	);
	$("#updatebindemaila").click(
	function()
	{
			var bindEmail=$("#bindEmail").text();
			$.ajax({
				url:"usersAction/CheckEmail",
				type:"post",
				data:{bindEmail:bindEmail},
				dataType:"json",
				success:function(data)
				{
					verificationcode=data;
				},
				error:function(XMLHttpRequest, textStatus, errorThrown)
				{
					alert(XMLHttpRequest.readyState);
					alert(XMLHttpRequest.status);
				}
			});
	});
	function checkverificationcodes()
	{
		var verificationcodes=$("#verificationcodes").val();
		if(verificationcodes.length>0&&verificationcode==verificationcodes)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	$("#verificationcodes").blur(
		function()
		{
			if(checkverificationcodes())
			{
				$("#bindEmaildiv").css("display","block");
			}
			else
			{
				alert("邮箱验证码输入错误,请重新输入!");
			}
		}
	);
	$("#updatebindEmailbutton").click(
		function()
		{
			if(checkverificationcodes())
			{
				if(checkemail())
				{
					$("#updatebindemailfrom").submit();
				}
				else
				{
					alert("邮箱地址输入错误,请重新输入!");
				}
			}
			else
			{
				alert("邮箱验证码输入错误,请重新输入!");
			}
		}
	);
	$("#updateuserPassworda").click(
		function()
		{
			var bindEmail=$("#bindEmail").text();
			$.ajax({
				url:"usersAction/CheckEmail",
				type:"post",
				data:{bindEmail:bindEmail},
				dataType:"json",
				success:function(data)
				{
					verificationcode=data;
				},
				error:function(XMLHttpRequest, textStatus, errorThrown)
				{
					alert(XMLHttpRequest.readyState);
					alert(XMLHttpRequest.status);
				}
			});
		}
	);
	function checkupdateuserPasswordverificationcodes()
	{
		var updateuserPasswordverificationcodes=$("#updateuserPasswordverificationcodes").val();
		if(updateuserPasswordverificationcodes.length>0&&updateuserPasswordverificationcodes==verificationcode)
		return true;
		else
		return false;
	}
	$("#updateuserPasswordverificationcodes").blur(
		function()
		{
			if(checkupdateuserPasswordverificationcodes())
			{
				$("#updateuserPassworddiv").css("display","block");
			}
			else
			{
				alert("邮箱验证码输入错误,请重试!");
			}
		}
	);
	function checkupdateusersPassword()
	{
		var updateuserPasswordvalue=$("#updateuserPasswordvalue").val();
		var enterupdateuserPasswordvalue=$("#enterupdateuserPasswordvalue").val();
		if(updateuserPasswordvalue.length>0)
		{
			if(updateuserPasswordvalue==enterupdateuserPasswordvalue)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		else
		return false;
	}
	$("#enterupdateuserPasswordvalue").blur(
		function()
		{
			if(!checkupdateusersPassword())
			{
				alert("两次密码输入不一致或密码为空,请重新输入!");
			}
		}
	);
	$("#updateuserPasswordbutton").click(
		function()
		{
			if(checkupdateuserPasswordverificationcodes())
			{
				if(checkupdateusersPassword())
				{
					$("#updateuserPasswordfrom").submit();
				}
				else
				{
					alert("两次密码输入不一致或密码为空,请重新输入!");
				}
			}
			else
			{
				alert("邮箱验证码输入错误,请重试!");
			}
		}
	);
	function show_file_window()
	{
		document.getElementById("photovalue").click();
    }
	$("#photo").hover(
		function(){
			$("#photo a").css("display","inline-block");
		},
		function(){
			$("#photo a").css("display","none");
		}
	);
	$("#photo a").click(
		function()
		{
			$("#photovalue").click();
		}
	);
	function laststr(str,s)
	{
		var index=0;
		for(var i=0;i<str.length;i++)
		{
			if(str.charAt(i)==s)
			{
				index=i;
			}
		}
		return index;
	}
	function photochange(photo)
	{
		var photovalue=photo.value;
		if(photovalue.length>0)
		{
			var phototype=photovalue.substring(laststr(photovalue,".")+1,photovalue.length);
			phototype=phototype.toUpperCase();
			if(phototype=="PNG"||phototype=="JPG"||phototype=="JPEG")
			{
				$("#updatephotoform").submit();
			}
			else
			{
				alert("抱歉,只能上传图片格式,请重新选择!");
			}
		}
	}
  </script>
</html>
