package org.action;

import java.util.List;
import java.util.Map;

import org.Dao.XsDao;
import org.Dao.imp.XsDaoImp;
import org.model.Novel;
import org.tool.Pager;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TJAction extends ActionSupport {
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
	public Novel setXs() {
		return xs;
	}

	public void setXs(Novel xs) {
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
			List tlist = xsdao.findRecom(pageNum, pageSize);
			Map session = ActionContext.getContext().getSession(); 
			Map request = (Map) ActionContext.getContext().get("request");
			Pager tpage = new Pager(getPageNum(),getPageSize(), xsdao.findXsReSize());
			request.put("ylist", tlist);
			request.put("page", tpage);
			return SUCCESS;

	}
}

