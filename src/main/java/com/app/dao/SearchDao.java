package com.app.dao;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.model.Search;

@Service @Transactional
public class SearchDao {
	@Resource SessionFactory factory;
	
	public void add(Search search){
		Session s= factory.getCurrentSession();
		s.save(search);
		
	}
	
	public void delete(Integer sName){
		Session s= factory.getCurrentSession();
		Object search= s.load(Search.class, sName);
		s.delete(search);
		
	}
	
    public void Update(Search search) throws Exception {
        Session s = factory.getCurrentSession();
        s.update(search);
    }
    
    public ArrayList<Search> QueryAllSearch() {
        Session s = factory.getCurrentSession();
        String hql = "From app";
        Query q = s.createQuery(hql);
        List searchList = q.list();
        return (ArrayList<Search>) searchList;
    }
    
    public Search GetSearchByName(Search search2) {
        Session s = factory.getCurrentSession();
        Search search = (Search)s.get(Search.class, search2);
        return search;
    }
    
    public ArrayList<Search> QuerySearch(String sName) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From app sName where À‹¡œ∆ø=À‹¡œ∆ø";
    	if(!sName.equals("")) hql = hql + " and app.sName like '%" + sName + "%'";
    	Query q = s.createQuery(hql);
    	List searchList = q.list();
    	return (ArrayList<Search>) searchList;
    }

}
