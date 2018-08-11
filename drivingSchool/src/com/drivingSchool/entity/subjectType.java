package com.drivingSchool.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name="subjectType")
@Cache(usage=CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class subjectType implements Serializable
{
	private static final long serialVersionUID = 1L;
	private String subjectTypeId;
	private String subjectTypeName;
	@Id
	@Column(name="subjectTypeId")
	public String getSubjectTypeId() {
		return subjectTypeId;
	}
	public void setSubjectTypeId(String subjectTypeId) {
		this.subjectTypeId = subjectTypeId;
	}
	@Column(name="subjectTypeName")
	public String getSubjectTypeName() {
		return subjectTypeName;
	}
	public void setSubjectTypeName(String subjectTypeName) {
		this.subjectTypeName = subjectTypeName;
	}
	public subjectType(String subjectTypeId, String subjectTypeName) {
		super();
		this.subjectTypeId = subjectTypeId;
		this.subjectTypeName = subjectTypeName;
	}
	public subjectType() {
		super();
	}
}
