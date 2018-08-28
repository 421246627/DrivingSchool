package com.drivingSchool.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table
public class orderType implements Serializable
{
	private static final long serialVersionUID = 1L;
	private String orderTypeId;
	private String orderTypeName;
	@Id
	@Column
	public String getOrderTypeId() {
		return orderTypeId;
	}
	public void setOrderTypeId(String orderTypeId) {
		this.orderTypeId = orderTypeId;
	}
	@Column
	public String getOrderTypeName() {
		return orderTypeName;
	}
	public void setOrderTypeName(String orderTypeName) {
		this.orderTypeName = orderTypeName;
	}
	public orderType(String orderTypeId, String orderTypeName) {
		super();
		this.orderTypeId = orderTypeId;
		this.orderTypeName = orderTypeName;
	}
	public orderType() {
		super();
	}
}
