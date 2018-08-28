package com.drivingSchool.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.drivingSchool.daoimpl.orderInfoDAOImpl;
import com.drivingSchool.entity.orderInfo;

@Service
@Transactional
public class orderInfoService
{
	@Autowired
	private orderInfoDAOImpl orderInfodaoimpl;
	/**
	 * 添加订单信息
	 * @param o
	 * @return
	 */
	public Serializable insert_orderInfo(orderInfo o)
	{
		return orderInfodaoimpl.insert_orderInfo(o);
	}
	/**
	 *  通过学生编号,订单类型编号查询订单信息
	 * @param studentApplyId
	 * @param orderTypeId
	 * @return
	 */
	public orderInfo find_orderInfoBystudentApplyId(String studentApplyId,String orderTypeId)
	{
		List<orderInfo> list=orderInfodaoimpl.find_orderInfoBystudentApplyId(studentApplyId, orderTypeId);
		if(null!=list&&0<list.size())
			return list.get(0);
		else
			return null;
	}
	/**
	 *  修改订单信息
	 * @param o
	 * @return
	 */
	public boolean update_orderInfo(orderInfo o) 
	{
		return orderInfodaoimpl.update_orderInfo(o);
	}
	/**
	 * 通过支付宝订单号查询订单信息
	 * @param alipayOrderId
	 * @return
	 */
	public orderInfo find_orderInfoByalipayOrderId(String alipayOrderId)
	{
		List<orderInfo> list=orderInfodaoimpl.find_orderInfoByalipayOrderId(alipayOrderId);
		if(null!=list&&0<list.size())
		return list.get(0);
		else
		return null;
	}
	/**
	 * 通过订单类型编号,学生编号,状态编号查询订单
	 * @param orderTypeId
	 * @param studentApplyId
	 * @param stateId
	 * @return
	 */
	public orderInfo find_orderInfoByorderTypeIdAndstudentApplyIdAndstateId(String orderTypeId, String studentApplyId, String stateId) 
	{
		List<orderInfo> list=orderInfodaoimpl.find_orderInfoByorderTypeIdAndstudentApplyIdAndstateId(orderTypeId, studentApplyId, stateId);
		if(null!=list&&0<list.size())
		return list.get(0);
		else
		return null;
	}
}
