package com.drivingSchool.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;

import com.drivingSchool.service.exerciseFloorService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("json-default")
@Namespace("/exerciseFloorAction")
@Order(1)
public class exerciseFloorAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	@Autowired
	private exerciseFloorService exerciseflooractionservice;
	private HttpServletRequest request=ServletActionContext.getRequest();
	@Action(value="find_exerciseFloor",results={@Result(name="success",location="/body/studentApply.jsp")})
	public String find_exerciseFloor()
	{
		request.setAttribute("drivingLicenseCostId",request.getParameter("drivingLicenseCostId"));
		request.setAttribute("exerciseFloors",exerciseflooractionservice.find_exerciseFloor());
		return SUCCESS;
	}
}
