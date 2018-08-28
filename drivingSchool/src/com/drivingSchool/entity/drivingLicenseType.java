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
public class drivingLicenseType implements Serializable 
{
	private static final long serialVersionUID = 1L;
	private String drivingLicenseTypeId;
	private String drivingLicenseTypeName;
	@Id
	@Column
	public String getDrivingLicenseTypeId() {
		return drivingLicenseTypeId;
	}
	public void setDrivingLicenseTypeId(String drivingLicenseTypeId) {
		this.drivingLicenseTypeId = drivingLicenseTypeId;
	}
	@Column
	public String getDrivingLicenseTypeName() {
		return drivingLicenseTypeName;
	}
	public void setDrivingLicenseTypeName(String drivingLicenseTypeName) {
		this.drivingLicenseTypeName = drivingLicenseTypeName;
	}
	public drivingLicenseType(String drivingLicenseTypeId,
			String drivingLicenseTypeName) {
		super();
		this.drivingLicenseTypeId = drivingLicenseTypeId;
		this.drivingLicenseTypeName = drivingLicenseTypeName;
	}
	public drivingLicenseType() {
		super();
	}
	@Override
	public String toString() {
		return "drivingLicenseType [drivingLicenseTypeId="
				+ drivingLicenseTypeId + ", drivingLicenseTypeName="
				+ drivingLicenseTypeName + "]";
	}
}
