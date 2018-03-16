package org.Dao.imp;

import java.util.*;
import java.sql.*;
import org.Dao.*;
import org.hibernate.*;
import org.model.*;
import org.util.*;

public class XsDaoImp implements XsDao{
	public List findAll(int pageNum,int pageSize) {
		try{
			Session session=HibernateSessionFactory.getSession();
			Transaction ts=session.beginTransaction();
			SQLQuery query = session.createSQLQuery("select * from Novel order by wnum desc").addEntity(Novel.class);			
			int firstResult=(pageNum-1)*pageSize;
			query.setFirstResult(firstResult);
			query.setMaxResults(pageSize);
			List list=query.list();
			ts.commit();
			session.close();
			session=null;
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public List findRecom(int pageNum,int pageSize) {
		try{
			Session session=HibernateSessionFactory.getSession();
			Transaction ts=session.beginTransaction();
			SQLQuery query = session.createSQLQuery("select * from Novel order by recom desc").addEntity(Novel.class);
			int firstResult=(pageNum-1)*pageSize;
			query.setFirstResult(firstResult);
			query.setMaxResults(pageSize);
			List tlist=query.list();
			ts.commit();
			session.close();
			session=null;
			return tlist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public List findAuthor(int pageNum,int pageSize) {
		try{
			Session session=HibernateSessionFactory.getSession();
			Transaction ts=session.beginTransaction();
			SQLQuery query = session.createSQLQuery("select * from Author order by finished desc").addEntity(Author.class);
			int firstResult=(pageNum-1)*pageSize;
			query.setFirstResult(firstResult);
			query.setMaxResults(pageSize);
			List elist=query.list();
			ts.commit();
			session.close();
			session=null;
			return elist;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public int findXsSize(){
		try{
			Session session=HibernateSessionFactory.getSession();
			return session.createQuery("from Novel").list().size();
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	public int findXsReSize(){
		try{
			Session session=HibernateSessionFactory.getSession();
			return session.createQuery("from Novel order by recom desc").list().size();
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	public int findAuSize(){
		try{
			Session session=HibernateSessionFactory.getSession();
			return session.createQuery("from Author order by finished desc").list().size();
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	
}