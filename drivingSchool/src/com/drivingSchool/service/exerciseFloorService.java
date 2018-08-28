package com.drivingSchool.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.drivingSchool.daoimpl.exerciseFloorDAOImpl;
import com.drivingSchool.entity.exerciseFloor;

@Service
@Transactional
public class exerciseFloorService 
{
	@Autowired
	private exerciseFloorDAOImpl exercisefloordaoimpl;
	public List<exerciseFloor> find_exerciseFloor()
	{
		return exercisefloordaoimpl.find_exerciseFloor();
	}
	public exerciseFloor find_exerciseFloorByexerciseFloorId(String exerciseFloorId)
	{
		return exercisefloordaoimpl.find_exerciseFloorByexerciseFloorId(exerciseFloorId);
	}
}
