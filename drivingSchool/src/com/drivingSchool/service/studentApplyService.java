package com.drivingSchool.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.drivingSchool.daoimpl.studentApplyDAOImpl;
import com.drivingSchool.entity.studentApply;

@Service
@Transactional
public class studentApplyService
{
	@Autowired
	private studentApplyDAOImpl studentApplydaoimpl;
	public Serializable insert_studentApply(studentApply stu)
	{
		return studentApplydaoimpl.insert_studentApply(stu);
	}
	public studentApply find_studentApplyBystudentApplyId(String studentApplyId)
	{
		return studentApplydaoimpl.find_studentApplyBystudentApplyId(studentApplyId);
	}
	public boolean update_studentApply(studentApply stu)
	{
		return studentApplydaoimpl.update_studentApply(stu);
	}
	public studentApply find_studentApplyByuserId(String userId)
	{
		List<studentApply> list=studentApplydaoimpl.find_studentApplyByuserId(userId);
		if(null!=list&&0<list.size())
		{
			return list.get(0);
		}
		else
		{
			return null;
		}
	}
	public studentApply find_studentApplyByalipayOrderId(String alipayOrderId)
	{
		List<studentApply> list=studentApplydaoimpl.find_studentApplyByalipayOrderId(alipayOrderId);
		if(null!=list&&0<list.size())
		{
			return list.get(0);
		}
		else
		{
			return null;
		}
	}
}
