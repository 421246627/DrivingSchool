package com.drivingSchool.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.drivingSchool.daoimpl.usersDAOImpl;
import com.drivingSchool.entity.users;
import com.drivingSchool.util.encryption;
@Service
@Transactional
public class usersService 
{
	@Autowired
	private usersDAOImpl userdaoimpl;
	@Autowired
	private encryption encryption;
	/**
	 * 检验账号是否存在
	 * @param userAccount
	 * @return
	 */
	public boolean checkuserAccountrepetition(String userAccount)
	{
		List<users>list=userdaoimpl.find_usersByuserAccount(userAccount);
		if(null!=list&&0<list.size())
		return true;
		else
		return false;
	}
	/**
	 * 添加学员用户
	 * @param user
	 * @return
	 */
	public boolean insert_users(users user)
	{
		user.setUserId(encryption.getUUID());
		user.setUserTypeId("c65d451b-1228-439c-9f1e-fa48b6c2d8cc");
		user.setUserName(encryption.getUUID());
		user.setPhoto("upload/defaultusersphoto.png"); 
		if(user.getUserId().equals(userdaoimpl.insert_users(user)))
		return true;
		else
		return false;
	}
}
