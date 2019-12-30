package com.app.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.app.dao.StarDao;
import com.app.dao.UserDao;
import com.app.model.Star;
import com.app.model.User;
import com.opensymphony.xwork2.ActionContext;

@Controller @Scope("prototype")
public class StarAction {
	@Resource StarDao stardao;
	@Resource UserDao userdao;
	
	private Star star;
	private User user;
	private List<Star> starlist;
	public Star getStar() {
		return star;
	}
	public void setStar(Star star) {
		this.star = star;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<Star> getStarlist() {
		return starlist;
	}
	public void setStarlist(List<Star> starlist) {
		this.starlist = starlist;
	}
	
	/*添加评分*/
	public String addStar() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		Map session = ctx.getSession();
		user=(User) session.get("user");
		star.setUser(user);
		stardao.AddStar(star);
		return "message";
	}
	/*显示所有建议*/
	public String queryAllAdvice() {
		starlist=stardao.QueryAllStar();
		return "all-message";
	}

}
