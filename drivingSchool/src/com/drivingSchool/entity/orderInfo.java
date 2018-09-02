package com.drivingSchool.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table
public class orderInfo implements Serializable
{
	private static final long serialVersionUID = 1L;
	private String orderInfoId;
	private String orderInfoName;
	private double orderInfoPrice;
	private String orderTypeId;
	private String transactionNumber;
	private String alipayOrderId;
	private String studentApplyId;
	private String stateId;
	private state state;
	private Date orderInfoDate;
	@Id
	@Column
	public String getOrderInfoId() {
		return orderInfoId;
	}
	public void setOrderInfoId(String orderInfoId) {
		this.orderInfoId = orderInfoId;
	}
	@Column
	public String getOrderInfoName() {
		return orderInfoName;
	}
	public void setOrderInfoName(String orderInfoName) {
		this.orderInfoName = orderInfoName;
	}
	@Column
	public double getOrderInfoPrice() {
		return orderInfoPrice;
	}
	public void setOrderInfoPrice(double orderInfoPrice) {
		this.orderInfoPrice = orderInfoPrice;
	}
	@Column
	public String getOrderTypeId() {
		return orderTypeId;
	}
	public void setOrderTypeId(String orderTypeId) {
		this.orderTypeId = orderTypeId;
	}
	@Column
	public String getTransactionNumber() {
		return transactionNumber;
	}
	public void setTransactionNumber(String transactionNumber) {
		this.transactionNumber = transactionNumber;
	}
	@Column
	public String getAlipayOrderId() {
		return alipayOrderId;
	}
	public void setAlipayOrderId(String alipayOrderId) {
		this.alipayOrderId = alipayOrderId;
	}
	@Column
	public String getStudentApplyId() {
		return studentApplyId;
	}
	public void setStudentApplyId(String studentApplyId) {
		this.studentApplyId = studentApplyId;
	}
	@Column(insertable=false,updatable=false)
	public String getStateId() {
		return stateId;
	}
	public void setStateId(String stateId) {
		this.stateId = stateId;
	}
	@Column
	public Date getOrderInfoDate() {
		return orderInfoDate;
	}
	public void setOrderInfoDate(Date orderInfoDate) {
		this.orderInfoDate = orderInfoDate;
	}
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="stateId")
	public state getState() {
		return state;
	}
	public void setState(state state) {
		this.state = state;
	}
}
