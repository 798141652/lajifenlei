package com.app.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.app.dao.AdviceDao;
import com.app.dao.UserDao;
import com.app.model.Advice;
import com.app.model.User;

@Controller @Scope("prototype")
public class AdviceAction {
	@Resource AdviceDao advicedao;
	@Resource UserDao userdao;
	
	private User user;
	private Advice advice;
	private List<Advice> advicelist;
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
		advicedao.AddAdvice(advice);
		return "message";
	}
	/*显示所有建议*/
	public String queryAllAdvice() {
		advicelist=advicedao.QueryAllAdvice();
		return "all-message";
	}
}
