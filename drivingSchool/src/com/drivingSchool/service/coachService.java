package com.drivingSchool.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.drivingSchool.daoimpl.coachDAOImpl;
import com.drivingSchool.entity.coach;
import com.drivingSchool.entity.studentApply;

@Service
@Transactional
public class coachService
{
	@Autowired
	private coachDAOImpl coachdaoimpl;
	public List<coach> find_coach(studentApply stu)
	{
		return coachdaoimpl.find_coach(stu.getExerciseFloorId(),stu.getDrivingLicenseTypeId(),stu.getClassTypesId(),stu.getSubjectTypeId());
	}
	public List<coach> find_coachBycondition(coach coach)
	{
		String gender=coach.getGender();
		String subjectTypeId=coach.getSubjectTypeId();
		String drivingLicenseTypeId=coach.getDrivingLicenseTypeId();
		String exerciseFloorId=coach.getExerciseFloorId();
		StringBuilder hql=new StringBuilder();
		Map<String,Object>map=new HashMap<String,Object>();
		hql.append("from coach where stateId=:stateId and coachTypeId=:coachTypeId");
		map.put("stateId","cf1cf627-2cdd-4f62-b3ee-4c3ffd377d05");
		if(gender!=null&&gender!="")
		{
			hql.append(" and gender=:gender ");
			map.put("gender",gender);
		}
		if(subjectTypeId!=null&&subjectTypeId!="")
		{
			hql.append(" and subjectTypeId=:subjectTypeId ");
			map.put("subjectTypeId",subjectTypeId);
		}
		if(drivingLicenseTypeId!=null&&drivingLicenseTypeId!="")
		{
			hql.append(" and drivingLicenseTypeId=:drivingLicenseTypeId ");
			map.put("drivingLicenseTypeId",drivingLicenseTypeId);
		}
		if(exerciseFloorId!=null&&exerciseFloorId!="")
		{
			hql.append(" and exerciseFloorId=:exerciseFloorId");
			map.put("exerciseFloorId",exerciseFloorId);
		}
		return coachdaoimpl.find_coachBycondition(hql.toString(),map);
	}
	public coach find_coachBycoachId(String coachId)
	{
		return coachdaoimpl.find_coachBycoachId(coachId);
	}
}
