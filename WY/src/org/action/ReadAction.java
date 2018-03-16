package org.action;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.*;
import org.util.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ReadAction extends ActionSupport {
	private Chapter chapter;
	private Integer novelId;
	private Integer no;
	private List<?> List;
	private String error;
	
	public Chapter getChapter() {
		return chapter;
	}
	public void setChapter(Chapter chapter){
		this.chapter = chapter;
	}
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
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
		Query query=session.createQuery("from Chapter where chapterId=?");
		query.setParameter(0,no);
		List<?> ilist=query.list();
		Chapter xk_s=(Chapter)ilist.get(0);
		chapter=xk_s;
		
		Map request = (Map) ActionContext.getContext().get("request");	
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


