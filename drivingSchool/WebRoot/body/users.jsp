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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
				width:600px;
				height:200px;
				display:inline-block;
				margin:0px 22.5px;
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
		</style>
  </head>
  <body>
<div id="userbody">
<div id="photo" style="background-image:url(${sessionScope.user.photo});background-size:100% 100%;"><a>修改头像</a></div><table id="usertable">
<tr>
 	<td id="td1">${sessionScope.user.userName }</td><td id="td2"><a  data-toggle="modal" data-target="#updateusername">修改名称</a></td>
</tr>
<tr>
	<td id="bindEmail">${sessionScope.user.bindEmail }</td><td id="td2"><a data-toggle="modal" data-target="#updatebindemail" id="updatebindemaila">修改绑定邮箱</a></td>
</tr>
<tr>
	<td id="td2" colspan="2"><a data-toggle="modal" data-target="#updateuserPassword" id="updateuserPassworda">修改密码</a></td>
</tr>
</table>
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
	        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	        <button type="button" id="updateusernamebutton" class="btn btn-primary" data-dismiss="modal">提交</button>
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
	        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	        <a id="updatebindEmailbutton" class="btn btn-primary">提交</a>
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
	        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	        <a id="updateuserPasswordbutton" class="btn btn-primary">提交</a>
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
