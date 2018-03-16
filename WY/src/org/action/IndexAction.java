package org.action;

import java.util.List;
import java.util.Map;

import org.Dao.XsDao;
import org.Dao.imp.XsDaoImp;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.Author;
import org.model.Novel;
import org.tool.Pager;
import org.util.HibernateSessionFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {

	private Novel xs;
	private List<?> List;
	private XsDao xsdao;

	/* private List list; */

	public XsDao getXsDao() {
		return xsdao;
	}

	public void setXsDao(XsDao xsdao) {
		this.xsdao = xsdao;
	}

	public List<?> getList() {
		return List;
	}

	public void setcList(List<?> List) {
		this.List = List;
	}

	public Novel setXs() {
		return xs;
	}

	public void setXs(Novel xs) {
		this.xs = xs;
	}

	public String execute() throws Exception {
		try {
			Session session = HibernateSessionFactory.getSession();
			Transaction ts = session.beginTransaction();
			SQLQuery query = session.createSQLQuery(
					"select * from Novel order by recom desc limit 8")
					.addEntity(Novel.class);
			SQLQuery query2 = session.createSQLQuery(
					"select * from Author order by finished desc limit 5")
					.addEntity(Author.class);
			List elist = query.list();
			List tlist = query2.list();
			
			Map request = (Map) ActionContext.getContext().get("request");
			request.put("elist", elist);
			request.put("tlist", tlist);
			ts.commit();
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
}
