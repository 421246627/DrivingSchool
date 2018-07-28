package com.drivingSchool.action;

import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;

import com.drivingSchool.service.otherCostService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("json-default")
@Namespace("/otherCostAction")
@Order(1)
public class otherCostAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	private ActionContext actioncontext=ActionContext.getContext();
	private Map<String,Object> request=(Map<String, Object>) actioncontext.get("request");
	@Autowired
	private otherCostService otherCostservice;
	@Action(value="find_otherCost",results={@Result(name="success",location="/index.jsp")})
	public String find_otherCost()
	{
		request.put("otherCosts",otherCostservice.find_otherCost());
		return SUCCESS;
	}
}
