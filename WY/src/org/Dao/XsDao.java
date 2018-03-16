package org.Dao;
import java.util.*;

import org.model.*;
public interface XsDao{
	public List findAll(int pageNum,int pageSize);
	public List findRecom(int pageNum,int pageSize);
	public List findAuthor(int pageNum,int pageSize);
	public int findXsSize();
	public int findXsReSize();
	public int findAuSize();	
}