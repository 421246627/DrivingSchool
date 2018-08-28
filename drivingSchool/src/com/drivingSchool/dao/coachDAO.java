package com.drivingSchool.dao;

import java.util.List;
import java.util.Map;

import com.drivingSchool.entity.coach;

public interface coachDAO 
{
	/**
	 * 查询所有教练
	 * @return
	 */
	public List<coach> find_coach(String exerciseFloorId,String drivingLicenseTypeId,String ClassTypesId,String subjectTypeId);
	/**
	 * 根据各种条件查询教练
	 * @return
	 */
	public List<coach> find_coachBycondition(String hql,Map<String,Object>map);
	/**
	 * 根据教练编号查询
	 * @param coachId
	 * @return
	 */
	public coach find_coachBycoachId(String coachId);
}
