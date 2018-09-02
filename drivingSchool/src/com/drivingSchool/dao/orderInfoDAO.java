package com.drivingSchool.dao;

import java.io.Serializable;
import java.util.List;

import com.drivingSchool.entity.orderInfo;

public interface orderInfoDAO 
{
	/**
	 * 添加订单信息
	 * @param o
	 * @return
	 */
	public Serializable insert_orderInfo(orderInfo o);
	/**
	 *  通过学生编号,订单类型编号查询订单信息
	 * @param studentApplyId
	 * @param orderTypeId
	 * @return
	 */
	public List<orderInfo> find_orderInfoBystudentApplyId(String studentApplyId,String orderTypeId);
	/**
	 * 修改订单信息
	 * @param o
	 * @return
	 */
	public boolean update_orderInfo(orderInfo o);
	/**
	 * 通过支付宝订单号查询订单信息
	 * @param alipayOrderId
	 * @return
	 */
	public List<orderInfo> find_orderInfoByalipayOrderId(String alipayOrderId);
	/**
	 * 通过订单类型编号,学生编号,状态编号查询订单
	 * @param orderTypeId
	 * @param studentApplyId
	 * @param stateId
	 * @return
	 */
	public List<orderInfo> find_orderInfoByorderTypeIdAndstudentApplyIdAndstateId(String orderTypeId,String studentApplyId,String stateId);
	/**
	 * 根据学生编号查询
	 * @param studentApplyId
	 * @return
	 */
	public List<orderInfo> find_orderInfoBystudentApplyId(String studentApplyId);
}