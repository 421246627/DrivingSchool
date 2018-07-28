package com.drivingSchool.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.drivingSchool.entity.otherCost;

@Repository
public interface otherCostDAO
{
	public List<otherCost> find_otherCost();
}
