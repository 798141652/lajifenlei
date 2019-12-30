package com.app.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.app.dao.AdviceDao;
import com.app.dao.UserDao;
import com.app.model.Advice;
import com.app.model.User;
import com.opensymphony.xwork2.ActionContext;

@Controller @Scope("prototype")
public class AdviceAction {
	@Resource AdviceDao advicedao;
	@Resource UserDao userdao;
	
	private User user;
	private Advice advice;
	private List<Advice> advicelist;
	private Map<String,Object> session;
	
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Advice getAdvice() {
		return advice;
	}
	public void setAdvice(Advice advice) {
		this.advice = advice;
	}
	public List<Advice> getAdvicelist() {
		return advicelist;
	}
	public void setAdvicelist(List<Advice> advicelist) {
		this.advicelist = advicelist;
	}
	/*添加建议*/
	public String addAdvice() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		Map session = ctx.getSession();
		user=(User) session.get("user");
		advice.setUser(user);
		advicedao.AddAdvice(advice);
		return "message";
	}
	/*显示所有建议*/
	public String queryAllAdvice() {
		advicelist=advicedao.QueryAllAdvice();
		return "all-message";
	}
}
