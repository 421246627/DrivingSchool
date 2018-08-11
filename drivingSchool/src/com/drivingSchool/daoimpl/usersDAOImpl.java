package com.drivingSchool.daoimpl;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.drivingSchool.dao.usersDAO;
import com.drivingSchool.entity.users;
import com.drivingSchool.util.BaseDAO;
@Repository
public class usersDAOImpl extends BaseDAO implements usersDAO
{
	@Override
	public List<users> find_usersByuserAccount(String userAccount) 
	{
		String hql="from users where userAccount=?";
		return super.query_executeFind(hql,null,userAccount);
	}
	@Override
	public Serializable insert_users(users user) 
	{
		return super.save(user);
	}
	@Override
	public List<users> login_users(users user) 
	{
		String hql="from users where userAccount=? and userPassword=?";
		return super.query_executeFind(hql, null,user.getUserAccount(),user.getUserPassword());
	}
	@Override
	public boolean update_users(users user) 
	{
		return super.update(user);
	}
}
