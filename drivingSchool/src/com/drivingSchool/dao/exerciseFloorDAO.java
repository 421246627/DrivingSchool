package com.drivingSchool.dao;

import java.util.List;

import com.drivingSchool.entity.exerciseFloor;

public interface exerciseFloorDAO 
{
	/**
	 * 查询练习场地
	 * @return
	 */
	public List<exerciseFloor> find_exerciseFloor();
	/**
	 * 根据练习场地编号查询练习场地
	 * @param exerciseFloorId
	 * @return
	 */
	public exerciseFloor find_exerciseFloorByexerciseFloorId(String exerciseFloorId);
}
