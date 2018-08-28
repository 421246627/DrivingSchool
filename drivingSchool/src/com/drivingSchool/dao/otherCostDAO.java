package com.drivingSchool.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.drivingSchool.entity.otherCost;

@Repository
public interface otherCostDAO
{
	/**
	 * 查询所有其他业务信息
	 * @return
	 */
	public List<otherCost> find_otherCost();
	/**
	 * 根据其他业务编号查询
	 * @param otherCostId
	 * @return
	 */
	public otherCost find_otherCostByotherCostId(String otherCostId);
}
