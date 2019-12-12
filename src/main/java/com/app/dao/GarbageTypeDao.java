package com.app.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.model.GarbageType;

@Service @Transactional
public class GarbageTypeDao {
	@Resource SessionFactory factory;
	
  
  /*更新GarbageType信息*/
  public void UpdateGarbageType(GarbageType garbagetype) throws Exception {
      Session s = factory.getCurrentSession();
      s.update(garbagetype);
  }
  
  /*查询所有GarbageType信息*/
  public ArrayList<GarbageType> QueryAllGarbageType() {
      Session s = factory.getCurrentSession();
      String hql = "From GarbageType";
      Query q = s.createQuery(hql);
      List garbagetypeList = q.list();
      return (ArrayList<GarbageType>) garbagetypeList;
  }

  /*根据主键获取对象*/
  public GarbageType GetGarbageTypeById(Integer garbagetypeid) {
      Session s = factory.getCurrentSession();
      GarbageType garbagetype = (GarbageType)s.get(GarbageType.class, garbagetypeid);
      return garbagetype;
  }
  
  /*根据查询条件查询*/
  public ArrayList<GarbageType> QueryGarbageTypeInfo(String garbagetypename) {
  	
  	Session s = factory.getCurrentSession();
  	List garbagetypeList;
  	String hql = "From GarbageType garbagetype where 1=1";
  	if(!garbagetypename.equals("")){ 
  		
  		hql = hql + " and garbage.garbagename like '%" + garbagetypename + "%'";
	    	Query q = s.createQuery(hql);
	    	garbagetypeList = q.list();
	    	
  	}else{
  		
  	    garbagetypeList =null;	
  	
  	}
  	return (ArrayList<GarbageType>) garbagetypeList;
  }
}
