package com.drivingSchool.dao;

import java.util.List;

import com.drivingSchool.entity.drivingLicenseType;

public interface drivingLicenseTypeDAO 
{
	/**
	 * 查询全部驾照类型
	 * @return
	 */
	public List<drivingLicenseType> find_drivingLicenseType();
}
