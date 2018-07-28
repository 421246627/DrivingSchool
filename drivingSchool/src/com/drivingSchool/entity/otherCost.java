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
public class otherCost implements Serializable 
{
	private static final long serialVersionUID = 1L;
	private String otherCostId;
	private String otherCostName;
	private double price;
	private String moreInfo;
	@Id
	@Column
	public String getOtherCostId() {
		return otherCostId;
	}
	public void setOtherCostId(String otherCostId) {
		this.otherCostId = otherCostId;
	}
	@Column
	public String getOtherCostName() {
		return otherCostName;
	}
	public void setOtherCostName(String otherCostName) {
		this.otherCostName = otherCostName;
	}
	@Column
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Column
	public String getMoreInfo() {
		return moreInfo;
	}
	public void setMoreInfo(String moreInfo) {
		this.moreInfo = moreInfo;
	}
	public otherCost(String otherCostId, String otherCostName, double price,
			String moreInfo) {
		super();
		this.otherCostId = otherCostId;
		this.otherCostName = otherCostName;
		this.price = price;
		this.moreInfo = moreInfo;
	}
	public otherCost() {
		super();
	}
}
