package com.drivingSchool.dao;

import java.util.List;

import com.drivingSchool.entity.drivingLicenseCost;

public interface drivingLicenseCostDAO 
{
	/**
	 * 查找前三行驾照价格
	 * @return
	 */
	public List<drivingLicenseCost> find_drivingLicenseCostThree();
}
