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

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table
public class practiceDriving implements Serializable
{
	private static final long serialVersionUID = 1L;
	private String practiceDrivingId;
	private String studentApplyId;
	private String coachId;
	private coach coach;
	private String stateId;
	private Date appointmentDate;
	private String classTypesId;
	@Id
	@Column
	public String getPracticeDrivingId() {
		return practiceDrivingId;
	}
	public void setPracticeDrivingId(String practiceDrivingId) {
		this.practiceDrivingId = practiceDrivingId;
	}
	@Column
	public String getStudentApplyId() {
		return studentApplyId;
	}
	public void setStudentApplyId(String studentApplyId) {
		this.studentApplyId = studentApplyId;
	}
	@Column(insertable=false,updatable=false)
	public String getCoachId() {
		return coachId;
	}
	public void setCoachId(String coachId) {
		this.coachId = coachId;
	}
	@Column
	public String getStateId() {
		return stateId;
	}
	public void setStateId(String stateId) {
		this.stateId = stateId;
	}
	@Column
	public Date getAppointmentDate() {
		return appointmentDate;
	}
	public void setAppointmentDate(Date appointmentDate) {
		this.appointmentDate = appointmentDate;
	}
	@Column
	public String getClassTypesId() {
		return classTypesId;
	}
	public void setClassTypesId(String classTypesId) {
		this.classTypesId = classTypesId;
	}
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="coachId")
	public coach getCoach() {
		return coach;
	}
	public void setCoach(coach coach) {
		this.coach = coach;
	}
	public practiceDriving(String practiceDrivingId, String studentApplyId,
			String coachId, com.drivingSchool.entity.coach coach,
			String stateId, Date appointmentDate, String classTypesId) {
		super();
		this.practiceDrivingId = practiceDrivingId;
		this.studentApplyId = studentApplyId;
		this.coachId = coachId;
		this.coach = coach;
		this.stateId = stateId;
		this.appointmentDate = appointmentDate;
		this.classTypesId = classTypesId;
	}
	public practiceDriving() {
		super();
	}
}
