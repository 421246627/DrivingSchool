package com.drivingSchool.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.drivingSchool.dao.exerciseFloorDAO;
import com.drivingSchool.entity.exerciseFloor;
import com.drivingSchool.util.BaseDAO;

@Repository
public class exerciseFloorDAOImpl extends BaseDAO implements exerciseFloorDAO
{

	@Override
	public List<exerciseFloor> find_exerciseFloor() 
	{
		String hql="from exerciseFloor";
		return super.query_executeFind(hql, null);
	}

	@Override
	public exerciseFloor find_exerciseFloorByexerciseFloorId(
			String exerciseFloorId) 
	{
		return super.get(exerciseFloor.class,exerciseFloorId);
	}

}
