package com.app.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.xml.ws.ServiceMode;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.model.User;

public class UserDao {
	@Resource SessionFactory factory;
	

    public void AddUser(User user) throws Exception {
    	Session s = factory.getCurrentSession();
    	s.save(user);
    }
    

    public void DeleteUser (Integer userId) throws Exception {
        Session s = factory.getCurrentSession(); 
        Object user = s.load(User.class, userId);
        s.delete(user);
    }
    

    public void UpdateUser(User user) throws Exception {
        Session s = factory.getCurrentSession();
        s.update(user);
    }
    

}

