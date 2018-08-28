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
@Table
@Cache(usage=CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class vehicleInfo implements Serializable
{
	private static final long serialVersionUID = 1L;
	private String vehicleInfoId;
	private String vehicleModelId;
	private vehicleModel vehiclemodel;
	private String licensePlateNumber;
	private String stateId;
	private String enteringDate;
	private String photo;
	@Id
	@Column
	public String getVehicleInfoId() {
		return vehicleInfoId;
	}
	public void setVehicleInfoId(String vehicleInfoId) {
		this.vehicleInfoId = vehicleInfoId;
	}
	@Column(insertable=false,updatable=false)
	public String getVehicleModelId() {
		return vehicleModelId;
	}
	public void setVehicleModelId(String vehicleModelId) {
		this.vehicleModelId = vehicleModelId;
	}
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="vehicleModelId")
	public vehicleModel getVehiclemodel() {
		return vehiclemodel;
	}
	public void setVehiclemodel(vehicleModel vehiclemodel) {
		this.vehiclemodel = vehiclemodel;
	}
	@Column
	public String getLicensePlateNumber() {
		return licensePlateNumber;
	}
	public void setLicensePlateNumber(String licensePlateNumber) {
		this.licensePlateNumber = licensePlateNumber;
	}
	@Column
	public String getStateId() {
		return stateId;
	}
	public void setStateId(String stateId) {
		this.stateId = stateId;
	}
	@Column
	public String getEnteringDate() {
		return enteringDate;
	}
	public void setEnteringDate(String enteringDate) {
		this.enteringDate = enteringDate;
	}
	@Column
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public vehicleInfo(String vehicleInfoId, String vehicleModelId,
			vehicleModel vehiclemodel, String licensePlateNumber,
			String stateId, String enteringDate, String photo) {
		super();
		this.vehicleInfoId = vehicleInfoId;
		this.vehicleModelId = vehicleModelId;
		this.vehiclemodel = vehiclemodel;
		this.licensePlateNumber = licensePlateNumber;
		this.stateId = stateId;
		this.enteringDate = enteringDate;
		this.photo = photo;
	}
	public vehicleInfo() {
		super();
	}
}
