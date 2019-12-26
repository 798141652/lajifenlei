package com.app.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.model.Advice;

@Service @Transactional
public class AdviceDao {
	@Resource SessionFactory factory;
	
	 /*添加advice信息*/
	   public void AddAdvice(Advice advice) throws Exception {
	   	Session s = factory.getCurrentSession();
	   	s.save(advice);
	   }
	   
	   /*删除Advice信息*/
	   public void DeleteAdvice (Integer adviceId) throws Exception {
	       Session s = factory.getCurrentSession(); 
	       Object advice = s.load(Advice.class, adviceId);
	       s.delete(advice);
	   }
	   
	   /*查询所有Advice信息*/
	   public ArrayList<Advice> QueryAllAdvice() {
	       Session s = factory.getCurrentSession();
	       String hql = "From Advice";
	       Query q = s.createQuery(hql);
	       List adviceList = q.list();
	       return (ArrayList<Advice>) adviceList;
	   }

	   /*根据主键获取对象*/
	   public Advice GetAdviceById(Integer adviceid) {
	       Session s = factory.getCurrentSession();
	       Advice advice = (Advice)s.get(Advice.class, adviceid);
	       return advice;
	   }
	   
}
