package com.drivingSchool.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name="exerciseFloor")
@Cache(usage=CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class exerciseFloor implements Serializable
{
	private static final long serialVersionUID = 1L;
	private String exerciseFloorId;
	private String exerciseFloorName;
	@Id
	@Column(name="exerciseFloorId")
	public String getExerciseFloorId() {
		return exerciseFloorId;
	}
	public void setExerciseFloorId(String exerciseFloorId) {
		this.exerciseFloorId = exerciseFloorId;
	}
	@Column(name="exerciseFloorName")
	public String getExerciseFloorName() {
		return exerciseFloorName;
	}
	public void setExerciseFloorName(String exerciseFloorName) {
		this.exerciseFloorName = exerciseFloorName;
	}
	public exerciseFloor(String exerciseFloorId, String exerciseFloorName) {
		super();
		this.exerciseFloorId = exerciseFloorId;
		this.exerciseFloorName = exerciseFloorName;
	}
	public exerciseFloor() {
		super();
	}
}
