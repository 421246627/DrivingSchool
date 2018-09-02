package com.drivingSchool.dao;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import com.drivingSchool.entity.practiceDriving;

public interface practiceDrivingDAO 
{
	/**
	 * 根据教练编号,订单状态查询预约信息
	 * @return
	 */
	public List<Object[]> find_practiceDriving(String coachId,String stateId);
	/**
	 * 通过自定义参数,查询预约信息
	 * @param sql
	 * @param params
	 * @return
	 */
	public List<Object[]> find_practiceDrivingByparams(String sql,Object...params);
	/**
	 * 通过预约年月日查询预约时间信息
	 * @param coachId
	 * @param appointmentDate
	 * @return
	 */
	public List<Object[]> find_practiceDrivingByappointmentDate(String coachId,Date appointmentDate,String stateId);
	/**
	 * 通过预约年月日和订单状态查询预约信息
	 * @param coachId
	 * @param appointmentDate
	 * @param stateId
	 * @return
	 */
	public List<Object[]> find_practiceDrivingByappointmentDateAndparams(String sql,Object...params);
	/**
	 * 通过学员编号,预约班别,订单状态,查询订单
	 * @param userId
	 * @return
	 */
	public List<practiceDriving> find_practiceDrivingBystudentApplyId(String studentApplyId,String classTypesId,String stateId);
	/**
	 * 通过预约编号查询
	 * @param practiceDrivingId
	 * @return
	 */
	public practiceDriving find_practiceDrivingBypracticeDrivingId(String practiceDrivingId);
	/**
	 * 修改订单
	 * @param p
	 * @return
	 */
	public boolean update_practiceDriving(practiceDriving p);
	/**
	 * 添加预约练车订单
	 * @param p
	 * @return
	 */
	public Serializable insert_practiceDriving(practiceDriving p);
	/**
	 * 根据自定义参数查询订单信息
	 * @param hql
	 * @param params
	 * @return
	 */
	public List<practiceDriving> find_practiceDrivingBystudentApplyId(String hql,Object...params);
	/**
	 * 根据教练编号,日期和小时,状态查询预约练车订单信息
	 * @param coachId
	 * @param appointmentDate
	 * @param stateId
	 * @return
	 */
	public List<Object[]> find_practiceDrivingByappointmentDateAndHours(String coachId,Date appointmentDate,String stateId);
	/**
	 * 根据教练编号,日期和小时,状态,学生编号查询预约练车订单信息
	 * @param coachId
	 * @param appointmentDate
	 * @param stateId
	 * @param studentApplyId
	 * @return
	 */
	public List<Object[]> find_practiceDrivingByappointmentDateAndHoursAndstudentApplyId(String coachId,Date appointmentDate,String stateId,String studentApplyId);
	/**
	 * 根据学生编号,班别类型查询
	 * @param studentApplyId
	 * @param classTypesId
	 * @return
	 */
	public List<practiceDriving> find_practiceDrivingBystudentApplyIdAndclassTypesId(String studentApplyId,String classTypesId);
}
