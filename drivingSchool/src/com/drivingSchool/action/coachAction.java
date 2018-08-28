package com.drivingSchool.action;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.drivingSchool.service.coachService;
import com.drivingSchool.service.drivingLicenseCostService;
import com.drivingSchool.service.drivingLicenseTypeService;
import com.drivingSchool.service.exerciseFloorService;
import com.drivingSchool.service.practiceDrivingService;
import com.drivingSchool.service.studentApplyService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.drivingSchool.service.subjectTypeService;
import com.drivingSchool.entity.coach;
import com.drivingSchool.entity.practiceDriving;
import com.drivingSchool.entity.studentApply;
import com.drivingSchool.entity.users;
@ParentPackage("json-default")
@Namespace("/coachAction")
public class coachAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	@Autowired
	private exerciseFloorService exercisefloorservice;
	@Autowired
	private subjectTypeService subjecttypeservice;
	@Autowired
	private drivingLicenseTypeService drivinglicensetypeservice;
	@Autowired
	private coachService coachdaoservice;
	@Autowired
	private practiceDrivingService practicedrivingservice;
	@Autowired
	private drivingLicenseCostService drivinglicensecostIdservice;
	@Autowired
	private studentApplyService studentapplyservice;
	private ActionContext context=ActionContext.getContext();
	@SuppressWarnings("unchecked")
	private Map<String,Object>request=(Map<String, Object>)context.get("request");
	private Map<String,Object>session=context.getSession();
	private coach coach;
	private String coachId;
	private String appointmentDate;
	private Map<String,Object>appointmentDates;
	@Action(value="load_coach",results={@Result(name="success",location="/body/coachs.jsp"),@Result(name="error",type="chain",params={"namespace","/drivingLicenseCostAction"},location="find_drivingLicenseCostThree")})
	public String load_coach()
	{
		try
		{
			users user=(users) session.get("user");
			studentApply stu=studentapplyservice.find_studentApplyByuserId(user.getUserId());
			if(stu.getClassTypesId()!=null&&!stu.getClassTypesId().equals("2eacb980-478b-46e2-a9b4-b4369950a1cd"))
			{
				List<practiceDriving> plist=practicedrivingservice.find_practiceDrivingBystudentApplyAndstates(stu.getStudentApplyId(),stu.getClassTypesId());
				if(plist!=null&&0<plist.size())
				request.put("practiceDriving",plist.get(0));
				else
				request.put("coachs",coachdaoservice.find_coach(stu));
				studentApply s=stu;
				s.setClassTypesId("2eacb980-478b-46e2-a9b4-b4369950a1cd");
				request.put("OneToOnecoachs",coachdaoservice.find_coach(stu));
			}
			else
			{
				request.put("coachs",coachdaoservice.find_coach(stu));
			}
			return SUCCESS;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return ERROR;
		}
	}
	//coachs.jsp页面的查询教练条件,现已不用
	/*@Action(value="find_coachBycondition",results={@Result(name="success",location="/body/coachs.jsp"),@Result(name="error",type="chain",params={"namespace","/drivingLicenseCostAction"},location="find_drivingLicenseCostThree")})
	public String find_coachBycondition()
	{
		try
		{
			request.put("exerciseFloors",exercisefloorservice.find_exerciseFloor());
			request.put("subjectTypes",subjecttypeservice.find_subjectType());
			request.put("drivingLicenseTypes",drivinglicensetypeservice.find_drivingLicenseType());
			request.put("coachs",coachdaoservice.find_coachBycondition(coach));
			return SUCCESS;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return ERROR;
		}
	}*/
	@Action(value="find_coachBycoachId",results={@Result(name="success",location="/body/coach.jsp"),@Result(name="error",type="chain",location="find_drivingLicenseCostThree")})
	public String find_coachBycoachId()
	{
		try
		{
			coach c=coachdaoservice.find_coachBycoachId(coachId);
			if(c.getClassTypesId()!=null&&c.getClassTypesId().equals("2eacb980-478b-46e2-a9b4-b4369950a1cd"))
			{
				users user=(users) session.get("user");
				studentApply stu=studentapplyservice.find_studentApplyByuserId(user.getUserId());
				request.put("coach",c);
				request.put("practiceDrivingappointmentDate",practicedrivingservice.find_practiceDriving_appointmentDate(coachId,stu.getStudentApplyId()));
			}
			else
			{
				request.put("coach",c);
				List <Map<String,Object>> list=practicedrivingservice.find_appointmentTime(coachId);
				request.put("dates",list.get(0));
				request.put("dateresult",list.get(1));
			}
			return SUCCESS;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return ERROR;
		}
	}
	@Action(value="find_practiceDriving_appointmentDate",results={@Result(name="success",type="json",params={"root","appointmentDates"})})
	public String find_practiceDriving_appointmentDate() throws ParseException
	{
		users user=(users) session.get("user");
		studentApply stu=studentapplyservice.find_studentApplyByuserId(user.getUserId());
		appointmentDates=practicedrivingservice.find_practiceDrivingByappointmentDates(coachId,appointmentDate,stu.getStudentApplyId());
		return SUCCESS;
	}
	public coach getCoach() {
		return coach;
	}
	public void setCoach(coach coach) {
		this.coach = coach;
	}
	public String getCoachId() {
		return coachId;
	}
	public void setCoachId(String coachId) {
		this.coachId = coachId;
	}
	public String getAppointmentDate() {
		return appointmentDate;
	}
	public void setAppointmentDate(String appointmentDate) {
		this.appointmentDate = appointmentDate;
	}
	public Map<String, Object> getAppointmentDates() {
		return appointmentDates;
	}
	public void setAppointmentDates(Map<String, Object> appointmentDates) {
		this.appointmentDates = appointmentDates;
	}
}
