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
	
  
  /*更新Garbagetype信息*/
  public void UpdateGarbagetype(GarbageType garbageType) throws Exception {
      Session s = factory.getCurrentSession();
      s.update(garbageType);
  }
  
  /*查询所有Garbagetype信息*/
  public ArrayList<GarbageType> QueryAllGarbagetype() {
      Session s = factory.getCurrentSession();
      String hql = "From GarbageType";
      Query q = s.createQuery(hql);
      List garbagetypeList = q.list();
      return (ArrayList<GarbageType>) garbagetypeList;
  }

  /*根据主键获取对象*/
  public GarbageType GetGarbagetypeById(Integer garbagetypeid) {
      Session s = factory.getCurrentSession();
      GarbageType garbageType = (GarbageType)s.get(GarbageType.class, garbagetypeid);
      return garbageType;
  }
  
  /*根据查询条件查询*/
  public ArrayList<GarbageType> QueryGarbagetypeInfo(String garbagetypename) {
  	
  	Session s = factory.getCurrentSession();
  	List garbagetypeList;
  	String hql = "From GarbageType garbagetype where 1=1";
  	if(!garbagetypename.equals("")){ 
  		
  		hql = hql + " and garbagetype.garbagetypeName like '%" + garbagetypename + "%'";
	    	Query q = s.createQuery(hql);
	    	garbagetypeList = q.list();
	    	
  	}else{
  		
  	    garbagetypeList =null;	
  	
  	}
  	return (ArrayList<GarbageType>) garbagetypeList;
  }
}
