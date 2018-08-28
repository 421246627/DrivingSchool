package com.drivingSchool.action;

import java.io.Serializable;
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
import com.drivingSchool.entity.orderInfo;
import com.drivingSchool.entity.studentApply;
import com.drivingSchool.entity.users;
import com.drivingSchool.service.drivingLicenseCostService;
import com.drivingSchool.service.exerciseFloorService;
import com.drivingSchool.service.orderInfoService;
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
	@Autowired
	private exerciseFloorService exercisefloorservice;
	@Autowired
	private orderInfoService orderinfoservice;
	private ActionContext actioncontext=ActionContext.getContext();
	private Map<String,Object>session=actioncontext.getSession();
	@SuppressWarnings("unchecked")
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
		studentapply.setStudentPhoto("upload/defaultusersphoto.png");
		studentapply.setUserId(user.getUserId());
		studentapply.setEmailAddress(user.getBindEmail());
		studentapply.setExerciseFloor(exercisefloorservice.find_exerciseFloorByexerciseFloorId(studentapply.getExerciseFloorId()));
		studentapply.setStateId("554a242a-b6a1-491f-bf95-2f3b9bd4cef2");//设置为待支付
		studentapply.setSubjectTypeId("36c2f250-6581-4283-be52-e8e6386f22ac");
		studentapply.setApplyDate(new Date());
		orderInfo o=new orderInfo();
		o.setOrderInfoId(encryption.getUUID());
		o.setOrderInfoName(dlc.getDlt().getDrivingLicenseTypeName()+" "+dlc.getCt().getClassTypesName());
		o.setOrderInfoPrice(dlc.getPrice());
		o.setAlipayOrderId(encryption.getUUID());//支付宝订单号
		o.setStudentApplyId(studentapply.getStudentApplyId());
		o.setStateId("554a242a-b6a1-491f-bf95-2f3b9bd4cef2");//设置为待支付
		if(studentapply.getClassTypesId().equals("cba61b77-4fc8-4257-8fc9-861ab5f6871b"))//大包班练车券5张,特惠班练车券0张
		{
			studentapply.setPracticeCarVouchers(5);
		}
		else if(studentapply.getClassTypesId().equals("bfe81691-0dbb-4c19-aa84-283974a81d16"))
		{
			studentapply.setPracticeCarVouchers(0);
		}
		studentapply.setSupplementaryExamination("true");//设置补考是否可以
		Serializable id=studentApplyservice.insert_studentApply(studentapply);
		Serializable orderinfoid=orderinfoservice.insert_orderInfo(o);
		if(null!=id&&null!=orderinfoid)
		{
			request.put("WIDout_trade_no",o.getAlipayOrderId());//支付宝订单编号
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
		drivingLicenseCost dlc=drivinglicensecostIdservice.find_drivingLicenseCostBydrivingLicenseCost(drivingLicenseCostId);
		users user=(users) session.get("user");
		studentApply stu=studentApplyservice.find_studentApplyByuserId(user.getUserId());
		stu.setClassTypesId(dlc.getCt().getClassTypesId());
		stu.setStudentName(studentapply.getStudentName());
		stu.setIdentityCard(studentapply.getIdentityCard());
		stu.setPhone(studentapply.getPhone());
		stu.setDrivingLicenseTypeId(dlc.getDlt().getDrivingLicenseTypeId());
		stu.setSex(studentapply.getSex());
		stu.setExerciseFloor(exercisefloorservice.find_exerciseFloorByexerciseFloorId(studentapply.getExerciseFloorId()));
		orderInfo o=orderinfoservice.find_orderInfoBystudentApplyId(stu.getStudentApplyId(),"ded39f91-dbbb-4262-93c3-12fae2cc10b1");
		o.setOrderInfoName(dlc.getDlt().getDrivingLicenseTypeName()+" "+dlc.getCt().getClassTypesName());
		o.setOrderInfoPrice(dlc.getPrice());
		o.setAlipayOrderId(encryption.getUUID());//支付宝订单号
		if(stu.getClassTypesId().equals("cba61b77-4fc8-4257-8fc9-861ab5f6871b"))//大包班练车券5张,特惠班练车券0张
		{
			stu.setPracticeCarVouchers(5);
		}
		else if(stu.getClassTypesId().equals("bfe81691-0dbb-4c19-aa84-283974a81d16"))
		{
			stu.setPracticeCarVouchers(0);
		}
		if(studentApplyservice.update_studentApply(stu)&&orderinfoservice.update_orderInfo(o))
		{
			request.put("WIDout_trade_no",o.getAlipayOrderId());//支付宝订单编号
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
