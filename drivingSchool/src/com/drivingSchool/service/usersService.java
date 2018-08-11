package com.drivingSchool.service;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.drivingSchool.daoimpl.usersDAOImpl;
import com.drivingSchool.entity.users;
import com.drivingSchool.util.Uploads;
import com.drivingSchool.util.encryption;
@Service
@Transactional
public class usersService 
{
	@Autowired
	private usersDAOImpl userdaoimpl;
	@Autowired
	private encryption encryption;
	@Autowired
	private Uploads uploads;
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
		user.setUserPassword(encryption.encryption_md5(user.getUserPassword()));
		if(user.getUserId().equals(userdaoimpl.insert_users(user)))
		return true;
		else
		return false;
	}
	public users login_users(users user)
	{
		user.setUserPassword(encryption.encryption_md5(user.getUserPassword()));
		List<users> list=userdaoimpl.login_users(user);
		if(null!=list&&0<list.size())
		{
			return list.get(0);
		}
		return null;
	}
	public boolean update_users(users user)
	{
		return userdaoimpl.update_users(user);
	}
	public String update_photo(users user,String path,File[]Photos,String[]PhotosContentType)
	{
		String[]result=uploads.executeUpload(Photos,PhotosContentType, path);
		StringBuffer photo=new StringBuffer();
		for(int i=0;i<result.length;i++)
		{
			if(!"fileerror".equals(result[i])&&!"filenull".equals(result[i]))
			{
				if(result.length==i+1)
				{
					photo.append("upload/"+result[i]);
				}
				else
				{
					photo.append("upload/"+result[i]+";");
				}
			}
		}
		return photo.toString();
	}
}
