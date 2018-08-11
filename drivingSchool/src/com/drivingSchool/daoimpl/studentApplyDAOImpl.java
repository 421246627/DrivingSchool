package com.drivingSchool.daoimpl;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.drivingSchool.dao.studentApplyDAO;
import com.drivingSchool.entity.studentApply;
import com.drivingSchool.util.BaseDAO;

@Repository
public class studentApplyDAOImpl extends BaseDAO implements studentApplyDAO
{

	@Override
	public Serializable insert_studentApply(studentApply stu)
	{
		return super.save(stu);
	}

	@Override
	public studentApply find_studentApplyBystudentApplyId(String studentApplyId)
	{
		return super.get(studentApply.class,studentApplyId);
	}

	@Override
	public boolean update_studentApply(studentApply stu) 
	{
		return super.update(stu);
	}

	@Override
	public List<studentApply> find_studentApplyByuserId(String userId) 
	{
		String hql="from studentApply where userId=?";
		return super.query_executeFind(hql, null,userId);
	}

	@Override
	public List<studentApply> find_studentApplyByalipayOrderId(String alipayOrderId) 
	{
		String hql="from studentApply where alipayOrderId=?";
		return super.query_executeFind(hql,null,alipayOrderId);
	}
}
