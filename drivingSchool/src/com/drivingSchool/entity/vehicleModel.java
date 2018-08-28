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
public class vehicleModel implements Serializable
{
	private static final long serialVersionUID = 1L;
	private String vehicleModelId;
	private String vehicleModelName;
	@Id
	@Column
	public String getVehicleModelId() {
		return vehicleModelId;
	}
	public void setVehicleModelId(String vehicleModelId) {
		this.vehicleModelId = vehicleModelId;
	}
	@Column
	public String getVehicleModelName() {
		return vehicleModelName;
	}
	public void setVehicleModelName(String vehicleModelName) {
		this.vehicleModelName = vehicleModelName;
	}
	public vehicleModel(String vehicleModelId, String vehicleModelName) {
		super();
		this.vehicleModelId = vehicleModelId;
		this.vehicleModelName = vehicleModelName;
	}
	public vehicleModel() {
		super();
	}
}
