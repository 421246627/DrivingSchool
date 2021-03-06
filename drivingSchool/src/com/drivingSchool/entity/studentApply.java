package com.drivingSchool.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table
public class studentApply implements Serializable
{
	private static final long serialVersionUID = 1L;
	private String studentApplyId;
	private String userId;
	private String studentName;
	private String sex;
	private String identityCard;
	private String phone;
	private String studentPhoto;
	private String emailAddress;
	private String exerciseFloorId;
	private exerciseFloor exerciseFloor;
	private String drivingLicenseTypeId;
	private String ClassTypesId;
	private String stateId;
	private String subjectTypeId;
	private Date applyDate;
	private Integer practiceCarVouchers;
	private String supplementaryExamination;
	@Id
	@Column
	public String getStudentApplyId() {
		return studentApplyId;
	}
	public void setStudentApplyId(String studentApplyId) {
		this.studentApplyId = studentApplyId;
	}
	@Column
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Column
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	@Column
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	@Column
	public String getIdentityCard() {
		return identityCard;
	}
	public void setIdentityCard(String identityCard) {
		this.identityCard = identityCard;
	}
	@Column
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Column
	public String getStudentPhoto() {
		return studentPhoto;
	}
	public void setStudentPhoto(String studentPhoto) {
		this.studentPhoto = studentPhoto;
	}
	@Column
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	@Column(insertable=false,updatable=false)
	public String getExerciseFloorId() {
		return exerciseFloorId;
	}
	public void setExerciseFloorId(String exerciseFloorId) {
		this.exerciseFloorId = exerciseFloorId;
	}
	@Column
	public String getDrivingLicenseTypeId() {
		return drivingLicenseTypeId;
	}
	public void setDrivingLicenseTypeId(String drivingLicenseTypeId) {
		this.drivingLicenseTypeId = drivingLicenseTypeId;
	}
	@Column
	public String getClassTypesId() {
		return ClassTypesId;
	}
	public void setClassTypesId(String classTypesId) {
		ClassTypesId = classTypesId;
	}
	@Column
	public String getStateId() {
		return stateId;
	}
	public void setStateId(String stateId) {
		this.stateId = stateId;
	}
	@Column
	public String getSubjectTypeId() {
		return subjectTypeId;
	}
	public void setSubjectTypeId(String subjectTypeId) {
		this.subjectTypeId = subjectTypeId;
	}
	@Column
	public Date getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}
	@OneToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="exerciseFloorId")
	public exerciseFloor getExerciseFloor() {
		return exerciseFloor;
	}
	public void setExerciseFloor(exerciseFloor exerciseFloor) {
		this.exerciseFloor = exerciseFloor;
	}
	@Column
	public Integer getPracticeCarVouchers() {
		return practiceCarVouchers;
	}
	public void setPracticeCarVouchers(Integer practiceCarVouchers) {
		this.practiceCarVouchers = practiceCarVouchers;
	}
	@Column
	public String getSupplementaryExamination() {
		return supplementaryExamination;
	}
	public void setSupplementaryExamination(String supplementaryExamination) {
		this.supplementaryExamination = supplementaryExamination;
	}
	public studentApply(String studentApplyId, String userId,
			String studentName, String sex, String identityCard, String phone,
			String studentPhoto, String emailAddress, String exerciseFloorId,
			com.drivingSchool.entity.exerciseFloor exerciseFloor,
			String drivingLicenseTypeId, String classTypesId, String stateId,
			String subjectTypeId, Date applyDate, Integer practiceCarVouchers,
			String supplementaryExamination) {
		super();
		this.studentApplyId = studentApplyId;
		this.userId = userId;
		this.studentName = studentName;
		this.sex = sex;
		this.identityCard = identityCard;
		this.phone = phone;
		this.studentPhoto = studentPhoto;
		this.emailAddress = emailAddress;
		this.exerciseFloorId = exerciseFloorId;
		this.exerciseFloor = exerciseFloor;
		this.drivingLicenseTypeId = drivingLicenseTypeId;
		ClassTypesId = classTypesId;
		this.stateId = stateId;
		this.subjectTypeId = subjectTypeId;
		this.applyDate = applyDate;
		this.practiceCarVouchers = practiceCarVouchers;
		this.supplementaryExamination = supplementaryExamination;
	}
	public studentApply() {
		super();
	}
}
