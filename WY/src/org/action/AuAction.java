package org.action;

import java.util.*;
import org.model.*;
import org.tool.*;
import org.Dao.imp.*;
import org.Dao.*;
import org.hibernate.*;
import org.util.*;
import org.apache.struts2.*;
import com.opensymphony.xwork2.*;

public class AuAction extends ActionSupport {
	private int pageNum;
	private int pageSize=8;
	private Author au;
	private List<?> List;
	private XsDao xsdao;
	/*private List list;*/

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
	public Author setAuthor() {
		return au;
	}

	public void setAuthor(Author au) {
		this.au = au;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String execute() throws Exception {		
			xsdao = new XsDaoImp();
			List list = xsdao.findAuthor(pageNum, pageSize);
			Map session = ActionContext.getContext().getSession(); 
			Map request = (Map) ActionContext.getContext().get("request");
			Pager page = new Pager(getPageNum(),getPageSize(), xsdao.findAuSize());
			request.put("zlist", list);
			request.put("page", page);
			return SUCCESS;

	}
}

