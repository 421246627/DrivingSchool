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
@Entity
@Table(name="physicalExamination")
public class physicalExamination implements Serializable
{
	private static final long serialVersionUID = 1L;
	private String physicalExaminationId;
	private String userId;
	private users user;
	private Date applyDate;
	private String stateId;
	@Id
	@Column
	public String getPhysicalExaminationId() {
		return physicalExaminationId;
	}
	public void setPhysicalExaminationId(String physicalExaminationId) {
		this.physicalExaminationId = physicalExaminationId;
	}
	@Column(insertable=false,updatable=false)
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@OneToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="userId")
	public users getUser() {
		return user;
	}
	public void setUser(users user) {
		this.user = user;
	}
	@Column
	public Date getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}
	@Column
	public String getStateId() {
		return stateId;
	}
	public void setStateId(String stateId) {
		this.stateId = stateId;
	}
	public physicalExamination(String physicalExaminationId, String userId,
			users user, Date applyDate, String stateId) {
		super();
		this.physicalExaminationId = physicalExaminationId;
		this.userId = userId;
		this.user = user;
		this.applyDate = applyDate;
		this.stateId = stateId;
	}
	public physicalExamination() {
		super();
	}
}
