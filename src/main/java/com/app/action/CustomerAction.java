package com.app.action;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.SessionAware;  
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.app.dao.UserDao;
import com.app.model.User;
import com.opensymphony.xwork2.ActionSupport;




public class CustomerAction extends ActionSupport implements SessionAware{
	

	private static final long serialVersionUID = 1L;
    @Resource UserDao userdao;    
    private User user; 
	private Map<String,Object> session;
	public User getUser() {
		return user;
	}

	public void setCustomer(User user) {
		this.user = user;
	}
	
	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
    

	public String login() {
	}

}
