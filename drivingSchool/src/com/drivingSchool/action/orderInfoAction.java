package com.drivingSchool.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.alipay.config.AlipayConfig;
import com.drivingSchool.entity.orderInfo;
import com.drivingSchool.entity.otherCost;
import com.drivingSchool.entity.studentApply;
import com.drivingSchool.entity.users;
import com.drivingSchool.service.orderInfoService;
import com.drivingSchool.service.otherCostService;
import com.drivingSchool.service.stateService;
import com.drivingSchool.service.studentApplyService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.drivingSchool.util.encryption;
@ParentPackage("json-default")
@Namespace("/orderInfoAction")
public class orderInfoAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	private ActionContext actioncontext=ActionContext.getContext();
	@SuppressWarnings("unchecked")
	private Map<String,Object> request=(Map<String, Object>) actioncontext.get("request");
	private Map<String,Object> session=actioncontext.getSession();
	private String otherCostId;
	@Autowired
	private orderInfoService orderinfoservice;
	@Autowired
	private otherCostService othercostservice;
	@Autowired
	private studentApplyService studentapplyservice;
	@Autowired
	private encryption encryption;
	@Autowired
	private stateService stateservice;
	@Action(value="insert_orderInfo",results={@Result(name="success",type="chain",params={"namespace","/alipayAction"},location="showAlipayAction"),@Result(name="error",type="chain",params={"namespace","/drivingLicenseCostAction"},location="find_drivingLicenseCost")})
	public String insert_orderInfo()
	{
		users user=(users) session.get("user");
		studentApply stu=studentapplyservice.find_studentApplyByuserId(user.getUserId());
		otherCost othercost=othercostservice.find_otherCostByotherCostId(otherCostId);
		orderInfo orderinfo=orderinfoservice.find_orderInfoByorderTypeIdAndstudentApplyIdAndstateId(othercost.getOrderTypeId(),stu.getStudentApplyId(),"554a242a-b6a1-491f-bf95-2f3b9bd4cef2");
		if(null!=orderinfo)//如果有之前未支付的订单,则使用之前的订单
		{
			orderinfo.setOrderInfoName(othercost.getOtherCostName());
			orderinfo.setOrderInfoPrice(othercost.getPrice());
			orderinfo.setAlipayOrderId(encryption.getUUID());//重新更新支付宝订单信息
			if(orderinfoservice.update_orderInfo(orderinfo))
			{
				request.put("WIDout_trade_no",orderinfo.getAlipayOrderId());//支付宝订单编号
				request.put("WIDsubject",orderinfo.getOrderInfoName());//支付宝订单名称
				request.put("WIDtotal_amount",orderinfo.getOrderInfoPrice());//支付宝订单价格
				request.put("return_url",AlipayConfig.studentApplyreturn_url);//回调地址
				return SUCCESS;
			}
			else
			{
				request.put("otherCostAlipayresult","false");
				return ERROR;
			}
		}
		else
		{
			orderinfo=new orderInfo();
			orderinfo.setOrderInfoId(encryption.getUUID());
			orderinfo.setOrderInfoName(othercost.getOtherCostName());
			orderinfo.setOrderInfoPrice(othercost.getPrice());
			orderinfo.setOrderTypeId(othercost.getOrderTypeId());
			orderinfo.setAlipayOrderId(encryption.getUUID());
			orderinfo.setStudentApplyId(stu.getStudentApplyId());
			orderinfo.setState(stateservice.find_stateBystateId("554a242a-b6a1-491f-bf95-2f3b9bd4cef2"));
			if(null!=orderinfoservice.insert_orderInfo(orderinfo))
			{
				request.put("WIDout_trade_no",orderinfo.getAlipayOrderId());//支付宝订单编号
				request.put("WIDsubject",orderinfo.getOrderInfoName());//支付宝订单名称
				request.put("WIDtotal_amount",orderinfo.getOrderInfoPrice());//支付宝订单价格
				request.put("return_url",AlipayConfig.otherCostreturn_url);//回调地址
				return SUCCESS;
			}
			else
			{
				request.put("otherCostAlipayresult","false");
				return ERROR;
			}
		}
	}
	@Action(value="find_orderInfoBystudentApplyId",results={@Result(name="success",location="/body/orderInfo.jsp")})
	public String find_orderInfoBystudentApplyId()
	{
		users user=(users) session.get("user");
		studentApply stu=studentapplyservice.find_studentApplyByuserId(user.getUserId());
		List<orderInfo>list=orderinfoservice.find_orderInfoBystudentApplyId(stu.getStudentApplyId());
		request.put("orderInfos",list);
		return SUCCESS;
	}
	public String getOtherCostId() {
		return otherCostId;
	}
	public void setOtherCostId(String otherCostId) {
		this.otherCostId = otherCostId;
	}
}
