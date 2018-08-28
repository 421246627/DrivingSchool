package com.drivingSchool.daoimpl;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.drivingSchool.util.BaseDAO;
import com.drivingSchool.dao.orderInfoDAO;
import com.drivingSchool.entity.orderInfo;
@Repository
public class orderInfoDAOImpl extends BaseDAO implements orderInfoDAO
{
	@Override
	public Serializable insert_orderInfo(orderInfo o)
	{
		return super.save(o);
	}

	@Override
	public List<orderInfo> find_orderInfoBystudentApplyId(String studentApplyId,String orderTypeId)
	{
		String hql="from orderInfo where studentApplyId=? and orderTypeId=?";
		return super.query_executeFind(hql,null,studentApplyId,orderTypeId);
	}

	@Override
	public boolean update_orderInfo(orderInfo o) 
	{
		return super.update(o);
	}

	@Override
	public List<orderInfo> find_orderInfoByalipayOrderId(String alipayOrderId) 
	{
		String hql="from orderInfo where alipayOrderId=?";
		return super.query_executeFind(hql,null,alipayOrderId);
	}

	@Override
	public List<orderInfo> find_orderInfoByorderTypeIdAndstudentApplyIdAndstateId(String orderTypeId, String studentApplyId, String stateId) 
	{
		String hql="from orderInfo where orderTypeId=? and studentApplyId=? and stateId=?";
		return super.query_executeFind(hql,null,orderTypeId,studentApplyId,stateId);
	}
}
