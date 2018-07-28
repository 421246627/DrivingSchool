package com.drivingSchool.action;

import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;

import com.drivingSchool.service.drivingLicenseCostService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("json-default")
@Namespace("/drivingLicenseCostAction")
@Order(1)
public class drivingLicenseCostAction extends ActionSupport 
{
	private static final long serialVersionUID = 1L;
	private ActionContext actioncontext=ActionContext.getContext();
	private Map<String,Object> request=(Map<String,Object>) actioncontext.get("request");
	@Autowired
	private drivingLicenseCostService drivingLicenseCostservice;
	@Action(value="find_drivingLicenseCostThree",results={@Result(name="success",type="chain",params={"namespace","/otherCostAction"},location="find_otherCost")})
	public String find_drivingLicenseCostThree()
	{
		request.put("drivingLicenseCosts",drivingLicenseCostservice.find_drivingLicenseCostThree());
		return SUCCESS;
	}
}
