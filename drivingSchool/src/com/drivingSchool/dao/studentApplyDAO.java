package com.drivingSchool.dao;

import java.io.Serializable;
import java.util.List;

import com.drivingSchool.entity.studentApply;

public interface studentApplyDAO
{
	/**
	 * 添加学员注册信息
	 * @param stu
	 * @return
	 */
	public Serializable insert_studentApply(studentApply stu);
	/**
	 * 通过学生编号查询学生注册信息
	 * @param studentApplyId
	 * @return
	 */
	public studentApply find_studentApplyBystudentApplyId(String studentApplyId);
	/**
	 * 修改学生注册信息
	 * @param stu
	 * @return
	 */
	public boolean update_studentApply(studentApply stu);
	/**
	 * 通过用户编号查询学生注册信息
	 * @param userId
	 * @return
	 */
	public List<studentApply> find_studentApplyByuserId(String userId);
	/**
	 * 通过支付宝订单编号查询
	 * @param alipayOrderId
	 * @return
	 */
	public List<studentApply> find_studentApplyByalipayOrderId(String alipayOrderId);
}
