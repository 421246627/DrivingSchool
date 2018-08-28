package com.drivingSchool.action;

import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;

import com.drivingSchool.entity.studentApply;
import com.drivingSchool.entity.users;
import com.drivingSchool.service.drivingLicenseCostService;
import com.drivingSchool.service.studentApplyService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("json-default")
@Namespace("/drivingLicenseCostAction")
@Order(1)
public class drivingLicenseCostAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	private ActionContext actioncontext=ActionContext.getContext();
	private Map<String,Object> session=actioncontext.getSession();
	@SuppressWarnings("unchecked")
	private Map<String,Object> request=(Map<String,Object>) actioncontext.get("request");
	@Autowired
	private drivingLicenseCostService drivingLicenseCostservice;
	@Autowired
	private studentApplyService studentapplyservice;
	@Action(value="find_drivingLicenseCostThree",results={@Result(name="success",type="chain",params={"namespace","/otherCostAction"},location="find_otherCost")})
	public String find_drivingLicenseCostThree()
	{
		request.put("drivingLicenseCosts",drivingLicenseCostservice.find_drivingLicenseCostThree());
		return SUCCESS;
	}
	@Action(value="find_drivingLicenseCost",results={@Result(name="success",type="chain",params={"namespace","/otherCostAction"},location="find_otherCosts")})
	public String find_drivingLicenseCost()
	{
		users user=(users) session.get("user");
		studentApply stu=studentapplyservice.find_studentApplyByuserId(user.getUserId());
		request.put("studentApply",stu);
		request.put("drivingLicenseCosts",drivingLicenseCostservice.find_drivingLicenseCost());
		return SUCCESS;
	}
}
