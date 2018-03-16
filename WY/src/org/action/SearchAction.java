package org.action;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.*;
import org.util.HibernateSessionFactory;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SearchAction extends ActionSupport {
	private String info;
	private List<?> List;
	private String error;
	
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public List<?> getList() {
		return List;
	}
	public void setcList(List<?> List) {
		this.List = List;
	}
	public String getError() {
		return error;
	}
	public void setError(String error) {
		this.error = error;
	}
	public String execute() throws Exception{
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
	try{	
		Query query=session.createQuery("from Novel where novelName like ? or author like ?");
		query.setParameter(0, '%' + info + '%');
		query.setParameter(1, '%' + info + '%');
		List slist=query.list();
				
		Map request = (Map) ActionContext.getContext().get("request");	
		request.put("slist", slist);
		ts.commit(); 	
		HibernateSessionFactory.closeSession();
		return SUCCESS;
	}
	catch(Exception e){
		ts.rollback();
		this.setError(e.toString());
		return ERROR;
	}
}
}


