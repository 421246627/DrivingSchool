package com.drivingSchool.interceptors;

import java.util.Map;

import com.drivingSchool.entity.users;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class loginCheck extends MethodFilterInterceptor 
{
	private static final long serialVersionUID = 1L;
	@Override
	protected String doIntercept(ActionInvocation arg0) throws Exception 
	{
		ActionContext context=ActionContext.getContext();
		Map<String,Object> session=context.getSession();
		users user=(users) session.get("user");
		if(null!=user)
		{
			return arg0.invoke();
		}
		return "loginfailure";
	}

}
