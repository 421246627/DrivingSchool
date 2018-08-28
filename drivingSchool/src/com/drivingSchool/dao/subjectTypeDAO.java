package com.drivingSchool.dao;

import java.util.List;

import com.drivingSchool.entity.subjectType;

public interface subjectTypeDAO 
{
	/**
	 * 查询所有科目类型
	 * @return
	 */
	public List<subjectType> find_subjectType();
	/**
	 * 根据科目类型编号查询
	 * @param subjectTypeId
	 * @return
	 */
	public subjectType find_subjectTypeBysubjectTypeId(String subjectTypeId);
}
