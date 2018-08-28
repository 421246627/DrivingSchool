package com.drivingSchool.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.drivingSchool.dao.drivingLicenseTypeDAO;
import com.drivingSchool.entity.drivingLicenseType;
import com.drivingSchool.util.BaseDAO;
@Repository
public class drivingLicenseTypeDAOImpl extends BaseDAO implements drivingLicenseTypeDAO
{
	@Override
	public List<drivingLicenseType> find_drivingLicenseType()
	{
		String hql="from drivingLicenseType";
		return super.query_executeFind(hql,null);
	}

}
