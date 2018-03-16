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

public class XSAction extends ActionSupport {
	private int pageNum;
	private int pageSize=8;
	private Novel xs;
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
	public Novel setNovel() {
		return xs;
	}

	public void setNovel(Novel xs) {
		this.xs = xs;
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
			List list = xsdao.findAll(pageNum, pageSize);
			Map session = ActionContext.getContext().getSession(); 
			Map request = (Map) ActionContext.getContext().get("request");
			Pager page = new Pager(getPageNum(),getPageSize(), xsdao.findXsSize());
			request.put("xlist", list);
			request.put("page", page);
			return SUCCESS;

	}
}
