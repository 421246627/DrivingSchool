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
public class coach implements Serializable 
{
	private static final long serialVersionUID = 1L;
	private String coachId;
	private String userId;
	private String coachName;
	private String phone;
	private String identityCard;
	private String homeAddress;
	private String exerciseFloorId;
	private exerciseFloor exercisefloor;
	private String photo;
	private String stateId;
	private String entryDate;
	private String gender;
	private String subjectTypeId;
	private subjectType subjecttype;
	private String drivingLicenseTypeId;
	private drivingLicenseType drivinglicensetype;
	private String vehicleInfoId;
	private vehicleInfo vehicleinfo;
	private String classTypesId;
	@Id
	@Column
	public String getCoachId() {
		return coachId;
	}
	public void setCoachId(String coachId) {
		this.coachId = coachId;
	}
	@Column
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Column
	public String getCoachName() {
		return coachName;
	}
	public void setCoachName(String coachName) {
		this.coachName = coachName;
	}
	@Column
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Column
	public String getIdentityCard() {
		return identityCard;
	}
	public void setIdentityCard(String identityCard) {
		this.identityCard = identityCard;
	}
	@Column
	public String getHomeAddress() {
		return homeAddress;
	}
	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}
	@Column(insertable=false,updatable=false)
	public String getExerciseFloorId() {
		return exerciseFloorId;
	}
	public void setExerciseFloorId(String exerciseFloorId) {
		this.exerciseFloorId = exerciseFloorId;
	}
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="exerciseFloorId")
	public exerciseFloor getExercisefloor() {
		return exercisefloor;
	}
	public void setExercisefloor(exerciseFloor exercisefloor) {
		this.exercisefloor = exercisefloor;
	}
	@Column
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	@Column
	public String getStateId() {
		return stateId;
	}
	public void setStateId(String stateId) {
		this.stateId = stateId;
	}
	@Column
	public String getEntryDate() {
		return entryDate;
	}
	public void setEntryDate(String entryDate) {
		this.entryDate = entryDate;
	}
	@Column
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Column(insertable=false,updatable=false)
	public String getSubjectTypeId() {
		return subjectTypeId;
	}
	public void setSubjectTypeId(String subjectTypeId) {
		this.subjectTypeId = subjectTypeId;
	}
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="subjectTypeId")
	public subjectType getSubjecttype() {
		return subjecttype;
	}
	public void setSubjecttype(subjectType subjecttype) {
		this.subjecttype = subjecttype;
	}
	@Column(insertable=false,updatable=false)
	public String getDrivingLicenseTypeId() {
		return drivingLicenseTypeId;
	}
	public void setDrivingLicenseTypeId(String drivingLicenseTypeId) {
		this.drivingLicenseTypeId = drivingLicenseTypeId;
	}
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="drivingLicenseTypeId")
	public drivingLicenseType getDrivinglicensetype() {
		return drivinglicensetype;
	}
	public void setDrivinglicensetype(drivingLicenseType drivinglicensetype) {
		this.drivinglicensetype = drivinglicensetype;
	}
	@Column(insertable=false,updatable=false)
	public String getVehicleInfoId() {
		return vehicleInfoId;
	}
	public void setVehicleInfoId(String vehicleInfoId) {
		this.vehicleInfoId = vehicleInfoId;
	}
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="vehicleInfoId")
	public vehicleInfo getVehicleinfo() {
		return vehicleinfo;
	}
	public void setVehicleinfo(vehicleInfo vehicleinfo) {
		this.vehicleinfo = vehicleinfo;
	}
	@Column
	public String getClassTypesId() {
		return classTypesId;
	}
	public void setClassTypesId(String classTypesId) {
		this.classTypesId = classTypesId;
	}
	public coach(String coachId, String userId, String coachName, String phone,
			String identityCard, String homeAddress, String exerciseFloorId,
			exerciseFloor exercisefloor, String photo, String stateId,
			String entryDate, String gender, String subjectTypeId,
			subjectType subjecttype, String drivingLicenseTypeId,
			drivingLicenseType drivinglicensetype, String vehicleInfoId,
			vehicleInfo vehicleinfo, String classTypesId) {
		super();
		this.coachId = coachId;
		this.userId = userId;
		this.coachName = coachName;
		this.phone = phone;
		this.identityCard = identityCard;
		this.homeAddress = homeAddress;
		this.exerciseFloorId = exerciseFloorId;
		this.exercisefloor = exercisefloor;
		this.photo = photo;
		this.stateId = stateId;
		this.entryDate = entryDate;
		this.gender = gender;
		this.subjectTypeId = subjectTypeId;
		this.subjecttype = subjecttype;
		this.drivingLicenseTypeId = drivingLicenseTypeId;
		this.drivinglicensetype = drivinglicensetype;
		this.vehicleInfoId = vehicleInfoId;
		this.vehicleinfo = vehicleinfo;
		this.classTypesId = classTypesId;
	}
	public coach() {
		super();
	}
}
