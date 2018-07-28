package com.drivingSchool.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table
@Cache(usage=CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class drivingLicenseType implements Serializable 
{
	private static final long serialVersionUID = 1L;
	private String drivingLicenseTypeId;
	private String drivingLicenseTypeName;
	@Id
	@Column(name="drivingLicenseTypeId")
	public String getDrivingLicenseTypeId() {
		return drivingLicenseTypeId;
	}
	public void setDrivingLicenseTypeId(String drivingLicenseTypeId) {
		this.drivingLicenseTypeId = drivingLicenseTypeId;
	}
	@Column(name="drivingLicenseTypeName")
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
