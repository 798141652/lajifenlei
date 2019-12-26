package com.app.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.model.Star;

@Service @Transactional
public class StarDao {
	@Resource SessionFactory factory;
	
	 /*添加star信息*/
	   public void AddStar(Star star) throws Exception {
	   	Session s = factory.getCurrentSession();
	   	s.save(star);
	   }
	   
	   /*删除Star信息*/
	   public void DeleteStar (Integer starId) throws Exception {
	       Session s = factory.getCurrentSession(); 
	       Object star = s.load(Star.class, starId);
	       s.delete(star);
	   }
	   
	   /*查询所有Star信息*/
	   public ArrayList<Star> QueryAllStar() {
	       Session s = factory.getCurrentSession();
	       String hql = "From Star";
	       Query q = s.createQuery(hql);
	       List starList = q.list();
	       return (ArrayList<Star>) starList;
	   }

}
