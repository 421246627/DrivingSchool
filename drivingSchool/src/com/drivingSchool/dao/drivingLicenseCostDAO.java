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
	/**
	 * 查找驾照价格
	 * @return
	 */
	public List<drivingLicenseCost> find_drivingLicenseCost();
	/**
	 * 根据驾照价格编号查询驾照价格
	 * @param drivingLicenseCostId
	 * @return
	 */
	public  drivingLicenseCost find_drivingLicenseCostBydrivingLicenseCostId(String drivingLicenseCostId);
	/**
	 * 通过驾照类型编号及班级类型编号查询驾照价格
	 * @param drivingLicenseTypeId
	 * @param ClassTypesId
	 * @return
	 */
	public List<drivingLicenseCost> find_drivingLicenseCostBydrivingLicenseCostIdAndClassTypesId(String drivingLicenseTypeId,String ClassTypesId);
}
