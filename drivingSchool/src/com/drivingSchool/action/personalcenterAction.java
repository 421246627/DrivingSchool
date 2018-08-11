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
import com.drivingSchool.service.studentApplyService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("json-default")
@Namespace("/personalcenterAction")
@Order(1)
public class personalcenterAction extends ActionSupport 
{
	private static final long serialVersionUID = 1L;
	@Autowired
	private studentApplyService studentapplyservice;
	private ActionContext actioncontext=ActionContext.getContext();
	private Map<String,Object> session=actioncontext.getSession();
	@SuppressWarnings("unchecked")
	private Map<String,Object> request=(Map<String, Object>) actioncontext.get("request");
	@Action(value="load_personalcenter",results={@Result(name="success",location="/body/personalcenter.jsp")})
	public String load_personalcenter()
	{
		users user=(users) session.get("user");
		studentApply stu=studentapplyservice.find_studentApplyByuserId(user.getUserId());
		request.put("studentApply",stu);
		return SUCCESS;
	}
}
