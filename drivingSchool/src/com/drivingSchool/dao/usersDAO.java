package com.drivingSchool.dao;

import java.io.Serializable;
import java.util.List;

import com.drivingSchool.entity.users;

public interface usersDAO 
{
	/**
	 * 通过账号查找是否已经注册
	 * @param userAccount
	 * @return
	 */
	public List<users> find_usersByuserAccount(String userAccount);
	/**
	 * 注册用户
	 * @return
	 */
	public Serializable insert_users(users user);
}
