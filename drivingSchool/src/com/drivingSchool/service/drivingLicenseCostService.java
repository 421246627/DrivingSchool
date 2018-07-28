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
}
