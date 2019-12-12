package com.app.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.model.Garbage;

@Service @Transactional
public class GarbageDao {
	@Resource SessionFactory factory;
	
	 /*添加Garbage信息*/
   public void AddGarbage(Garbage garbage) throws Exception {
   	Session s = factory.getCurrentSession();
   	s.save(garbage);
   }
   
   /*删除Garbage信息*/
   public void DeleteGarbage (Integer garbageId) throws Exception {
       Session s = factory.getCurrentSession(); 
       Object garbage = s.load(Garbage.class, garbageId);
       s.delete(garbage);
   }
   
   /*更新Garbage信息*/
   public void UpdateGarbage(Garbage garbage) throws Exception {
       Session s = factory.getCurrentSession();
       s.update(garbage);
   }
   
   /*查询所有Garbage信息*/
   public ArrayList<Garbage> QueryAllGarbage() {
       Session s = factory.getCurrentSession();
       String hql = "From Garbage";
       Query q = s.createQuery(hql);
       List garbageList = q.list();
       return (ArrayList<Garbage>) garbageList;
   }

   /*根据主键获取对象*/
   public Garbage GetGarbageById(Integer garbageid) {
       Session s = factory.getCurrentSession();
       Garbage garbage = (Garbage)s.get(Garbage.class, garbageid);
       return garbage;
   }
   
   /*根据查询条件查询*/
   public ArrayList<Garbage> QueryGarbageInfo(String garbagename) {
   	
   	Session s = factory.getCurrentSession();
   	List garbageList;
   	String hql = "From Garbage garbage where 1=1";
   	if(!garbagename.equals("")){ 
   		
   		hql = hql + " and garbage.garbagename like '%" + garbagename + "%'";
	    	Query q = s.createQuery(hql);
	    	garbageList = q.list();
	    	
   	}else{
   		
   	    garbageList =null;	
   	
   	}
   	return (ArrayList<Garbage>) garbageList;
   }

}
