package com.drivingSchool.daoimpl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.drivingSchool.dao.coachDAO;
import com.drivingSchool.entity.coach;
import com.drivingSchool.util.BaseDAO;
@Repository
public class coachDAOImpl extends BaseDAO implements coachDAO
{
	@Override
	public List<coach> find_coach(String exerciseFloorId,String drivingLicenseTypeId,String ClassTypesId,String subjectTypeId) 
	{
		String hql="from coach where stateId=? and exerciseFloorId=? and drivingLicenseTypeId=? and ClassTypesId=? and subjectTypeId=?";
		return super.query_executeFind(hql,null,"cf1cf627-2cdd-4f62-b3ee-4c3ffd377d05",exerciseFloorId,drivingLicenseTypeId,ClassTypesId,subjectTypeId);
	}
	@Override
	public List<coach> find_coachBycondition(String hql,Map<String,Object>map) 
	{
		return super.query_executeFind(hql,map);
	}
	@Override
	public coach find_coachBycoachId(String coachId) 
	{
		return super.get(coach.class,coachId);
	}
}
