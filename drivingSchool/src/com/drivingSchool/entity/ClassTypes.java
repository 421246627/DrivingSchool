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
public class ClassTypes implements Serializable 
{
	private static final long serialVersionUID = 1L;
	private String ClassTypesId;
	private String ClassTypesName;
	@Id
	@Column
	public String getClassTypesId() {
		return ClassTypesId;
	}
	public void setClassTypesId(String classTypesId) {
		ClassTypesId = classTypesId;
	}
	@Column
	public String getClassTypesName() {
		return ClassTypesName;
	}
	public void setClassTypesName(String classTypesName) {
		ClassTypesName = classTypesName;
	}
	public ClassTypes(String classTypesId, String classTypesName) {
		super();
		ClassTypesId = classTypesId;
		ClassTypesName = classTypesName;
	}
	public ClassTypes() {
		super();
	}
	@Override
	public String toString() {
		return "ClassTypes [ClassTypesId=" + ClassTypesId + ", ClassTypesName="
				+ ClassTypesName + "]";
	}
	
}
