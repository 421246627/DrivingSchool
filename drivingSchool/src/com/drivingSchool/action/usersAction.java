package com.drivingSchool.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.Random;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;

import com.drivingSchool.entity.users;
import com.drivingSchool.service.usersService;
import com.drivingSchool.util.Mail;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("json-default")
@Namespace("/usersAction")
@Order(value=1)
public class usersAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	private String verificationCode="";
	private boolean userAccountrepetition=false;
	private users users;
	private String bindEmail;
	private String userAccount;
	private ActionContext context=ActionContext.getContext();
	@SuppressWarnings("unchecked")
	private Map<String,Object>request=(Map<String, Object>) context.get("request");
	@Autowired
	private usersService usersservice;
	/**
	 * 向用户发送验证码,返回json数据(验证码)
	 * @return
	 * @throws Exception
	 */
	@Action(value="CheckEmail",results={@Result(name="success",type="json",params={"root","verificationCode"})})
	public String CheckEmail() throws Exception
	{
		Mail mail=new Mail();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		char[]ch="ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
		int len=ch.length,index;
		StringBuffer sb=new StringBuffer();
		Random r=new Random();
		for(int i=0;i<6;i++)
		{
			index=r.nextInt(len);
			sb.append(ch[index]);
		}
		String content="<div style='margin-top:50px;margin-left:50px;'><p style='font-size:20px;font-weight:bold;'>尊敬的用户:</p><p>您好:</p><p>您本次注册本平台验证码为:</p><p style='color:red;font-weight:bold;font-size:25px;padding-left:200px;'>"+sb+"</p><p>DrivingSchool团队</p><p>"+sdf.format(new Date())+"</p></div>";
		mail.sendMessages(bindEmail,content);
		verificationCode=sb.toString();
		return SUCCESS;
	}
	/**
	 * 检测用户是否已经存在,返回boolean结果
	 * @return
	 */
	@Action(value="CheckuserAccountrepetition",results={@Result(name="success",type="json",params={"root","userAccountrepetition"})})
	public String checkuserAccountrepetition()
	{
		userAccountrepetition=usersservice.checkuserAccountrepetition(userAccount);
		return SUCCESS;
	}
	@Action(value="register_user",results={@Result(name="success",type="dispatcher",location="/index.jsp")})
	public String register_user()
	{
		request.put("register_result",usersservice.insert_users(this.getUsers()));
		return SUCCESS;
	}
	public String getVerificationCode() {
		return verificationCode;
	}
	public void setVerificationCode(String verificationCode) {
		this.verificationCode = verificationCode;
	}
	public boolean isUserAccountrepetition() {
		return userAccountrepetition;
	}
	public void setUserAccountrepetition(boolean userAccountrepetition) {
		this.userAccountrepetition = userAccountrepetition;
	}
	public users getUsers() {
		return users;
	}
	public void setUsers(users users) {
		this.users = users;
	}
	public String getBindEmail() {
		return bindEmail;
	}
	public void setBindEmail(String bindEmail) {
		this.bindEmail = bindEmail;
	}
	public String getUserAccount() {
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
}
