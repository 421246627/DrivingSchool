package com.drivingSchool.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.drivingSchool.dao.otherCostDAO;
import com.drivingSchool.entity.otherCost;
import com.drivingSchool.util.BaseDAO;

@Repository
public class otherCostDAOImpl extends BaseDAO implements  otherCostDAO
{
	@Override
	public List<otherCost> find_otherCost() 
	{
		String hql="from otherCost";
		return super.query_executeFind(hql,null);
	}

	@Override
	public otherCost find_otherCostByotherCostId(String otherCostId) 
	{
		return super.get(otherCost.class,otherCostId);
	}

}
