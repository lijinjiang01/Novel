package org.action;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.*;
import org.util.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PerAction extends ActionSupport {
	private Author author;
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
	public Author getAuthor() {
		return author;
	}
	public void setAuthor(Author author){
		this.author = author;
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
		Query query=session.createQuery("from Author where authorId=?");
		query.setParameter(0,no);	
		List alist=query.list();
		Author au=(Author)alist.get(0);
		author=au;	
		
		String authorName=author.getAuthorName();
		Query query1=session.createQuery("from Novel where author=? order by tstart desc");
		query1.setParameter(0,authorName);
		List blist=query1.list();
		
		Map request = (Map) ActionContext.getContext().get("request");	
		request.put("blist", blist);		
		ts.commit(); 	
		HibernateSessionFactory.closeSession();
		return SUCCESS;
	}
	catch(Exception e){
		System.out.println("³ÌÐò³ö´í£¡");
		ts.rollback();
		this.setError(e.toString());
		return ERROR;
	}
}
}


