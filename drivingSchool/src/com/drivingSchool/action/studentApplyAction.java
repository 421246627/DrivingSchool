package com.drivingSchool.action;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;

import com.alipay.config.AlipayConfig;
import com.drivingSchool.entity.drivingLicenseCost;
import com.drivingSchool.entity.studentApply;
import com.drivingSchool.entity.users;
import com.drivingSchool.service.drivingLicenseCostService;
import com.drivingSchool.service.studentApplyService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.drivingSchool.util.encryption;;
@ParentPackage("json-default")
@Namespace("/studentApplyAction")
@Order(1)
public class studentApplyAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	private studentApply studentapply;
	@Autowired
	private studentApplyService studentApplyservice;
	@Autowired
	private drivingLicenseCostService drivinglicensecostIdservice;
	@Autowired
	private encryption encryption;
	private ActionContext actioncontext=ActionContext.getContext();
	private Map<String,Object>session=actioncontext.getSession();
	private Map<String,Object>request=(Map<String, Object>) actioncontext.get("request");
	private String drivingLicenseCostId;
	@Action(value="insert_studentApply",results={@Result(name="success",type="chain",params={"namespace","/alipayAction"},location="showAlipayAction"),@Result(name="inserterror",type="chain",params={"namespace","/exerciseFloorAction"},location="find_exerciseFloor")})
	public String insert_studentApply()
	{
		drivingLicenseCost dlc=drivinglicensecostIdservice.find_drivingLicenseCostBydrivingLicenseCost(drivingLicenseCostId);
		studentapply.setStudentApplyId(encryption.getUUID());
		studentapply.setClassTypesId(dlc.getCt().getClassTypesId());
		studentapply.setDrivingLicenseTypeId(dlc.getDlt().getDrivingLicenseTypeId());
		users user=(users) session.get("user");
		studentapply.setUserId(user.getUserId());
		studentapply.setEmailAddress(user.getBindEmail());
		studentapply.setStateId("554a242a-b6a1-491f-bf95-2f3b9bd4cef2");
		studentapply.setSubjectTypeId("36c2f250-6581-4283-be52-e8e6386f22ac");
		studentapply.setApplyDate(new Date());
		studentapply.setAlipayOrderId(encryption.getUUID());
		Serializable id=studentApplyservice.insert_studentApply(studentapply);
		if(null!=id)
		{
			request.put("WIDout_trade_no",studentapply.getAlipayOrderId());//支付宝订单编号
			request.put("WIDsubject",dlc.getDlt().getDrivingLicenseTypeName()+" "+dlc.getCt().getClassTypesName());//支付宝订单名称
			request.put("WIDtotal_amount",dlc.getPrice());//支付宝订单价格
			request.put("return_url",AlipayConfig.studentApplyreturn_url);//回调地址
			return SUCCESS;
		}
		else
		{
			request.put("drivingLicenseCostId",drivingLicenseCostId);
			return "inserterror";
		}
	}
	@Action(value="student_Alipay",results={@Result(name="success",type="chain",params={"namespace","/alipayAction"},location="showAlipayAction"),@Result(name="update_studentApplyError",type="chain",params={"namespace","/personalcenterAction"},location="load_personalcenter")})
	public String student_Alipay()
	{
		users user=(users)session.get("user");
		studentApply stu=studentApplyservice.find_studentApplyByuserId(user.getUserId());
		stu.setAlipayOrderId(encryption.getUUID());
		if(studentApplyservice.update_studentApply(stu))
		{
			drivingLicenseCost dlc=drivinglicensecostIdservice.find_drivingLicenseCostBydrivingLicenseCostIdAndClassTypesId(stu.getDrivingLicenseTypeId(),stu.getClassTypesId());
			request.put("WIDout_trade_no",stu.getAlipayOrderId());//支付宝订单编号
			request.put("WIDsubject",dlc.getDlt().getDrivingLicenseTypeName()+" "+dlc.getCt().getClassTypesName());//支付宝订单名称
			request.put("WIDtotal_amount",dlc.getPrice());//支付宝订单价格
			request.put("return_url",AlipayConfig.studentApplyreturn_url);//回调地址
			return SUCCESS;
		}
		else
		{
			request.put("update_studentApplyResult",false);
			return "update_studentApplyError";
		}
		
	}
	public studentApply getStudentapply() {
		return studentapply;
	}
	public void setStudentapply(studentApply studentapply) {
		this.studentapply = studentapply;
	}
	public String getDrivingLicenseCostId() {
		return drivingLicenseCostId;
	}
	public void setDrivingLicenseCostId(String drivingLicenseCostId) {
		this.drivingLicenseCostId = drivingLicenseCostId;
	}
}
