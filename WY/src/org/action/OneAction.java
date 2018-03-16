package org.action;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.*;
import org.util.HibernateSessionFactory;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OneAction extends ActionSupport {
	private Novel novel;
	private Integer no;
	private List<?> List;
	private String error;
	
	public Novel getNovel() {
		return novel;
	}
	public void setNovel(Novel novel){
		this.novel = novel;
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
		Query query=session.createQuery("from Novel where novelId=?");
		query.setParameter(0,no);
		List<?> ilist=query.list();
		Novel xk_s=(Novel)ilist.get(0);
		novel=xk_s;
		
		Query query1=session.createQuery("from Juan where novelId=?");
		query1.setParameter(0,no);
		List blist=query1.list();
		
		Query query2=session.createQuery("from Chapter where novelId=?");
		query2.setParameter(0,no);
		List alist=query2.list();
		
		Map request = (Map) ActionContext.getContext().get("request");	
		request.put("alist", alist);		
		request.put("blist", blist);
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


