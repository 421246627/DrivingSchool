package com.drivingSchool.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.drivingSchool.daoimpl.subjectTypeDAOImpl;
import com.drivingSchool.entity.subjectType;

@Service
@Transactional
public class subjectTypeService 
{
	@Autowired
	private subjectTypeDAOImpl subjecttypedaoimpl;
	/**
	 * 查询所有科目类型
	 * @return
	 */
	public List<subjectType> find_subjectType()
	{
		return subjecttypedaoimpl.find_subjectType();
	}
	/**
	 * 根据科目类型查询
	 * @param subjectTypeId
	 * @return
	 */
	public subjectType find_subjectTypeBysubjectTypeId(String subjectTypeId)
	{
		return subjecttypedaoimpl.find_subjectTypeBysubjectTypeId(subjectTypeId);
	}
}
