package com.drivingSchool.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.drivingSchool.daoimpl.usersDAOImpl;
import com.drivingSchool.service.usersService;

public class test {
	/*public static void main(String[] args) throws Exception 
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
		String content="<div style='margin-top:100px;margin-left:200px;'><p style='font-size:20px;font-weight:bold;'>尊敬的用户:</p><p>您好:</p><p>您本次注册本平台验证码为:</p><p style='color:red;font-weight:bold;font-size:25px;padding-left:200px;'>"+sb+"</p><p>DrivingSchool团队</p><p>"+sdf.format(new Date())+"</p></div>";
		//mail.sendMessages("421246627@qq.com",content);
	}*/
	public static void main(String[] args) 
	{
		UUID uuid=UUID.randomUUID();
		System.out.println(uuid);
	}

}