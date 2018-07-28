package com.drivingSchool.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table
@Cache(usage=CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class userType implements Serializable
{
	private static final long serialVersionUID = 1L;
	private String usersTypeId;
	private String usersTypeName;
	@Id
	@Column
	public String getUsersTypeId() 
	{
		return usersTypeId;
	}
	public void setUsersTypeId(String usersTypeId) 
	{
		this.usersTypeId = usersTypeId;
	}
	@Column
	public String getUsersTypeName() 
	{
		return usersTypeName;
	}
	public void setUsersTypeName(String usersTypeName) 
	{
		this.usersTypeName = usersTypeName;
	}
}
