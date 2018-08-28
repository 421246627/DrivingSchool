package com.drivingSchool.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
@Entity
@Table(name="drivingLicenseCost")
public class drivingLicenseCost implements Serializable{
	private static final long serialVersionUID = 1L;
	private String drivingLicenseCostId;
	private String drivingLicenseTypeId;
	private drivingLicenseType dlt;
	private String ClassTypesId;
	private ClassTypes ct;
	private double price;
	@Id
	@Column(name="drivingLicenseCostId")
	public String getDrivingLicenseCostId() {
		return drivingLicenseCostId;
	}
	public void setDrivingLicenseCostId(String drivingLicenseCostId) {
		this.drivingLicenseCostId = drivingLicenseCostId;
	}
	@Column(name="drivingLicenseTypeId",insertable=false,updatable=false)
	public String getDrivingLicenseTypeId() {
		return drivingLicenseTypeId;
	}
	public void setDrivingLicenseTypeId(String drivingLicenseTypeId) {
		this.drivingLicenseTypeId = drivingLicenseTypeId;
	}
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="drivingLicenseTypeId")
	public drivingLicenseType getDlt() {
		return dlt;
	}
	public void setDlt(drivingLicenseType dlt) {
		this.dlt = dlt;
	}
	@Column(name="ClassTypesId",insertable=false,updatable=false)
	public String getClassTypesId() {
		return ClassTypesId;
	}
	public void setClassTypesId(String classTypesId) {
		ClassTypesId = classTypesId;
	}
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="ClassTypesId")
	public ClassTypes getCt() {
		return ct;
	}
	public void setCt(ClassTypes ct) {
		this.ct = ct;
	}
	@Column(name="price")
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public drivingLicenseCost(String drivingLicenseCostId,
			String drivingLicenseTypeId, drivingLicenseType dlt,
			String classTypesId, ClassTypes ct, double price) {
		super();
		this.drivingLicenseCostId = drivingLicenseCostId;
		this.drivingLicenseTypeId = drivingLicenseTypeId;
		this.dlt = dlt;
		ClassTypesId = classTypesId;
		this.ct = ct;
		this.price = price;
	}
	public drivingLicenseCost() {
		super();
	}
	@Override
	public String toString() {
		return "drivingLicenseCost [drivingLicenseCostId="
				+ drivingLicenseCostId + ", drivingLicenseTypeId="
				+ drivingLicenseTypeId + ", dlt=" + dlt + ", ClassTypesId="
				+ ClassTypesId + ", ct=" + ct + ", price=" + price + "]";
	}
}
