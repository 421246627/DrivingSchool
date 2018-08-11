package com.drivingSchool.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.alibaba.fastjson.JSON;
import com.alipay.config.*;
import com.alipay.api.*;
import com.alipay.api.internal.util.*;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.drivingSchool.entity.studentApply;
import com.drivingSchool.service.studentApplyService;
import com.drivingSchool.util.Mail;
@ParentPackage("json-default")
@Namespace("/alipayAction")
public class alipayAction extends ActionSupport
{
	private static final long serialVersionUID = 1L;
	private HttpServletRequest request=ServletActionContext.getRequest();
	@Autowired
	private studentApplyService studentapplyservice;
	@Action(value="return_url",results={@Result(name="success",type="redirect",location="/alipay.jsp")})
	public String return_url() throws UnsupportedEncodingException, AlipayApiException
	{
		//获取支付宝GET过来反馈信息
		Map<String,String> params = new HashMap<String,String>();
		@SuppressWarnings("unchecked")
		Map<String,String[]> requestParams = request.getParameterMap();
		for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i]
						: valueStr + values[i] + ",";
			}
			//乱码解决，这段代码在出现乱码时使用
			valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
			params.put(name, valueStr);
		}
		boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名
		//——请在这里编写您的程序（以下代码仅作参考）——
		if(signVerified) {
			//商户订单号
			String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");
			//支付宝交易号
			String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");
		}else 
		{
			System.out.println("验签失败");
		}
		return SUCCESS;
	}
	@Action(value="studentApplyreturn_url",results={@Result(name="success",type="chain",params={"namespace","/personalcenterAction"},location="load_personalcenter"),@Result(name="alipayerror",type="chain",params={"namespace","/personalcenterAction"},location="load_personalcenter")})
	public String studentApplyreturn_url() throws Exception
	{
		//获取支付宝GET过来反馈信息
		Map<String,String> params = new HashMap<String,String>();
		@SuppressWarnings("unchecked")
		Map<String,String[]> requestParams =request.getParameterMap();
		for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();)
		{
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) 
			{
				valueStr = (i == values.length - 1) ? valueStr + values[i]
				: valueStr + values[i] + ",";
			}
					//乱码解决，这段代码在出现乱码时使用
			valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
			params.put(name, valueStr);
		}
		boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名
		if(signVerified) 
		{
			//商户订单号
			String out_trade_no=request.getParameter("out_trade_no");
			//支付宝交易号
			String trade_no=request.getParameter("trade_no");
			studentApply stu=studentapplyservice.find_studentApplyByalipayOrderId(out_trade_no);
			stu.setTransactionNumber(trade_no);
			stu.setStateId("3fb3680e-9d67-4d80-87f2-7d4a6c4d977b");
			studentapplyservice.update_studentApply(stu);//修改学生状态为代体检
			Mail mail=new Mail();
			//发送邮件
			mail.sendMessages(stu.getEmailAddress(),"<div style='width:800px;margin:auto;'><p style='border-bottom:1px solid #CCCCCC;padding:10px 0px;'><span style='font-family:Montserrat;font-weight:700;letter-spacing:1px;text-transform:uppercase;font-size:25px;'>driving school</span></p><p style='font-size:18px;'>尊敬的用户:</p><p>您已成为本校的一名学员,为了学习新的驾考知识,您需要前往本校网站的个人中心,提前预约体检,谢谢合作!</p><p>体检所需材料:身份证</p><p style='margin-top:50px;border-top:1px solid #CCCCCC;padding:10px 0px;color:#CCCCCC;'>此为系统邮件，请勿回复；©driving school 2004-2018 All Right Reserved</p></div>");
			return SUCCESS;
		}
		else 
		{
			request.setAttribute("alipayerror","false");//支付失败,跳转至个人中心
			return "alipayerror";
		}
	}
	@Action(value="showAlipayAction",results={@Result(name="success",location="/body/alipay.jsp")})
	public String testAction() throws IOException, AlipayApiException
	{
		//获得初始化的AlipayClient
		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
		//设置请求参数
		AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
		alipayRequest.setReturnUrl(request.getAttribute("return_url").toString());
		alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
		//商户订单号，商户网站订单系统中唯一订单号，必填
		String out_trade_no =request.getAttribute("WIDout_trade_no").toString();
		//付款金额，必填
		String total_amount =request.getAttribute("WIDtotal_amount").toString();
		//订单名称，必填
		String subject=request.getAttribute("WIDsubject").toString();
		//商品描述，可空
		String body="";
		if(null!=request.getAttribute("WIDbody"))
		{
			body=request.getAttribute("WIDbody").toString();
		}
		//若想给BizContent增加其他可选请求参数，以增加自定义超时时间参数timeout_express来举例说明
		Map <String,Object>map=new HashMap<String,Object>();
		map.put("out_trade_no",out_trade_no);
		map.put("total_amount",total_amount);
		map.put("subject",subject);
		map.put("body",body);
		map.put("timeout_express","10m");
		map.put("product_code","FAST_INSTANT_TRADE_PAY");
		alipayRequest.setBizContent(JSON.toJSONString(map));
		//请求
		String result = alipayClient.pageExecute(alipayRequest).getBody();
		//输出
	    HttpServletResponse response = ServletActionContext.getResponse();
	    response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println(result);
		out.flush();
		out.close();
		return SUCCESS;
	}
}
