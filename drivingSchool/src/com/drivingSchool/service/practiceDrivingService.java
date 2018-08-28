package com.drivingSchool.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.drivingSchool.daoimpl.practiceDrivingDAOImpl;
import com.drivingSchool.entity.coach;
import com.drivingSchool.entity.practiceDriving;
import com.drivingSchool.util.Conversion;
import com.drivingSchool.util.Mail;
import com.drivingSchool.util.encryption;
@Service
@Transactional
public class practiceDrivingService 
{
	@Autowired
	private practiceDrivingDAOImpl practicedrivingdaoimpl;
	@Autowired
	private encryption encryption;
	/**
	 * 获取大包班教练的预约时间
	 * @param findDate
	 * @param list
	 * @return
	 * @throws ParseException
	 */
	public Map<String,Object> get_appointmentDate(String studentApplyId,Date findDate,List<Object[]> list) throws ParseException
	{
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Map<String,Object>map=new HashMap<String,Object>();
		map.put("date8","0");
		map.put("date9","0");
		map.put("date10","0");
		map.put("date11","0");
		map.put("date14","0");
		map.put("date15","0");
		map.put("date16","0");
		map.put("date17","0");
		map.put("date18","0");
		map.put("date19","0");
		map.put("date20","0");
		Date dates=new Date();
		@SuppressWarnings("deprecation")
		Integer dateresult=sdf.parse(findDate.toLocaleString()).compareTo(sdf.parse(dates.toLocaleString()));
		if(dateresult<0)
		{
			@SuppressWarnings("deprecation")
			int hours=dates.getHours();
			for(int i=hours;i>=8;i--)
			{
				map.put("date"+i,"-1");
			}
		}
		else if(dateresult==0)
		{
			@SuppressWarnings("deprecation")
			int hours=dates.getHours();
			for(int i=hours;i>=8;i--)
			{
				map.put("date"+i,"-1");
			}
		}
		if(null!=list&&0<list.size())
		{
			for(int i=0;i<list.size();i++)
			{
				Date date=(Date)list.get(i)[4];
				if(date!=null)
				{
					@SuppressWarnings("deprecation")
					int h=date.getHours();
					if("015b538e-2582-4634-8b63-ab0743b9682f".equals(list.get(i)[3].toString()))
					{
						if(studentApplyId.equals(list.get(i)[1]))
						{
							map.put("date"+h,2);
						}
					}
					else if("02c04df1-6333-41a9-b39c-d5ab0963ae15".equals(list.get(i)[3].toString()))
					{
						map.put("date"+h,1);
					}
				}
			}
		}
		return map;
	}
	/**
	 * 获取不是大包班的教练预约时间
	 * @param coachId
	 * @return
	 * @throws ParseException
	 */
	public List<Map<String,Object>> find_appointmentTime(String coachId) throws ParseException
	{
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		List<Map<String,Object>> list=new ArrayList<Map<String,Object>>();
		Map<String,Object>maptime=new HashMap<String,Object>();
		Map<String,Object>mapresult=new HashMap<String,Object>();
		Date currentdate=new Date();
		@SuppressWarnings("deprecation")
		int currentyear=Conversion.parseInteger(currentdate.toLocaleString().substring(0,4));//获取当前年份
		@SuppressWarnings("deprecation")
		int currentmonth=currentdate.getMonth()+1;//获取月份
		@SuppressWarnings("deprecation")
		int currentday=currentdate.getDate();
		@SuppressWarnings("deprecation")
		int currenthours=currentdate.getHours();
		int days=0;
		if(currentmonth==2)
		{
			if (((currentyear%100==0)&&(currentyear%400==0))||((currentyear%100!=0)&&(currentyear%4== 0)))//判断是否闰年
			days=29;
			else
			days=28;
		}
		else
		{
			if(currentmonth==1||currentmonth==3||currentmonth==5||currentmonth==7||currentmonth==8||currentmonth==10||currentmonth==12)
			days=31;
			else
			days=30;
		}
		for(int i=1;i<=15;i++)
		{
			if(currentday>days)
			{
				currentmonth+=1;
				currentday=1;
				if(currentmonth>12)
				{
					currentyear+=1;
					currentmonth=1;
				}
			}
			StringBuilder sb=new StringBuilder();
			sb.append(currentyear);
			if(currentmonth < 10)
			sb.append("-0"+currentmonth);
			else
			sb.append("-"+currentmonth);
			if(currentday<10)
			sb.append("-0"+currentday);
			else
			sb.append("-"+currentday);
			int rows=practicedrivingdaoimpl.find_practiceDrivingByappointmentDate(coachId,sdf.parse(sb.toString()),"02c04df1-6333-41a9-b39c-d5ab0963ae15").size();
			if(rows>10)
			{
				maptime.put("date"+i,sb.toString());
				mapresult.put("date"+i,"1");
			}
			else
			{
				maptime.put("date"+i,sb.toString());
				mapresult.put("date"+i,"0");
			}
			currentday+=1;
		}
		if(currenthours>=20)
		{
			mapresult.put("date1","-1");
		}
		list.add(maptime);
		list.add(mapresult);
		return list;
	}
	/**
	 * 获取大包班教练的预约时间
	 * @param coachId
	 * @return
	 * @throws ParseException
	 */
	public Map<String,Object> find_practiceDriving_appointmentDate(String coachId,String studentApplyId) throws ParseException
	{
		String sql="select p.* from practiceDriving p where p.coachId=? and p.stateId in (?,?) and to_char(p.appointmentDate,'yyyy-MM-dd')=to_char(sysdate,'yyyy-MM-dd')";
		return this.get_appointmentDate(studentApplyId,new Date(),practicedrivingdaoimpl.find_practiceDrivingByparams(sql,coachId,"015b538e-2582-4634-8b63-ab0743b9682f","02c04df1-6333-41a9-b39c-d5ab0963ae15"));
	}
	/**
	 * 指定日期获取大包班教练的预约时间
	 * @param coachId
	 * @param appointmentDate
	 * @return
	 * @throws ParseException
	 */
	public Map<String,Object> find_practiceDrivingByappointmentDates(String coachId,String appointmentDate,String studentApplyId) throws ParseException
	{
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String sql="select p.* from practiceDriving p where p.coachId=? and p.stateId in(?,?) and to_char(p.appointmentDate,'yyyy-MM-dd')=to_char(?,'yyyy-MM-dd')";
		return this.get_appointmentDate(studentApplyId,sdf.parse(appointmentDate),practicedrivingdaoimpl.find_practiceDrivingByappointmentDateAndparams(sql,coachId,"015b538e-2582-4634-8b63-ab0743b9682f","02c04df1-6333-41a9-b39c-d5ab0963ae15",sdf.parse(appointmentDate)));
	}
	/**
	 * 通过学员编号,预约班别,订单状态查询订单
	 * @param studentApplyId
	 * @param classTypesId
	 * @param stateId
	 * @return
	 */
	public List<practiceDriving> find_practiceDrivingBystudentApplyId(String studentApplyId,String classTypesId,String stateId)
	{
		return practicedrivingdaoimpl.find_practiceDrivingBystudentApplyId(studentApplyId, classTypesId,stateId);
	}
	/**
	 * 取消订单
	 * @param practiceDrivingId
	 * @return
	 */
	public boolean cancle_practiceDrivingBypracticeDrivingId(String practiceDrivingId)
	{
		practiceDriving p=practicedrivingdaoimpl.find_practiceDrivingBypracticeDrivingId(practiceDrivingId);
		p.setStateId("a0c8f108-800d-4304-9ae5-99412e08bc61");
		return practicedrivingdaoimpl.update_practiceDriving(p);
	}
	/**
	 * 通过预约年月日查询预约时间信息
	 * @param coachId
	 * @param appointmentDate
	 * @param stateId
	 * @return
	 * @throws ParseException
	 */
	public List<Object[]> find_practiceDrivingByappointmentDate(String coachId,String appointmentDate,String stateId) throws ParseException
	{
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		return practicedrivingdaoimpl.find_practiceDrivingByappointmentDate(coachId,sdf.parse(appointmentDate),stateId);
	}
	/**
	 * 添加订单
	 * @param emailAddress
	 * @param studentApplyId
	 * @param coach
	 * @param appointmentDate
	 * @return
	 * @throws Exception
	 */
	public boolean insert_practiceDriving(String emailAddress,String studentApplyId,coach coach,Date appointmentDate) throws Exception
	{
		practiceDriving p=new practiceDriving();
		p.setPracticeDrivingId(encryption.getUUID().toString());
		p.setStudentApplyId(studentApplyId);
		p.setCoach(coach);
		p.setStateId("015b538e-2582-4634-8b63-ab0743b9682f");
		p.setAppointmentDate(appointmentDate);
		p.setClassTypesId(coach.getClassTypesId());
		String practiceDrivingId=practicedrivingdaoimpl.insert_practiceDriving(p).toString();
		if(null!=practiceDrivingId&&p.getPracticeDrivingId().equals(practiceDrivingId))
		{
			String email="<div style='width:800px;margin:auto;'><p style='border-bottom:1px solid #CCCCCC;padding:10px 0px;'><span style='font-family:Montserrat;font-weight:700;letter-spacing:1px;text-transform:uppercase;font-size:25px;'>drivingschool</span></p><pstyle='font-size:18px;'>尊敬的用户:</p><p>您已预约<span style='color:#DC3838;font-weight:bold;'>"+coach.getCoachName()+"</span>教练,请等待教练确认订单,谢谢合作!</p><p style='margin-top:50px;border-top:1px solid #CCCCCC;padding:10px 0px;color:#CCCCCC;'>此为系统邮件，请勿回复；?driving school 2004-2018 All Right Reserved</p></div>";
			Mail m=new Mail();
			m.sendMessages(emailAddress,email);
			return true;
		}
		else
		return false;
	}
	/**
	 * 根据学生编号,班别编号,未接受状态编号,已接受状态编号查询订单
	 * @param studentApplyId
	 * @param classTypesId
	 * @return
	 */
	public List<practiceDriving> find_practiceDrivingBystudentApplyAndstates(String studentApplyId,String classTypesId)
	{
		String hql="from practiceDriving where studentApplyId=? and classTypesId=? and stateId in(?,?)";
		return practicedrivingdaoimpl.find_practiceDrivingBystudentApplyId(hql,studentApplyId,classTypesId,"015b538e-2582-4634-8b63-ab0743b9682f","02c04df1-6333-41a9-b39c-d5ab0963ae15");
	}
	/**
	 * 根据教练编号,日期和小时,状态查询预约练车订单信息
	 * @param coachId
	 * @param appointmentDate
	 * @param stateId
	 * @return
	 * @throws ParseException
	 */
	public List<Object[]> find_practiceDrivingByappointmentDateAndHours(String coachId, String appointmentDate, String stateId) throws ParseException 
	{
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh");
		return practicedrivingdaoimpl.find_practiceDrivingByappointmentDateAndHours(coachId,sdf.parse(appointmentDate), stateId);
	}
	/**
	 * 根据教练编号,日期和小时,状态,学生编号查询预约练车订单信息
	 * @param coachId
	 * @param appointmentDate
	 * @param stateId
	 * @param studentApplyId
	 * @return
	 * @throws ParseException
	 */
	public List<Object[]> find_practiceDrivingByappointmentDateAndHoursAndstudentApplyId(String coachId, String appointmentDate, String stateId,String studentApplyId) throws ParseException
	{
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh");
		return practicedrivingdaoimpl.find_practiceDrivingByappointmentDateAndHoursAndstudentApplyId(coachId,sdf.parse(appointmentDate), stateId, studentApplyId);
	}
}
