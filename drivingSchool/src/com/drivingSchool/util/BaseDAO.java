package com.drivingSchool.util;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
public class BaseDAO {
	@Autowired
	private SessionFactory sessionfactory;
	private Session session;
	public void getSession()
	{
		session=sessionfactory.getCurrentSession();
	}
	@SuppressWarnings({ "unchecked" })
	public <T> T get(Class<T>clazz,Serializable id)
	{
		T t=null;
		try
		{
			getSession();
			t=(T) session.get(clazz, id);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return t;
	}
	public Serializable save(Object obj)
	{
		Serializable id=null;
		try
		{
			getSession();
			id=session.save(obj);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return id;
	}
	public boolean update(Object obj)
	{
		boolean flag=true;
		try
		{
			getSession();
			session.update(obj);
		}
		catch(Exception e)
		{
			flag=false;
			e.printStackTrace();
		}
		return flag;
	}
	public  <T> boolean delete(Class<T> clazz,Serializable id)
	{
		boolean flag=true;
		try
		{
			getSession();
			session.delete(session.get(clazz, id));
		}
		catch(Exception e)
		{
			flag=false;
		}
		return flag;
	}
	public void setParams(Query query,Object[]params,Map<String,Object>parammap)
	{
		if(null!=parammap)
		{
			query.setProperties(parammap);
		}
		if(null!=params&&0<params.length)
		{
			for(int i=0;i<params.length;i++)
			{
				query.setParameter(i,params[i]);
			}
		}
	}
	@SuppressWarnings("unchecked")
	public  <T> List<T> query_executeFind(String hql,Map<String,Object> parammap,Object...params)
	{
		List<T>list=null;
		try
		{
			getSession();
			Query query=session.createQuery(hql);
			query.setCacheable(true);
			setParams(query,params,parammap);
			list=query.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	@SuppressWarnings({ "unchecked" })
	public <T> List<T> query_executeFindByPage(String hql,int pageSize,int pageWhich,Map<String,Object> parammap,Object...params)
	{
		List<T>list=null;
		try
		{
			getSession();
			Query query=session.createQuery(hql);
			query.setCacheable(true);
			query.setMaxResults(pageSize);
			query.setFirstResult((pageWhich-1)*pageSize);
			setParams(query,params,parammap);
			list=query.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	public int query_executeUpdate(String hql,Map<String,Object> parammap,Object...params)
	{
		int result=0;
		try
		{
			getSession();
			Query query=session.createQuery(hql);
			setParams(query,params,parammap);
			result=query.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	public List<Object[]> sqlquery_executeFind(String sql,Map<String,Object> parammap,Object...params)
	{
		List<Object[]>list=null;
		try
		{
			getSession();
			SQLQuery sqlquery=session.createSQLQuery(sql);
			setParams(sqlquery,params,parammap);
			list=sqlquery.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	@SuppressWarnings("unchecked")
	public List<Object[]> sqlquery_executeFindByPage(String sql,int pageSize,int pageWhich,Map<String,Object> parammap,Object...params)
	{
		List<Object[]>list=null;
		try
		{
			getSession();
			SQLQuery sqlquery=session.createSQLQuery(sql);
			sqlquery.setCacheable(true);
			sqlquery.setMaxResults(pageSize);
			sqlquery.setFirstResult((pageWhich-1)*pageSize);
			setParams(sqlquery,params,parammap);
			list=sqlquery.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	public int sqlquery_executeUpdate(String sql,Map<String,Object> parammap,Object...params)
	{
		int result=0;
		try
		{
			getSession();
			SQLQuery sqlquery=session.createSQLQuery(sql);
			sqlquery.setCacheable(true);
			setParams(sqlquery,params,parammap);
			result=sqlquery.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
}
