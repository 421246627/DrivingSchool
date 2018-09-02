package com.drivingSchool.daoimpl;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.drivingSchool.dao.practiceDrivingDAO;
import com.drivingSchool.entity.practiceDriving;
import com.drivingSchool.util.BaseDAO;
@Repository
public class practiceDrivingDAOImpl extends BaseDAO implements practiceDrivingDAO
{
	@Override
	public List<Object[]> find_practiceDriving(String coachId,String stateId) 
	{
		String sql="select * from practiceDriving where coachId=? and stateId=? and to_char(appointmentDate,'yyyy-MM-dd')=to_char(sysdate,'yyyy-MM-dd')";
		return super.sqlquery_executeFind(sql,null,coachId,stateId);
	}

	@Override
	public List<Object[]> find_practiceDrivingByappointmentDate(String coachId,Date appointmentDate,String stateId)
	{
		String sql="select * from practiceDriving where coachId=? and stateId=? and to_char(appointmentDate,'yyyy-MM-dd')=to_char(?,'yyyy-MM-dd')";
		return super.sqlquery_executeFind(sql,null,coachId,stateId,appointmentDate);
	}

	@Override
	public List<practiceDriving> find_practiceDrivingBystudentApplyId(String studentApplyId,String classTypesId,String stateId) 
	{
		String hql="from practiceDriving where studentApplyId=? and classTypesId=? and stateId=?";
		return super.query_executeFind(hql,null,studentApplyId,classTypesId,stateId);
	}

	@Override
	public practiceDriving find_practiceDrivingBypracticeDrivingId(String practiceDrivingId) 
	{
		return super.get(practiceDriving.class,practiceDrivingId);
	}
	@Override
	public boolean update_practiceDriving(practiceDriving p) 
	{
		return super.update(p);
	}

	@Override
	public Serializable insert_practiceDriving(practiceDriving p) 
	{
		return super.save(p);
	}

	@Override
	public List<practiceDriving> find_practiceDrivingBystudentApplyId(
			String hql,Object... params) 
	{
		return super.query_executeFind(hql,null,params);
	}

	@Override
	public List<Object[]> find_practiceDrivingByappointmentDateAndHours(String coachId, Date appointmentDate, String stateId) 
	{
		String sql="select * from practiceDriving where coachId=? and stateId=? and to_char(appointmentDate,'yyyy-MM-dd hh24')=to_char(?,'yyyy-MM-dd hh24')";
		return super.sqlquery_executeFind(sql,null,coachId,stateId,appointmentDate);
	}

	@Override
	public List<Object[]> find_practiceDrivingByappointmentDateAndHoursAndstudentApplyId(String coachId, Date appointmentDate, String stateId,String studentApplyId)
	{
		String sql="select * from practiceDriving where coachId=? and stateId=? and studentApplyId=? and to_char(appointmentDate,'yyyy-MM-dd hh24')=to_char(?,'yyyy-MM-dd hh24')";
		return super.sqlquery_executeFind(sql,null,coachId,stateId,studentApplyId,appointmentDate);
	}

	@Override
	public List<Object[]> find_practiceDrivingByparams(String sql,Object... params) 
	{
		return super.sqlquery_executeFind(sql,null,params);
	}

	@Override
	public List<Object[]> find_practiceDrivingByappointmentDateAndparams(String sql,Object... params) 
	{
		return super.sqlquery_executeFind(sql,null,params);
	}

	@Override
	public List<practiceDriving> find_practiceDrivingBystudentApplyIdAndclassTypesId(String studentApplyId, String classTypesId)
	{
		String hql="from practiceDriving where studentApplyId=? and classTypesId=?";
		return super.query_executeFind(hql,null,studentApplyId,classTypesId);
	}
	
}
