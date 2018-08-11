package com.drivingSchool.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.drivingSchool.daoimpl.drivingLicenseCostDAOImpl;
import com.drivingSchool.entity.drivingLicenseCost;

@Service
@Transactional
public class drivingLicenseCostService 
{
	@Autowired
	private drivingLicenseCostDAOImpl drivingLicenseCostdaompl;
	public List<drivingLicenseCost> find_drivingLicenseCostThree()
	{
		return drivingLicenseCostdaompl.find_drivingLicenseCostThree();
	}
	public List<drivingLicenseCost> find_drivingLicenseCost()
	{
		return drivingLicenseCostdaompl.find_drivingLicenseCost();
	}
	public drivingLicenseCost find_drivingLicenseCostBydrivingLicenseCost(String drivingLicenseCostId)
	{
		return drivingLicenseCostdaompl.find_drivingLicenseCostBydrivingLicenseCostId(drivingLicenseCostId);
	}
	public drivingLicenseCost find_drivingLicenseCostBydrivingLicenseCostIdAndClassTypesId(String drivingLicenseTypeId, String ClassTypesId) 
	{
		List<drivingLicenseCost>list=drivingLicenseCostdaompl.find_drivingLicenseCostBydrivingLicenseCostIdAndClassTypesId(drivingLicenseTypeId, ClassTypesId);
		if(null!=list&&0<list.size())
		return list.get(0);
		return null;
	}
}
