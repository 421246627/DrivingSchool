package com.drivingSchool.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.drivingSchool.dao.drivingLicenseCostDAO;
import com.drivingSchool.entity.drivingLicenseCost;
import com.drivingSchool.util.BaseDAO;

@Repository
public class drivingLicenseCostDAOImpl extends BaseDAO implements  drivingLicenseCostDAO
{

	@Override
	public List<drivingLicenseCost> find_drivingLicenseCostThree() 
	{
		String hql="from drivingLicenseCost";
		return super.query_executeFindByPage(hql,3,1,null);
	}

}
