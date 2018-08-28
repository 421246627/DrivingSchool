package com.drivingSchool.dao;

import java.io.Serializable;
import java.util.List;

import com.drivingSchool.entity.physicalExamination;

public interface physicalExaminationDAO 
{
	/**
	 * 添加预约体检信息
	 * @param p
	 * @return
	 */
	public Serializable insert_physicalExamination(physicalExamination p);
	/**
	 * 通过预约体检编号查询预约体检信息
	 * @param physicalExaminationId
	 * @return
	 */
	public physicalExamination find_physicalExaminationByphysicalExaminationId(String physicalExaminationId);
	/**
	 * 通过自定义参数查询预约体检信息
	 * @param userId
	 * @return
	 */
	public List<physicalExamination> find_physicalExaminationByuserId(String hql,Object...params);
	/**
	 * 根据预约体检编号删除指定预约体检信息
	 * @param p
	 * @return
	 */
	public boolean delete_physicalExaminationByphysicalExaminationId(String physicalExaminationId);
	/**
	 * 修改预约体检信息
	 * @param p
	 * @return
	 */
	public boolean update_physicalExamination(physicalExamination p);
}
