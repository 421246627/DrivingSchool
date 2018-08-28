package com.drivingSchool.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;

import com.drivingSchool.entity.physicalExamination;
import com.drivingSchool.entity.studentApply;
import com.drivingSchool.entity.users;
import com.drivingSchool.service.physicalExaminationService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.drivingSchool.util.Mail;
import com.drivingSchool.util.encryption;
import com.drivingSchool.service.studentApplyService;
@ParentPackage("json-default")
@Namespace("/physicalExaminationAction")
@Order(1)
public class physicalExaminationAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	@Autowired
	private physicalExaminationService physicalExaminationservice;
	@Autowired
	private encryption encryption;
	@Autowired
	private studentApplyService studentApplyService;
	private ActionContext actioncontext=ActionContext.getContext();
	private Map<String,Object> session=actioncontext.getSession();
	@SuppressWarnings("unchecked")
	private Map<String,Object> request=(Map<String, Object>) actioncontext.get("request");
	private String ApplyDate;
	private physicalExamination physicalExaminations;
	@Action(value="load_physicalExamination",results={@Result(name="success",type="dispatcher",location="/body/physicalExamination.jsp")})
	public String load_physicalExamination() throws ParseException
	{
		users user=(users) session.get("user");
		physicalExamination p=physicalExaminationservice.find_physicalExaminationByuserId(user.getUserId());
		studentApply stu=studentApplyService.find_studentApplyByuserId(user.getUserId());
		if(null!=p)
		{
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			int result=encryption.getDateAreequal(p.getApplyDate().toString(),sdf.format(new Date()));
			if(result<0)//判断预约体检时间是否过期,如果过期删除预约体检信息,重新开始预约
			{
					p.setStateId("05308775-93af-4e82-a98d-709eff747c18");
					physicalExaminationservice.update_physicalExamination(p);
					p=null;
			}
		}
		request.put("studentApply",stu);
		request.put("physicalExamination",p);
		return SUCCESS;
	}
	@Action(value="insert_physicalExamination",results={@Result(name="success",type="chain",location="load_physicalExamination"),@Result(name="error",type="chain",location="load_physicalExamination")})
	public String insert_physicalExamination() throws Exception
	{
		physicalExamination p=new physicalExamination();
		p.setPhysicalExaminationId(encryption.getUUID());
		users user=(users)session.get("user");
		p.setUser(user);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		p.setApplyDate(sdf.parse(ApplyDate));
		p.setStateId("015b538e-2582-4634-8b63-ab0743b9682f");
		studentApply stu=studentApplyService.find_studentApplyByuserId(user.getUserId());
		if(physicalExaminationservice.insert_physicalExaminationId(p))
		{
			Mail mail=new Mail();
			//发送邮件
			mail.sendMessages(stu.getEmailAddress(),"<div style='width:800px;margin:auto;'><p style='border-bottom:1px solid #CCCCCC;padding:10px 0px;'><span style='font-family:Montserrat;font-weight:700;letter-spacing:1px;text-transform:uppercase;font-size:25px;'>driving school</span></p><p style='font-size:18px;'>尊敬的用户:</p><p>您已预约体检,请您等待客服确认,谢谢合作!</p><p>体检所需材料:身份证</p><p style='margin-top:50px;border-top:1px solid #CCCCCC;padding:10px 0px;color:#CCCCCC;'>此为系统邮件，请勿回复；?driving school 2004-2018 All Right Reserved</p></div>");
			return SUCCESS;
		}
		else
		return ERROR;
	}
	@Action(value="update_physicalExamination",results={@Result(name="success",type="chain",location="load_physicalExamination"),@Result(name="error",type="chain",location="load_physicalExamination")})
	public String update_physicalExamination() throws Exception
	{
		users user=(users)session.get("user");
		physicalExaminations.setUser(user);
		physicalExaminations.setStateId("015b538e-2582-4634-8b63-ab0743b9682f");
		studentApply stu=studentApplyService.find_studentApplyByuserId(user.getUserId());
		if(physicalExaminationservice.update_physicalExamination(physicalExaminations))
		{
			Mail mail=new Mail();
			//发送邮件
			mail.sendMessages(stu.getEmailAddress(),"<div style='width:800px;margin:auto;'><p style='border-bottom:1px solid #CCCCCC;padding:10px 0px;'><span style='font-family:Montserrat;font-weight:700;letter-spacing:1px;text-transform:uppercase;font-size:25px;'>driving school</span></p><p style='font-size:18px;'>尊敬的用户:</p><p>您已修改预约时间成功,请您等待客服确认,谢谢合作!</p><p>体检所需材料:身份证</p><p style='margin-top:50px;border-top:1px solid #CCCCCC;padding:10px 0px;color:#CCCCCC;'>此为系统邮件，请勿回复；?driving school 2004-2018 All Right Reserved</p></div>");
			return SUCCESS;
		}
		else
		{
			request.put("update_physicalExaminationResult","false");
			return ERROR;
		}
	}
	@Action(value="delete_physicalExamination",results={@Result(name="success",type="chain",location="load_physicalExamination"),@Result(name="error",type="chain",location="load_physicalExamination")})
	public String delete_physicalExamination()
	{
		physicalExamination p=physicalExaminationservice.find_physicalExaminationByphysicalExaminationId(physicalExaminations.getPhysicalExaminationId());
		p.setStateId("a0c8f108-800d-4304-9ae5-99412e08bc61");//修改为已取消
		if(physicalExaminationservice.update_physicalExamination(p))
		return SUCCESS;
		else
		{
			request.put("delete_physicalExaminationResult","false");
			return ERROR;
		}
	}
	public String getApplyDate() {
		return ApplyDate;
	}
	public void setApplyDate(String applyDate) {
		ApplyDate = applyDate;
	}
	public physicalExamination getPhysicalExaminations() {
		return physicalExaminations;
	}
	public void setPhysicalExaminations(physicalExamination physicalExaminations) {
		this.physicalExaminations = physicalExaminations;
	}
}
