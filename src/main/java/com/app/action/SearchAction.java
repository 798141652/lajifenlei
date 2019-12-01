package com.app.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.app.dao.SearchDao;
import com.app.model.Search;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class SearchAction extends ActionSupport{
	
	@Resource SearchDao searchDao;
	
	private Search search;

	public Search getSearch() {
		return search;
	}

	public void setSearch(Search search) {
		this.search = search;
	}
	
	private List<Search> searchList;

	public List<Search> getSearchList() {
		return searchList;
	}

	public void setSearchList(List<Search> searchList) {
		this.searchList = searchList;
	}
	
	public String GetSearchByName(){
		searchDao.GetSearchByName(search);
		return "message";
	}
	
	public String showSearch(){
		searchDao.QueryAllSearch();
		return "show_view";
	}
	

}
