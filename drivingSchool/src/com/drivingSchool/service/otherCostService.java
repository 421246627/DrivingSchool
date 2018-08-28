package com.drivingSchool.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.drivingSchool.daoimpl.otherCostDAOImpl;
import com.drivingSchool.entity.otherCost;

@Service
@Transactional
public class otherCostService 
{
	@Autowired
	private otherCostDAOImpl otherCostdaoimpl;
	/**
	 * 查询所有其他业务信息
	 * @return
	 */
	public List<otherCost> find_otherCost()
	{
		return otherCostdaoimpl.find_otherCost();
	}
	/**
	 * 根据其他业务编号查询
	 * @param otherCostId
	 * @return
	 */
	public otherCost find_otherCostByotherCostId(String otherCostId) 
	{
		return otherCostdaoimpl.find_otherCostByotherCostId(otherCostId);
	}
}
