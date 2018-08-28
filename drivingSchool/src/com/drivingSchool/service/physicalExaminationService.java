package com.drivingSchool.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.drivingSchool.daoimpl.physicalExaminationDAOImpl;
import com.drivingSchool.entity.physicalExamination;

@Service
@Transactional
public class physicalExaminationService 
{
	@Autowired
	private physicalExaminationDAOImpl physicalExaminationdaoimpl;
	/**
	 * 添加预约体检信息
	 * @param p
	 * @return
	 */
	public boolean insert_physicalExaminationId(physicalExamination p)
	{
		Serializable physicalExaminationId=physicalExaminationdaoimpl.insert_physicalExamination(p);
		if(null!=physicalExaminationId)
		return true;
		else
		return false;
	}
	public physicalExamination find_physicalExaminationByuserId(String userId)
	{
		String hql="from physicalExamination where userId=? and stateId in(?,?)";
		List<physicalExamination> list=physicalExaminationdaoimpl.find_physicalExaminationByuserId(hql,userId,"015b538e-2582-4634-8b63-ab0743b9682f","02c04df1-6333-41a9-b39c-d5ab0963ae15");
		if(null!=list&&0<list.size())
		return list.get(0);
		else
		return null;
	}
	public boolean delete_physicalExaminationByphysicalExaminationId(String physicalExaminationId)
	{
		return physicalExaminationdaoimpl.delete_physicalExaminationByphysicalExaminationId(physicalExaminationId);
	}
	public boolean update_physicalExamination(physicalExamination p)
	{
		return physicalExaminationdaoimpl.update_physicalExamination(p);
	}
	public physicalExamination find_physicalExaminationByphysicalExaminationId(String physicalExaminationId)
	{
		return physicalExaminationdaoimpl.find_physicalExaminationByphysicalExaminationId(physicalExaminationId);
	}

}
