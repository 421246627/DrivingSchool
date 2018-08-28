package com.drivingSchool.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.drivingSchool.entity.coach;
import com.drivingSchool.entity.practiceDriving;
import com.drivingSchool.entity.studentApply;
import com.drivingSchool.entity.users;
import com.drivingSchool.service.coachService;
import com.drivingSchool.service.practiceDrivingService;
import com.drivingSchool.service.studentApplyService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@ParentPackage("json-default")
@Namespace("/practiceDrivingAction")
public class practiceDrivingAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	private practiceDriving practicedriving;
	@Autowired
	private practiceDrivingService practicedrivingservice;
	@Autowired
	private studentApplyService studentapplyservice;
	@Autowired
	private coachService coachservice;
	private ActionContext actioncontext=ActionContext.getContext();
	@SuppressWarnings("unchecked")
	private Map<String,Object> request=(Map<String, Object>) actioncontext.get("request");
	private Map<String,Object> session=actioncontext.getSession();
	private String coachId;
	private String appointmentDate;
	@Action(value="Cancel_practiceDriving",results={@Result(name="success",type="chain",params={"namespace","/coachAction"},location="load_coach"),@Result(name="error",type="chain",params={"namespace","/coachAction"},location="load_coach")})
	public String Cancel_practiceDriving()
	{
		try
		{
			if(practicedrivingservice.cancle_practiceDrivingBypracticeDrivingId(practicedriving.getPracticeDrivingId()))
			return SUCCESS;
			else
			request.put("cancel_practiceDrivingresult","false");
			return ERROR;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			request.put("cancel_practiceDrivingresult","false");
			return ERROR;
		}
	}
	@Action(value="commoninsert_practiceDriving",results={@Result(name="success",type="chain",params={"namespace","/coachAction"},location="load_coach"),@Result(name="fullerror",location="/body/coach.jsp"),@Result(name="error",location="/body/coach.jsp")})
	public String commoninsert_practiceDriving() throws Exception
	{

			List <Object[]> list=practicedrivingservice.find_practiceDrivingByappointmentDate(coachId, appointmentDate,"02c04df1-6333-41a9-b39c-d5ab0963ae15");
			if(null!=list&&list.size()>=10)
			{
				coach c=coachservice.find_coachBycoachId(coachId);
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
					List <Map<String,Object>> lists=practicedrivingservice.find_appointmentTime(coachId);
					request.put("dates",lists.get(0));
					request.put("dateresult",lists.get(1));
				}
				request.put("fullerror","true");
				return "fullerror";
			}
			else
			{
				users user=(users) session.get("user");
				studentApply stu=studentapplyservice.find_studentApplyByuserId(user.getUserId());
				coach coach=coachservice.find_coachBycoachId(coachId);
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
				if(practicedrivingservice.insert_practiceDriving(user.getBindEmail(),stu.getStudentApplyId(),coach,sdf.parse(appointmentDate)))
				return SUCCESS;
				else
				{
					coach c=coachservice.find_coachBycoachId(coachId);
					if(c.getClassTypesId()!=null&&c.getClassTypesId().equals("2eacb980-478b-46e2-a9b4-b4369950a1cd"))
					{
						request.put("coach",c);
						request.put("practiceDrivingappointmentDate",practicedrivingservice.find_practiceDriving_appointmentDate(coachId,stu.getStudentApplyId()));
					}
					else
					{
						request.put("coach",c);
						List <Map<String,Object>> lists=practicedrivingservice.find_appointmentTime(coachId);
						request.put("dates",lists.get(0));
						request.put("dateresult",lists.get(1));
					}
					request.put("insertpracticeDrivingresult","false");
					return ERROR;
				}
			}
	}
	@Action(value="OneToOne_insert_practiceDriving",results={@Result(name="success",type="chain",params={"namespace","/coachAction"},location="load_coach"),@Result(name="fullerror",location="/body/coach.jsp"),@Result(name="error",location="/body/coach.jsp"),@Result(name="practiceCarVoucherserror",type="chain",params={"namespace","/drivingLicenseCostAction"},location="find_drivingLicenseCost")})
	public String OneToOne_insert_practiceDriving() throws Exception
	{
		List<Object[]>list1=practicedrivingservice.find_practiceDrivingByappointmentDateAndHours(coachId, appointmentDate,"02c04df1-6333-41a9-b39c-d5ab0963ae15");
		if(null!=list1&&0<list1.size())
		{
			coach c=coachservice.find_coachBycoachId(coachId);
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
				List <Map<String,Object>> lists=practicedrivingservice.find_appointmentTime(coachId);
				request.put("dates",lists.get(0));
				request.put("dateresult",lists.get(1));
			}
			request.put("fullerror","true");
			return "fullerror";
		}
		else
		{
			users user=(users) session.get("user");
			studentApply stu=studentapplyservice.find_studentApplyByuserId(user.getUserId());
			if(stu.getClassTypesId().equals("2eacb980-478b-46e2-a9b4-b4369950a1cd"))
			{
				coach coach=coachservice.find_coachBycoachId(coachId);
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh");
				if(practicedrivingservice.insert_practiceDriving(user.getBindEmail(),stu.getStudentApplyId(),coach,sdf.parse(appointmentDate)))
				return SUCCESS;
				else
				{
					coach c=coachservice.find_coachBycoachId(coachId);
					if(c.getClassTypesId()!=null&&c.getClassTypesId().equals("2eacb980-478b-46e2-a9b4-b4369950a1cd"))
					{
						request.put("coach",c);
						request.put("practiceDrivingappointmentDate",practicedrivingservice.find_practiceDriving_appointmentDate(coachId,stu.getStudentApplyId()));
					}
					else
					{
						request.put("coach",c);
						List <Map<String,Object>> lists=practicedrivingservice.find_appointmentTime(coachId);
						request.put("dates",lists.get(0));
						request.put("dateresult",lists.get(1));
					}
					request.put("insertpracticeDrivingresult","false");
					return ERROR;
				}
			}
			else
			{
				List<practiceDriving>list3=practicedrivingservice.find_practiceDrivingBystudentApplyId(stu.getStudentApplyId(),"2eacb980-478b-46e2-a9b4-b4369950a1cd","015b538e-2582-4634-8b63-ab0743b9682f");
				int i=0;
				if(list3!=null&&0<list3.size())
				i=list3.size();
				if(stu.getPracticeCarVouchers()>i)
				{
					coach coach=coachservice.find_coachBycoachId(coachId);
					SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh");
					if(practicedrivingservice.insert_practiceDriving(user.getBindEmail(),stu.getStudentApplyId(),coach,sdf.parse(appointmentDate)))
					return SUCCESS;
					else
					{
						coach c=coachservice.find_coachBycoachId(coachId);
						if(c.getClassTypesId()!=null&&c.getClassTypesId().equals("2eacb980-478b-46e2-a9b4-b4369950a1cd"))
						{
							request.put("coach",c);
							request.put("practiceDrivingappointmentDate",practicedrivingservice.find_practiceDriving_appointmentDate(coachId,stu.getStudentApplyId()));
						}
						else
						{
							request.put("coach",c);
							List <Map<String,Object>> lists=practicedrivingservice.find_appointmentTime(coachId);
							request.put("dates",lists.get(0));
							request.put("dateresult",lists.get(1));
						}
						request.put("insertpracticeDrivingresult","false");
						return ERROR;
					}
				}
				else
				{
					request.put("practiceCarVoucherserror","true");
					return "practiceCarVoucherserror";
				}
			}
		}
	}
	public practiceDriving getPracticedriving() {
		return practicedriving;
	}
	public void setPracticedriving(practiceDriving practicedriving) {
		this.practicedriving = practicedriving;
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
}
