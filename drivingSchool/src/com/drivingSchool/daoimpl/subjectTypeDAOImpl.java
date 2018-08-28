package com.drivingSchool.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.drivingSchool.dao.subjectTypeDAO;
import com.drivingSchool.entity.subjectType;
import com.drivingSchool.util.BaseDAO;
@Repository
public class subjectTypeDAOImpl extends BaseDAO implements subjectTypeDAO
{
	@Override
	public List<subjectType> find_subjectType() 
	{
		String hql="from subjectType";
		return super.query_executeFind(hql,null);
	}

	@Override
	public subjectType find_subjectTypeBysubjectTypeId(String subjectTypeId) 
	{
		return super.get(subjectType.class,subjectTypeId);
	}

}
