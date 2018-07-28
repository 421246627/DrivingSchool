package com.drivingSchool.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.drivingSchool.daoimpl.otherCostDAOImpl;
import com.drivingSchool.entity.otherCost;

@Service
@Transactional
public class otherCostService 
{
	@Autowired
	private otherCostDAOImpl otherCostdaoimpl;
	public List<otherCost> find_otherCost()
	{
		return otherCostdaoimpl.find_otherCost();
	}
}
