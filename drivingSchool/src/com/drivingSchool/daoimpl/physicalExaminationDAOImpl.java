package com.drivingSchool.daoimpl;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.drivingSchool.dao.physicalExaminationDAO;
import com.drivingSchool.entity.physicalExamination;
import com.drivingSchool.util.BaseDAO;

@Repository
public class physicalExaminationDAOImpl extends BaseDAO implements physicalExaminationDAO
{
	@Override
	public Serializable insert_physicalExamination(physicalExamination p) 
	{
		return super.save(p);
	}
	@Override
	public physicalExamination find_physicalExaminationByphysicalExaminationId(String physicalExaminationId)
	{
		return super.get(physicalExamination.class,physicalExaminationId);
	}
	@Override
	public List<physicalExamination> find_physicalExaminationByuserId(String hql,Object...params) 
	{
		return super.query_executeFind(hql,null,params);
	}
	@Override
	public boolean delete_physicalExaminationByphysicalExaminationId(String physicalExaminationId) 
	{
		return super.delete(physicalExamination.class,physicalExaminationId);
	}
	@Override
	public boolean update_physicalExamination(physicalExamination p) 
	{
		return super.update(p);
	}
}
