package com.drivingSchool.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.drivingSchool.entity.drivingLicenseCost;
import com.drivingSchool.entity.exerciseFloor;
import com.drivingSchool.entity.studentApply;
import com.drivingSchool.entity.subjectType;
import com.drivingSchool.entity.users;
import com.drivingSchool.service.drivingLicenseCostService;
import com.drivingSchool.service.exerciseFloorService;
import com.drivingSchool.service.studentApplyService;
import com.drivingSchool.service.subjectTypeService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("json-default")
@Namespace("/drivingLicenseMessageAction")
public class drivingLicenseMessageAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	private ActionContext actiontext=ActionContext.getContext();
	@SuppressWarnings("unchecked")
	private Map<String,Object> request=(Map<String, Object>) actiontext.get("request");
	private Map<String,Object> session=actiontext.getSession();
	@Autowired
	private studentApplyService studentapplyservice;
	@Autowired
	private exerciseFloorService exercisefloorservice;
	@Autowired
	private drivingLicenseCostService drivinglicensecostservice;
	@Autowired
	private subjectTypeService subjecttypeservice;
	@Action(value="load_drivingLicenseMessageAction",results={@Result(name="success",location="/body/drivingLicenseMessage.jsp")})
	public String load_drivingLicenseMessageAction()
	{
		users user=(users) session.get("user");
		studentApply stu=studentapplyservice.find_studentApplyByuserId(user.getUserId());
		request.put("studentApply",stu);
		if(!stu.getStateId().equals("554a242a-b6a1-491f-bf95-2f3b9bd4cef2"))
		{
			subjectType sub=subjecttypeservice.find_subjectTypeBysubjectTypeId(stu.getSubjectTypeId());
			request.put("subjectType",sub);
		}
		List<exerciseFloor> exerciseFloorlist=exercisefloorservice.find_exerciseFloor();
		List<drivingLicenseCost>drivingLicenseCostlist=drivinglicensecostservice.find_drivingLicenseCost();
		drivingLicenseCost d=drivinglicensecostservice.find_drivingLicenseCostBydrivingLicenseCostIdAndClassTypesId(stu.getDrivingLicenseTypeId(),stu.getClassTypesId());
		request.put("exerciseFloors",exerciseFloorlist);
		request.put("drivingLicenseCosts",drivingLicenseCostlist);
		request.put("drivingLicenseCost",d);
		return SUCCESS;
	}
}
